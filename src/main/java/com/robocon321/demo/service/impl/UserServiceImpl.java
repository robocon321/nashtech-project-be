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
import com.robocon321.demo.exception.BadRequestException;
import com.robocon321.demo.exception.NotImplementedException;
import com.robocon321.demo.exception.NotfoundException;
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
			throw new NotfoundException("Username or password is incorrect!");
		}
		return new CustomUserDetails(user);
	}

	public UserDetails loadUserById(int userId) throws UsernameNotFoundException {
		Optional<User> optional = userRepository.findById(userId);
		if(optional.isEmpty()) {
			throw new NotfoundException(userId + " not found");
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
		// check exists username, email, phone
		
		if(userRepository.existsByUsername(userDTO.getUsername())) {
			throw new BadRequestException("Your username already existed!");
		}
		
		if(userRepository.existsByEmail(userDTO.getEmail())) {
			throw new BadRequestException("Your email already registered!");
		}
		
		if(userRepository.existsByPhone(userDTO.getPhone())) {
			throw new BadRequestException("Your phone already registered!");
		}
		
		User user = new User();
		BeanUtils.copyProperties(userDTO, user);
		
		List<Role> roles = userDTO.getRoleDTOs().stream().map(item -> {
			Role role = new Role();
			role.setId(item.getId());
			return role;
		}).toList();
		if(roles.size() == 0) throw new NotImplementedException("You aren't specify role account");
		user.setRoles(roles);
		user.setStatus(1);
		user = userRepository.save(user);
		
		
		BeanUtils.copyProperties(user, userDTO);
		userDTO.setPassword(null);
		userDTO.setId(null);
		
		return userDTO;
	}
}
