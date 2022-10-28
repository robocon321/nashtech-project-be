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

import com.robocon321.demo.dto.request.UserRequestDTO;
import com.robocon321.demo.dto.response.RoleResponseDTO;
import com.robocon321.demo.dto.response.UserResponseDTO;
import com.robocon321.demo.entity.Role;
import com.robocon321.demo.entity.User;
import com.robocon321.demo.exception.BadRequestException;
import com.robocon321.demo.exception.NotImplementedException;
import com.robocon321.demo.exception.NotfoundException;
import com.robocon321.demo.repository.RoleRepository;
import com.robocon321.demo.repository.UserRepository;
import com.robocon321.demo.security.CustomUserDetails;
import com.robocon321.demo.service.UserService;

@Service
public class UserServiceImpl implements UserDetailsService, UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private RoleRepository roleRepository;
		
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
	public UserResponseDTO findUserByIdWithRole(Integer userId) {
		Optional<User> optional = userRepository.findById(userId);
		if(optional.isPresent()) {
			return entityToDTOWithRole(optional.get());
		} else {
			return null;
		}
	}

	@Override
	public UserResponseDTO insertUser(UserRequestDTO requestDTO, String[] roleNames) {
		// check exists username, email, phone
		
		if(userRepository.existsByUsername(requestDTO.getUsername())) {
			throw new BadRequestException("Your username already existed!");
		}
		
		if(userRepository.existsByEmail(requestDTO.getEmail())) {
			throw new BadRequestException("Your email already registered!");
		}
		
		if(userRepository.existsByPhone(requestDTO.getPhone())) {
			throw new BadRequestException("Your phone already registered!");
		}
		
		User user = new User();
		BeanUtils.copyProperties(requestDTO, user);
		
		List<Role> roles = new ArrayList<>();
		
		for(String roleName: roleNames) {
			Optional<Role> optional = roleRepository.findOneByName(roleName);
			if(optional.isPresent()) roles.add(optional.get());
			else throw new NotImplementedException("Not found role " + roleName);
		}

		user = userRepository.save(user);
				
		return entityToDTO(user);
	}
	
	private UserResponseDTO entityToDTO(User user) {
		UserResponseDTO userResponseDTO = new UserResponseDTO();
		BeanUtils.copyProperties(user, userResponseDTO);
		return userResponseDTO;
	}

	private UserResponseDTO entityToDTOWithRole(User user) {
		UserResponseDTO dto = new UserResponseDTO();
		BeanUtils.copyProperties(user, dto);
		
		List<RoleResponseDTO> roleResponseDTOs = new ArrayList<>();
		for(Role role : user.getRoles()) {
			RoleResponseDTO roleResponseDTO = new RoleResponseDTO();
			BeanUtils.copyProperties(role, roleResponseDTO);
			roleResponseDTOs.add(roleResponseDTO);
		}
		dto.setRoles(roleResponseDTOs);
		
		
		return dto;
	}
}
