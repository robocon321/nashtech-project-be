package com.robocon321.demo.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.robocon321.demo.dto.FilterCriteria;
import com.robocon321.demo.dto.request.ProductRequestDTO;
import com.robocon321.demo.dto.response.ProductResponseDTO;
import com.robocon321.demo.entity.Product;
import com.robocon321.demo.exception.BadRequestException;
import com.robocon321.demo.exception.ConflictException;
import com.robocon321.demo.repository.ProductRepository;
import com.robocon321.demo.service.ProductService;
import com.robocon321.demo.specs.ProductSpecification;
import com.robocon321.demo.type.FilterOperateType;
import com.robocon321.demo.type.VisibleType;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductRepository productRepository;

	@Override
	public Page<ProductResponseDTO> getPage(Integer size, Integer page, String sort,
			Map<String, String> filter) {
		Specification<Product> spec = null;
		for(Map.Entry<String, String> entry : filter.entrySet()) {	
			String keyEntry = entry.getKey();
			String valueEntry = entry.getValue();
			
			if(keyEntry.startsWith("OR")) {
				String field = keyEntry.substring(3);
				String[] values = valueEntry.split(",");
				for(int i = 0; i < values.length; i ++) {
					String value = values[i];
					Specification<Product> specType = ProductSpecification.filter(new FilterCriteria(field, FilterOperateType.EQUALS, value));
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
					Specification<Product> specTypeGreater = ProductSpecification.filter(new FilterCriteria(field, FilterOperateType.GREATER, values[0]));
					Specification<Product> specTypeLess = ProductSpecification.filter(new FilterCriteria(field, FilterOperateType.LESS, values[1]));
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
					Specification<Product> specType = ProductSpecification.filter(new FilterCriteria(field, FilterOperateType.EQUALS, value));
					if(spec == null) {
						spec = specType;
					} else {
						spec = spec.and(specType);
					}
				}
			} else if(keyEntry.startsWith("LIKE")) {
				String field = keyEntry.substring(5);

				if(spec == null) {
					spec = ProductSpecification.filter(new FilterCriteria(field, FilterOperateType.LIKE, valueEntry));
				} else {
					spec = spec.and(ProductSpecification.filter(new FilterCriteria(field, FilterOperateType.LIKE, valueEntry)));
				}
			} 
//			else if(keyEntry.startsWith("IN")) {
//				String field = keyEntry.substring(3);
//				if(spec == null) {
//					spec = ProductSpecification.filter(new FilterCriteria(field, FilterOperateType.IN, valueEntry));
//				} else {
//					spec = spec.and(ProductSpecification.filter(new FilterCriteria(field, FilterOperateType.IN, valueEntry)));
//				}
//				
//			}
			else {
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
		
		Page<Product> pageResponse = productRepository.findAll(spec, PageRequest.of(page, size, sortType.equals("desc") ? Sort.by(sortName).descending() : Sort.by(sortName).ascending()));
		
		return pageEntityToDTO(pageResponse);
	}
	
	@Override
	public ProductResponseDTO save(ProductRequestDTO dto) throws BadRequestException{
		ProductResponseDTO productResponseDTO = new ProductResponseDTO();
		
		if(productRepository.existsBySlug(dto.getSlug())) {
			throw new ConflictException("Your slug already exists");
		}			
		Product product = new Product();			
		BeanUtils.copyProperties(dto, product);
		product.setVisibleType(VisibleType.VISIBLE);
		
		product = productRepository.save(product);
		BeanUtils.copyProperties(product, productResponseDTO);
		
		return productResponseDTO;
	}

	@Override
	public List<ProductResponseDTO> update(List<ProductRequestDTO> ProductRequestDTOs) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(List<Integer> ids) throws BadRequestException {
		try {
			productRepository.deleteAllById(ids);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			throw new BadRequestException("Can not delete!");
		}
	}

	@Override
	public ProductResponseDTO update(ProductRequestDTO productRequestDTO) {
		ProductResponseDTO productResponseDTO = new ProductResponseDTO();
		
		if(productRequestDTO.getId() == null) {
			throw new BadRequestException("Product must contain id");
		}

		if(productRepository.existsBySlugAndIdNot(productRequestDTO.getSlug(), productRequestDTO.getId())) {
			throw new ConflictException("Your slug already exists");
		}
				
		Product product = new Product();
		BeanUtils.copyProperties(productRequestDTO, product);
		
		product = productRepository.save(product);
		BeanUtils.copyProperties(product, productResponseDTO);
		
		return productResponseDTO;	
	}

	@Override
	public List<ProductResponseDTO> save(List<ProductRequestDTO> productRequestDTOs) throws BadRequestException{
		List<Product> products = productRequestDTOs.stream().map(item -> {
			if(productRepository.existsBySlug(item.getSlug())) {
				throw new ConflictException("Your slug already exists");
			}		
			
			Product product = new Product();			
			BeanUtils.copyProperties(item, product);
			product.setVisibleType(VisibleType.VISIBLE);
			product.setId(null);
			return product;
		}).toList();
		
		products = productRepository.saveAll(products);
		
		return entitiesToDTOs(products);
	}
	
	private Page<ProductResponseDTO> pageEntityToDTO(Page<Product> page) {
		return page.map(product -> entityToDTO(product));
	}
	 
	private List<ProductResponseDTO> entitiesToDTOs(List<Product> products) {
		return products.stream().map(item -> {
			return entityToDTO(item);
		}).toList();
	}
	
	private ProductResponseDTO entityToDTO(Product product) {
		ProductResponseDTO dto = new ProductResponseDTO();
		BeanUtils.copyProperties(product, dto);
		return dto;
	}

}
