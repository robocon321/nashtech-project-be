package com.robocon321.demo.dto.request;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import com.robocon321.demo.util.ValidatePattern;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ForgotPasswordRequestDTO {
	@NotBlank
	@Pattern(regexp = ValidatePattern.EMAIL, message = "Your email incorrect format")
	public String email;
}
