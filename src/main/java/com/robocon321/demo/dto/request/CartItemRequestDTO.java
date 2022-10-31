package com.robocon321.demo.dto.request;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import com.robocon321.demo.dto.response.CartItemResponseDTO;
import com.robocon321.demo.dto.response.CartResponseDTO;
import com.robocon321.demo.dto.response.ProductResponseDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartItemRequestDTO {
	private Integer id;
	
	@Min(value = 1, message = "Quantity bigger than 0")
	@NotNull(message = "Quantity not null")
	private Integer quantity;	
	
	private Integer productId;	
}
