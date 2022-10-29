package com.robocon321.demo.service;

import java.util.List;

import com.robocon321.demo.dto.response.ProductImageResponseDTO;

public interface ProductImageService {
	public List<ProductImageResponseDTO> getByProductId(Integer id);
}
