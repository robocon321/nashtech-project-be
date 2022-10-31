package com.robocon321.demo.dto.request;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartRequestDTO {
	private Integer id;
	private Integer status;
	private Timestamp createTime;
	private Timestamp modTime;
	private List<CartItemRequestDTO> cartItems = new ArrayList<>();
}
		