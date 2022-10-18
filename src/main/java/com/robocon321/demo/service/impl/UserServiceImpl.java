package com.robocon321.demo.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.robocon321.demo.dto.RoleDTO;
import com.robocon321.demo.dto.UserDTO;
import com.robocon321.demo.entity.Role;
import com.robocon321.demo.entity.User;
import com.robocon321.demo.repository.UserRepository;
import com.robocon321.demo.security.CustomUserDetails;
import com.robocon321.demo.service.UserService;

@Service
public class UserServiceImpl implements UserDetailsService, UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepository.findByUsername(username);
		if(user == null) {
			throw new UsernameNotFoundException(username);
		}
		return new CustomUserDetails(user);
	}

	public UserDetails loadUserById(int userId) throws UsernameNotFoundException {
		Optional<User> optional = userRepository.findById(userId);
		if(optional.isEmpty()) {
			throw new RuntimeException(userId + " not found");
		}
		return new CustomUserDetails(optional.get());
	}

	@Override
	public UserDTO findUserByIdWithRole(Integer userId) {
		Optional<User> optional = userRepository.findById(userId);
		if(optional.isPresent()) {
			User user = optional.get();
			UserDTO dto = new UserDTO();
			BeanUtils.copyProperties(user, dto);
			
			List<RoleDTO> roleDTOs = new ArrayList<>();
			for(Role role : user.getRoles()) {
				RoleDTO roleDTO = new RoleDTO();
				BeanUtils.copyProperties(role, roleDTO);
				roleDTOs.add(roleDTO);
			}
			
			dto.setRoleDTOs(roleDTOs);
			
			
			return dto;
		} else {
			return null;
		}
	}

	@Override
	public UserDTO insertUser(UserDTO userDTO) {
		User user = new User();
		return null;
	}
}
