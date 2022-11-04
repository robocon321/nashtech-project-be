package com.robocon321.demo.service;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;

import com.robocon321.demo.dto.request.UserRequestDTO;
import com.robocon321.demo.dto.response.UserResponseDTO;
import com.robocon321.demo.entity.User;

public interface UserService {
	public UserResponseDTO findUserByIdWithRole(Integer userId, Integer status);
	public UserResponseDTO save(UserRequestDTO userResponseDTO, String[] roleName);
	public Page<UserResponseDTO> getPage(Integer size, Integer page, String sort, Map<String, String> filter);
	public boolean delete(List<Integer> ids);
	public UserResponseDTO update(UserRequestDTO userResponseDTO, String[] roleName);
	public UserResponseDTO findById(Integer id);
}
	