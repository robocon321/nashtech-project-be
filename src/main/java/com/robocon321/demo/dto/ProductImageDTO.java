package com.robocon321.demo.dto;

import com.robocon321.demo.dto.response.ProductResponseDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductImageDTO {
	private Integer id;
	private ProductResponseDTO productDTO;
	private String image;
}
