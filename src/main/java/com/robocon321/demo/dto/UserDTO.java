package com.robocon321.demo.dto;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.robocon321.demo.util.ValidatePattern;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO {	
	private Integer id;

	@NotBlank(message = "Username not blank")
	@Size(min = 6, max = 20, message = "Size username >= 6 and <= 20")
	private String username;
	
	@NotBlank(message = "Fullname not blank")
	@Pattern(regexp = ValidatePattern.FULL_NAME, message = "Fullname incorrect format")
	@Size(min = 6, max = 50, message = "Size fullname >= 6 and <= 50")
	private String fullname;
	
	@NotBlank(message = "Phone not blank")
	@Pattern(regexp = ValidatePattern.PHONE, message = "Phone incorrect format")
	@Size(min = 10, max = 20, message = "Size phone >= 11 and <= 20")
	private String phone;
	
	@NotBlank(message = "Email not blank")
	@Pattern(regexp = ValidatePattern.EMAIL, message = "Email incorrect format")
	@Size(min = 5, max = 50, message = "Size email >= 5 and <= 50")
	private String email;
	
	
	@NotBlank(message = "Password not blank")
	@Size(min = 6, max = 20, message = "Size password >= 6 and <= 20")
	private String password;
	
	private String avatar;
	private Timestamp birthday;
	private Boolean sex;
	private Integer status;
	private Timestamp createTime;
	private Timestamp modTime;
	private List<RoleDTO> roleDTOs = new ArrayList<>();
	private List<ContactDTO> contactDTOs = new ArrayList<>();
	private List<CartDTO> cartDTOs = new ArrayList<>();
	private List<RatingDTO> ratingDTOs = new ArrayList<>();
}
