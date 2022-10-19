package com.robocon321.demo.dto;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartDTO {
	private Integer id;
	private Integer status;
	private Timestamp createTime;
	private Timestamp modTime;
	private UserDTO userDTO;
	private List<CartItemDTO> cartItemDTOs = new ArrayList<>();
	private OrderDTO orderDTO;
}
