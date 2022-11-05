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
import org.springframework.stereotype.Service;

import com.robocon321.demo.dto.FilterCriteria;
import com.robocon321.demo.dto.request.CategoryRequestDTO;
import com.robocon321.demo.dto.response.CategoryResponseDTO;
import com.robocon321.demo.entity.Category;
import com.robocon321.demo.exception.BadRequestException;
import com.robocon321.demo.exception.ConflictException;
import com.robocon321.demo.repository.CategoryRepository;
import com.robocon321.demo.service.CategoryService;
import com.robocon321.demo.specs.CategorySpecification;
import com.robocon321.demo.specs.ProductSpecification;
import com.robocon321.demo.type.FilterOperateType;
import com.robocon321.demo.type.VisibleType;

@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryRepository categoryRepository;

	@Override
	public Page<CategoryResponseDTO> getPage(Integer size, Integer page, String sort,
			Map<String, String> filter) {
		Specification<Category> spec = null;
		for(Map.Entry<String, String> entry : filter.entrySet()) {	
			String keyEntry = entry.getKey();
			String valueEntry = entry.getValue();
			
			if(keyEntry.startsWith("OR")) {
				String field = keyEntry.substring(3);
				String[] values = valueEntry.split(",");
				for(int i = 0; i < values.length; i ++) {
					String value = values[i];
					Specification<Category> specType = CategorySpecification.filter(new FilterCriteria(field, FilterOperateType.EQUALS, value));
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
					Specification<Category> specTypeGreater = CategorySpecification.filter(new FilterCriteria(field, FilterOperateType.GREATER, values[0]));
					Specification<Category> specTypeLess = CategorySpecification.filter(new FilterCriteria(field, FilterOperateType.LESS, values[1]));
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
					Specification<Category> specType = CategorySpecification.filter(new FilterCriteria(field, FilterOperateType.EQUALS, value));
					if(spec == null) {
						spec = specType;
					} else {
						spec = spec.and(specType);
					}
				}
			} else if(keyEntry.startsWith("LIKE")) {
				String field = keyEntry.substring(5);

				if(spec == null) {
					spec = CategorySpecification.filter(new FilterCriteria(field, FilterOperateType.LIKE, valueEntry));
				} else {
					spec = spec.and(CategorySpecification.filter(new FilterCriteria(field, FilterOperateType.LIKE, valueEntry)));
				}
			} 
			else if(keyEntry.startsWith("IN")) {
				String field = keyEntry.substring(3);
				if(spec == null) {
					spec = CategorySpecification.filter(new FilterCriteria(field, FilterOperateType.IN, valueEntry));
				} else {
					spec = spec.and(CategorySpecification.filter(new FilterCriteria(field, FilterOperateType.IN, valueEntry)));
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
		
		Page<Category> pageResponse = categoryRepository.findAll(spec, PageRequest.of(page, size, sortType.equals("desc") ? Sort.by(sortName).descending() : Sort.by(sortName).ascending()));
		
		return pageEntityToDTO(pageResponse);
	}
	
	@Override
	public CategoryResponseDTO save(CategoryRequestDTO categoryRequestDTO) throws BadRequestException{
		if(categoryRepository.existsByName(categoryRequestDTO.getName())) {
			throw new ConflictException("Your category name already exists");
		}

		if(categoryRepository.existsBySlug(categoryRequestDTO.getSlug())) {
			throw new ConflictException("Your slug already exists");
		}			
		Category category = new Category();			
		BeanUtils.copyProperties(categoryRequestDTO, category);
		category.setStatus(1);
		
		category = categoryRepository.save(category);
		CategoryResponseDTO categoryResponseDTO = new CategoryResponseDTO();
		BeanUtils.copyProperties(category, categoryResponseDTO);
		
		return categoryResponseDTO;
	}

	@Override
	public boolean delete(List<Integer> ids) throws BadRequestException {
		try {
			categoryRepository.deleteAllById(ids);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			throw new BadRequestException("Can not delete!");
		}
	}

	@Override
	public CategoryResponseDTO update(CategoryRequestDTO dto) {
		Optional<Category> categoryOpt = categoryRepository.findById(dto.getId());
		if(dto.getId() == null) {
			throw new BadRequestException("Category must contain id");
		}
		
		if(categoryOpt.isEmpty()) throw new BadRequestException("Not found this category id");
		
		if(categoryRepository.existsByNameAndIdNot(dto.getName(), dto.getId())) {
			throw new ConflictException("Your category name already exists");
		}

		if(categoryRepository.existsBySlugAndIdNot(dto.getSlug(), dto.getId())) {
			throw new ConflictException("Your slug already exists");
		}
				
		Category category = categoryOpt.get();
		BeanUtils.copyProperties(dto, category);
		
		category = categoryRepository.save(category);
		CategoryResponseDTO categoryResponseDTO = new CategoryResponseDTO();
		BeanUtils.copyProperties(category, categoryResponseDTO);
		
		return categoryResponseDTO;	
	}
	
	private Page<CategoryResponseDTO> pageEntityToDTO(Page<Category> page) {
		return page.map(category -> entityToDTO(category));
	}	 
	
	private CategoryResponseDTO entityToDTO(Category category) {
		CategoryResponseDTO dto = new CategoryResponseDTO();
		BeanUtils.copyProperties(category, dto);
		return dto;
	}
}