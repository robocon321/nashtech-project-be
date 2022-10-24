package com.robocon321.demo.service;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;

import com.robocon321.demo.dto.request.ProductRequestDTO;
import com.robocon321.demo.dto.response.ProductResponseDTO;

public interface ProductService {
	public Page<ProductResponseDTO> getPage(Integer size, Integer page, String sort, Map<String, String> filter);
	public ProductResponseDTO save(ProductRequestDTO dto);
	public ProductResponseDTO update(ProductRequestDTO dto);
	public List<ProductResponseDTO> save(List<ProductRequestDTO> categoryDTOs);
	public List<ProductResponseDTO> update(List<ProductRequestDTO> categoryDTOs);
	public boolean delete(List<Integer> ids);
}
