package com.robocon321.demo.dto;

import java.sql.Timestamp;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO {
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
	private List<RoleDTO> roleDTOs;
	private List<ContactDTO> contactDTOs;
	private List<CartDTO> cartDTOs;
	private List<RatingDTO> ratingDTOs;
}
