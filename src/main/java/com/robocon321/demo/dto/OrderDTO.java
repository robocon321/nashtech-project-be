package com.robocon321.demo.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderDTO {
	private Integer id;
	private Double productPrice;
	private Double shipPrice;
	private Integer status;
	private Timestamp createTime;
	private ShippingDTO shippingDTO;
	private CartDTO cartDTO;
}
