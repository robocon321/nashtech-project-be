package com.robocon321.demo.dto;

import javax.validation.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LoginDTO {
	@NotBlank(message = "Username not blank")
	private String username;
	
	@NotBlank(message = "Password not blank")
	private String password;
}
