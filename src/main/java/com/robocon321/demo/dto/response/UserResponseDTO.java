package com.robocon321.demo.dto.response;

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
public class UserResponseDTO {	
	private Integer id;
	private String username;
	private String fullname;
	private String phone;
	private String email;
	private String avatar;
	private Timestamp birthday;
	private Boolean sex;
	private Integer status;
	private Timestamp createTime;
	private Timestamp modTime;
	private List<RoleResponseDTO> roles = new ArrayList<>();
	private List<ContactResponseDTO> contacts = new ArrayList<>();
	private List<CartResponseDTO> carts = new ArrayList<>();
	private List<RatingResponseDTO> ratings = new ArrayList<>();
}
