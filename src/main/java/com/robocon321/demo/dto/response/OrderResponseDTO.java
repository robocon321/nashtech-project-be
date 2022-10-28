package com.robocon321.demo.dto.response;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderResponseDTO {
	private Integer id;
	private Double productPrice;
	private Double shipPrice;
	private Integer status;
	private Timestamp createTime;
	private ShippingResponseDTO shippingResponseDTO;
	private CartResponseDTO cartResponseDTO;
}
