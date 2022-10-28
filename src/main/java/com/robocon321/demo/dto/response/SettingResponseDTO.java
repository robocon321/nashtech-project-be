package com.robocon321.demo.dto.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SettingResponseDTO {
	private Integer id;
	private String key;
	private String value;
}
