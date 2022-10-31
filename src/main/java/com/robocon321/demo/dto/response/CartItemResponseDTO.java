package com.robocon321.demo.dto.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartItemResponseDTO {
	private Integer id;
	private Integer quantity;
	private CartResponseDTO cart;
	private ProductResponseDTO product;	
}
