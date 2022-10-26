package com.robocon321.demo.service;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;

import com.robocon321.demo.dto.request.CategoryRequestDTO;
import com.robocon321.demo.dto.response.CategoryResponseDTO;

public interface CategoryService {
	public Page<CategoryResponseDTO> getPage(Integer size, Integer page, String sort, Map<String, String> filter);
	public CategoryResponseDTO save(CategoryRequestDTO dto);
	public CategoryResponseDTO update(CategoryRequestDTO dto);
	public List<CategoryResponseDTO> save(List<CategoryRequestDTO> categoryDTOs);
	public List<CategoryResponseDTO> update(List<CategoryRequestDTO> categoryDTOs);
	public boolean delete(List<Integer> ids);
}
