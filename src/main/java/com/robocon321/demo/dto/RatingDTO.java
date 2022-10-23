package com.robocon321.demo.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RatingDTO {
	private Integer id;
	private Integer star;
	private String content;
	private Timestamp createTime;
	private UserDTO userDTO;
	private ProductDTO productDTO;
}