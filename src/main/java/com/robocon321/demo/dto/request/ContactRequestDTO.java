package com.robocon321.demo.dto.request;

import java.sql.Timestamp;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import com.robocon321.demo.util.ValidatePattern;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ContactRequestDTO {
	private Integer id;
	
	@NotBlank(message =  "Fullname not blank")
	@Pattern(regexp = ValidatePattern.FULL_NAME, message = "Fullname incorrect format")
	private String fullname;
	
	@NotBlank(message =  "Phone not blank")
	@Pattern(regexp = ValidatePattern.PHONE, message = "Phone incorrect format")
	private String phone;

	@NotBlank(message =  "Email not blank")
	@Pattern(regexp = ValidatePattern.EMAIL, message = "Email incorrect format")
	private String email;
	
	@NotBlank(message = "Province not blank")
	private String province;

	@NotBlank(message = "District not blank")
	private String district;

	@NotBlank(message = "Ward not blank")
	private String ward;

	@NotBlank(message = "Detail not blank")
	private String detail;
}
