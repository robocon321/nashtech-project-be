package com.robocon321.demo.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.robocon321.demo.dto.response.ProductImageResponseDTO;
import com.robocon321.demo.entity.ProductImage;
import com.robocon321.demo.repository.ProductImageRepository;
import com.robocon321.demo.service.ProductImageService;

@Service
public class ProductImageServiceImpl implements ProductImageService {
	@Autowired
	private ProductImageRepository productImageRepository;

	@Override
	public List<ProductImageResponseDTO> getByProductId(Integer id) {
		List<ProductImageResponseDTO> dtos = new ArrayList<>();
		List<ProductImage> productImages = productImageRepository.findByProduct_Id(id);
		
		for(ProductImage productImage : productImages) {
			ProductImageResponseDTO dto = new ProductImageResponseDTO();
			BeanUtils.copyProperties(productImage, dto);
			dtos.add(dto);
		}
		return dtos;
	}

}
