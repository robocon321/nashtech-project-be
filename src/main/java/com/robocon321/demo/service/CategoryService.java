package com.robocon321.demo.service;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;

import com.robocon321.demo.dto.CategoryDTO;

public interface CategoryService {
	public Page<CategoryDTO> getPage(Integer size, Integer page, String sort, Map<String, String> filter);
	public CategoryDTO save(CategoryDTO dto);
	public CategoryDTO update(CategoryDTO dto);
	public List<CategoryDTO> save(List<CategoryDTO> categoryDTOs);
	public List<CategoryDTO> update(List<CategoryDTO> categoryDTOs);
	public boolean delete(List<Integer> ids);
}
