package com.robocon321.demo.dto.response;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RatingResponseDTO {
	private Integer id;
	private Integer star;
	private String content;
	private Timestamp createTime;
	private UserResponseDTO userResponseDTO;
	private ProductResponseDTO productDTO;
}
