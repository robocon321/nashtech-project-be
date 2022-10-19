package com.robocon321.demo.dto;

import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RoleDTO {
	private Integer id;
	private String name;
	private String description;
	private List<UserDTO> userDTOs = new ArrayList<>();
}
