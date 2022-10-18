package com.robocon321.demo.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductImageDTO {
	private Integer id;
	private ProductDTO productDTO;
	private String image;
}
