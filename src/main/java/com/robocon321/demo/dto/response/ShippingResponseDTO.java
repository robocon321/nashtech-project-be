package com.robocon321.demo.dto.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ShippingResponseDTO {
	private Integer id;
	private String fullname;
	private String phone;
	private String email;
	private String province;
	private String district;
	private String ward;
	private String detail;
	private OrderResponseDTO orderResponseDTO;
}
