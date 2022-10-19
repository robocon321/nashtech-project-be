package com.robocon321.demo.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartItemDTO {
	private Integer id;
	private Integer quantity;
	private CartDTO cartDTO;
	private ProductDTO productDTO;	
}
