package com.robocon321.demo.service.impl;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.robocon321.demo.dto.FilterCriteria;
import com.robocon321.demo.dto.request.RatingRequestDTO;
import com.robocon321.demo.dto.response.RatingResponseDTO;
import com.robocon321.demo.dto.response.UserResponseDTO;
import com.robocon321.demo.entity.Product;
import com.robocon321.demo.entity.Rating;
import com.robocon321.demo.entity.User;
import com.robocon321.demo.exception.BadRequestException;
import com.robocon321.demo.exception.NotfoundException;
import com.robocon321.demo.repository.ProductRepository;
import com.robocon321.demo.repository.RatingRepository;
import com.robocon321.demo.security.CustomUserDetails;
import com.robocon321.demo.service.RatingService;
import com.robocon321.demo.specs.RatingSpecification;
import com.robocon321.demo.type.FilterOperateType;

@Service
public class RatingServiceImpl implements RatingService {
	@Autowired
	private RatingRepository ratingRepository;
	
	@Autowired
	private ProductRepository productRepository;
	
	private Page<Rating> getPageEntity(Integer size, Integer page, String sort,
			Map<String, String> filter) {
		Specification<Rating> spec = null;
		for(Map.Entry<String, String> entry : filter.entrySet()) {	
			String keyEntry = entry.getKey();
			String valueEntry = entry.getValue();
			
			if(keyEntry.startsWith("OR")) {
				String field = keyEntry.substring(3);
				String[] values = valueEntry.split(",");
				for(int i = 0; i < values.length; i ++) {
					String value = values[i];
					Specification<Rating> specType = RatingSpecification.filter(new FilterCriteria(field, FilterOperateType.EQUALS, value));
					if(spec == null) {
						spec = specType;
					} else {
						if(i == 0) spec = spec.and(specType);
						else spec = spec.or(specType);
					}
				}
			} else if(keyEntry.startsWith("BT")) {
				String field = keyEntry.substring(3);
				String[] values = valueEntry.split(",");
				if(values.length == 2) {
					Specification<Rating> specTypeGreater = RatingSpecification.filter(new FilterCriteria(field, FilterOperateType.GREATER, values[0]));
					Specification<Rating> specTypeLess = RatingSpecification.filter(new FilterCriteria(field, FilterOperateType.LESS, values[1]));
					if(spec == null) {
						spec = specTypeGreater.and(specTypeLess);
					} else {
						spec = spec.and(specTypeGreater.and(specTypeLess));						
					}
				}
			} else if(keyEntry.startsWith("AND")) {
				String field = keyEntry.substring(4);
				String[] values = valueEntry.split(",");
				for(String value: values) {
					Specification<Rating> specType = RatingSpecification.filter(new FilterCriteria(field, FilterOperateType.EQUALS, value));
					if(spec == null) {
						spec = specType;
					} else {
						spec = spec.and(specType);
					}
				}
			} else if(keyEntry.startsWith("LIKE")) {
				String field = keyEntry.substring(5);

				if(spec == null) {
					spec = RatingSpecification.filter(new FilterCriteria(field, FilterOperateType.LIKE, valueEntry));
				} else {
					spec = spec.and(RatingSpecification.filter(new FilterCriteria(field, FilterOperateType.LIKE, valueEntry)));
				}
			} 
			else if(keyEntry.startsWith("IN")) {
				String field = keyEntry.substring(3);
				if(spec == null) {
					spec = RatingSpecification.filter(new FilterCriteria(field, FilterOperateType.IN, valueEntry));
				} else {
					spec = spec.and(RatingSpecification.filter(new FilterCriteria(field, FilterOperateType.IN, valueEntry)));
				}
				
			}else {
				continue;								
			}
		}
		
		String[] sorts = sort.split("__");
		String sortName;
		String sortType;
		if(sorts.length == 2) {
			sortName = sorts[0];
			sortType = sorts[1];
		} else {
			sortName = "id";
			sortType = "asc";
		}
		
		Page<Rating> pageResponse = ratingRepository.findAll(spec, PageRequest.of(page, size, sortType.equals("desc") ? Sort.by(sortName).descending() : Sort.by(sortName).ascending()));
		
		return pageResponse;
	}

	private Page<RatingResponseDTO> pageEntityToDTO(Page<Rating> page) {
		return page.map(rating -> entityToDTO(rating));
	}
	
	private RatingResponseDTO entityToDTO(Rating rating) {
		RatingResponseDTO dto = new RatingResponseDTO();
		BeanUtils.copyProperties(rating, dto);
		return dto;
	}
	
	private Page<RatingResponseDTO> pageEntityToDTOWithUser(Page<Rating> page) {
		return page.map(rating -> entityToDTOWithUser(rating));
	}
	
	private RatingResponseDTO entityToDTOWithUser(Rating rating) {
		RatingResponseDTO dto = new RatingResponseDTO();		
		BeanUtils.copyProperties(rating, dto);

		User user = rating.getUser();
		UserResponseDTO userResponseDTO = new UserResponseDTO();
		BeanUtils.copyProperties(user, userResponseDTO);
		
		dto.setUser(userResponseDTO);
		return dto;
	}
	
	
	
	@Override
	public Page<RatingResponseDTO> getPage(Integer size, Integer page, String sort, Map<String, String> filter) {
		return pageEntityToDTO(getPageEntity(size, page, sort, filter));
	}

	@Override
	public Page<RatingResponseDTO> getPageWithUser(Integer size, Integer page, String sort,
			Map<String, String> filter) {
		return pageEntityToDTOWithUser(getPageEntity(size, page, sort, filter));
	}

	@Override
	public RatingResponseDTO save(RatingRequestDTO ratingRequestDTO) {
		CustomUserDetails customUserDetails = (CustomUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		User user = customUserDetails.getUser();
		if(user == null) {
			throw new BadRequestException("Your session invalid");
		} else {			
			Optional<Product> optional = productRepository.findOneByIdAndStatus(ratingRequestDTO.getProductId(), 1);
			if(optional.isEmpty()) {
				throw new NotfoundException("Not found your product");				
			} else {
				if(ratingRepository.existsByUserIdAndProductId(user.getId(), ratingRequestDTO.getProductId())) {
					throw new BadRequestException("You already review this product");
				} else {
					Rating rating = new Rating();
					BeanUtils.copyProperties(ratingRequestDTO, rating);
					rating.setProduct(optional.get());
					rating.setUser(user);
					
					rating = ratingRepository.save(rating);
					return entityToDTOWithUser(rating);
				}
			}
		}
	}

}
