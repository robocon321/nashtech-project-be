package com.robocon321.demo.dto.response;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ContactResponseDTO {
	private Integer id;
	private String fullname;
	private String phone;
	private String email;
	private String province;
	private String district;
	private String ward;
	private String detail;
	private Timestamp createTime;
	private Timestamp modTime;
	private UserResponseDTO userResponseDTO;
}
