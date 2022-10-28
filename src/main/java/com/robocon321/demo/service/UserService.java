package com.robocon321.demo.service;

import com.robocon321.demo.dto.request.UserRequestDTO;
import com.robocon321.demo.dto.response.UserResponseDTO;

public interface UserService {
	UserResponseDTO findUserByIdWithRole(Integer userId);
	UserResponseDTO insertUser(UserRequestDTO userResponseDTO, String[] roleName);
}
