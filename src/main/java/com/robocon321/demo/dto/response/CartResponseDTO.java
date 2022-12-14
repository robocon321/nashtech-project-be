package com.robocon321.demo.dto.response;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartResponseDTO {
	private Integer id;
	private Integer status;
	private Timestamp createTime;
	private Timestamp modTime;
	private UserResponseDTO user;
	private List<CartItemResponseDTO> cartItems = new ArrayList<>();
	private OrderResponseDTO order;
}
