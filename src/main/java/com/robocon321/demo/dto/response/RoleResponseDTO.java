package com.robocon321.demo.dto.response;

import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RoleResponseDTO {
	private Integer id;
	private String name;
	private String description;
	private List<UserResponseDTO> userResponseDTOs = new ArrayList<>();
}
