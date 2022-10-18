package com.robocon321.demo.service;

import com.robocon321.demo.dto.UserDTO;

public interface UserService {
	UserDTO findUserByIdWithRole(Integer userId);
	UserDTO insertUser(UserDTO userDTO);
}
