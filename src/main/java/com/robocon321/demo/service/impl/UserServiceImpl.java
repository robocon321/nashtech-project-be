package com.robocon321.demo.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.robocon321.demo.dto.FilterCriteria;
import com.robocon321.demo.dto.request.UserRequestDTO;
import com.robocon321.demo.dto.response.CategoryResponseDTO;
import com.robocon321.demo.dto.response.RoleResponseDTO;
import com.robocon321.demo.dto.response.UserResponseDTO;
import com.robocon321.demo.entity.Category;
import com.robocon321.demo.entity.Role;
import com.robocon321.demo.entity.User;
import com.robocon321.demo.exception.BadRequestException;
import com.robocon321.demo.exception.NotImplementedException;
import com.robocon321.demo.exception.NotfoundException;
import com.robocon321.demo.repository.RoleRepository;
import com.robocon321.demo.repository.UserRepository;
import com.robocon321.demo.security.CustomUserDetails;
import com.robocon321.demo.service.UserService;
import com.robocon321.demo.specs.CategorySpecification;
import com.robocon321.demo.specs.UserSpecification;
import com.robocon321.demo.type.FilterOperateType;

@Service
public class UserServiceImpl implements UserDetailsService, UserService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private RoleRepository roleRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepository.findByUsername(username);
		if (user == null) {
			throw new NotfoundException("Username or password is incorrect!");
		}
		return new CustomUserDetails(user);
	}

	public UserDetails loadUserById(int userId) throws UsernameNotFoundException {
		Optional<User> optional = userRepository.findById(userId);
		if (optional.isEmpty()) {
			throw new NotfoundException(userId + " not found");
		}
		return new CustomUserDetails(optional.get());
	}

	@Override
	public UserResponseDTO findUserByIdWithRole(Integer userId) {
		Optional<User> optional = userRepository.findById(userId);
		if (optional.isPresent()) {
			return entityToDTOWithRole(optional.get());
		} else {
			return null;
		}
	}

	@Override
	public UserResponseDTO save(UserRequestDTO requestDTO, String[] roleNames) {		
		if(requestDTO.getId() != null) throw new BadRequestException("Id must be null");
		if(requestDTO.getPassword() == null || requestDTO.getPassword().length() == 0) throw new BadRequestException("Password not blank");
		if(requestDTO.getPassword().length() >= 20 || requestDTO.getPassword().length() <= 6) throw new BadRequestException("Size password >= 6 and <= 20");

		// check exists username, email, phone

		if (userRepository.existsByUsername(requestDTO.getUsername())) {
			throw new BadRequestException("Your username already existed!");
		}

		if (userRepository.existsByEmail(requestDTO.getEmail())) {
			throw new BadRequestException("Your email already registered!");
		}

		if (userRepository.existsByPhone(requestDTO.getPhone())) {
			throw new BadRequestException("Your phone already registered!");
		}

		User user = new User();
		BeanUtils.copyProperties(requestDTO, user);

		List<Role> roles = new ArrayList<>();

		for (String roleName : roleNames) {
			Optional<Role> optional = roleRepository.findOneByName(roleName);
			if (optional.isPresent()) {
				Role role = optional.get();
				roles.add(role);
			}
			else
				throw new NotImplementedException("Not found role " + roleName);
		}
		user.setRoles(roles);
		user.setStatus(1);

		user = userRepository.save(user);

		return entityToDTO(user);
	}

	private UserResponseDTO entityToDTOWithRole(User user) {
		UserResponseDTO dto = new UserResponseDTO();
		BeanUtils.copyProperties(user, dto);

		List<RoleResponseDTO> roleResponseDTOs = new ArrayList<>();
		for (Role role : user.getRoles()) {
			RoleResponseDTO roleResponseDTO = new RoleResponseDTO();
			BeanUtils.copyProperties(role, roleResponseDTO);
			roleResponseDTOs.add(roleResponseDTO);
		}
		dto.setRoles(roleResponseDTOs);

		return dto;
	}

	@Override
	public Page<UserResponseDTO> getPage(Integer size, Integer page, String sort, Map<String, String> filter) {
		Specification<User> spec = null;
		for (Map.Entry<String, String> entry : filter.entrySet()) {
			String keyEntry = entry.getKey();
			String valueEntry = entry.getValue();

			if (keyEntry.startsWith("OR")) {
				String field = keyEntry.substring(3);
				String[] values = valueEntry.split(",");
				for (int i = 0; i < values.length; i++) {
					String value = values[i];
					Specification<User> specType = UserSpecification
							.filter(new FilterCriteria(field, FilterOperateType.EQUALS, value));
					if (spec == null) {
						spec = specType;
					} else {
						if (i == 0)
							spec = spec.and(specType);
						else
							spec = spec.or(specType);
					}
				}
			} else if (keyEntry.startsWith("BT")) {
				String field = keyEntry.substring(3);
				String[] values = valueEntry.split(",");
				if (values.length == 2) {
					Specification<User> specTypeGreater = UserSpecification
							.filter(new FilterCriteria(field, FilterOperateType.GREATER, values[0]));
					Specification<User> specTypeLess = UserSpecification
							.filter(new FilterCriteria(field, FilterOperateType.LESS, values[1]));
					if (spec == null) {
						spec = specTypeGreater.and(specTypeLess);
					} else {
						spec = spec.and(specTypeGreater.and(specTypeLess));
					}
				}
			} else if (keyEntry.startsWith("AND")) {
				String field = keyEntry.substring(4);
				String[] values = valueEntry.split(",");
				for (String value : values) {
					Specification<User> specType = UserSpecification
							.filter(new FilterCriteria(field, FilterOperateType.EQUALS, value));
					if (spec == null) {
						spec = specType;
					} else {
						spec = spec.and(specType);
					}
				}
			} else if (keyEntry.startsWith("LIKE")) {
				String field = keyEntry.substring(5);

				if (spec == null) {
					spec = UserSpecification.filter(new FilterCriteria(field, FilterOperateType.LIKE, valueEntry));
				} else {
					spec = spec.and(
							UserSpecification.filter(new FilterCriteria(field, FilterOperateType.LIKE, valueEntry)));
				}
			} else if (keyEntry.startsWith("IN")) {
				String field = keyEntry.substring(3);
				if (spec == null) {
					spec = UserSpecification.filter(new FilterCriteria(field, FilterOperateType.IN, valueEntry));
				} else {
					spec = spec
							.and(UserSpecification.filter(new FilterCriteria(field, FilterOperateType.IN, valueEntry)));
				}

			} else {
				continue;
			}
		}

		String[] sorts = sort.split("__");
		String sortName;
		String sortType;
		if (sorts.length == 2) {
			sortName = sorts[0];
			sortType = sorts[1];
		} else {
			sortName = "id";
			sortType = "asc";
		}

		Page<User> pageResponse = userRepository.findAll(spec, PageRequest.of(page, size,
				sortType.equals("desc") ? Sort.by(sortName).descending() : Sort.by(sortName).ascending()));

		return pageEntityToDTO(pageResponse);
	}

	private Page<UserResponseDTO> pageEntityToDTO(Page<User> page) {
		return page.map(user -> entityToDTO(user));
	}

	private List<UserResponseDTO> entitiesToDTOs(List<User> users) {
		return users.stream().map(item -> {
			return entityToDTO(item);
		}).toList();
	}

	private UserResponseDTO entityToDTO(User user) {
		UserResponseDTO dto = new UserResponseDTO();
		BeanUtils.copyProperties(user, dto);
		return dto;
	}

	@Override
	public boolean delete(List<Integer> ids) throws BadRequestException {
		try {
			userRepository.deleteAllById(ids);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			throw new BadRequestException("Can not delete!");
		}
	}

	@Override
	public UserResponseDTO update(UserRequestDTO requestDTO, String[] roleNames) {	
		Optional<User> userOpt = userRepository.findById(requestDTO.getId());
		if(userOpt.isEmpty()) throw new BadRequestException("Not found your id");
		User user = userOpt.get();
		
		if(requestDTO.getPassword() == null || requestDTO.getPassword().length() == 0) 
			requestDTO.setPassword(user.getPassword());
		if(requestDTO.getPassword().length() >= 20 || requestDTO.getPassword().length() <= 6) 
			throw new BadRequestException("Size password >= 6 and <= 20");

		// check exists username, email, phone

		if (userRepository.existsByUsernameAndIdNot(requestDTO.getUsername(), requestDTO.getId())) {
			throw new BadRequestException("Your username already existed!");
		}

		if (userRepository.existsByEmailAndIdNot(requestDTO.getEmail(), requestDTO.getId())) {
			throw new BadRequestException("Your email already registered!");
		}

		if (userRepository.existsByPhoneAndIdNot(requestDTO.getPhone(), requestDTO.getId())) {
			throw new BadRequestException("Your phone already registered!");
		}

		BeanUtils.copyProperties(requestDTO, user);

		List<Role> roles = new ArrayList<>();

		for (String roleName : roleNames) {
			Optional<Role> optional = roleRepository.findOneByName(roleName);
			if (optional.isPresent()) {
				Role role = optional.get();
				roles.add(role);
			}
			else
				throw new NotImplementedException("Not found role " + roleName);
		}
		user.setRoles(roles);
		user.setStatus(requestDTO.getStatus());

		user = userRepository.save(user);

		return entityToDTO(user);
	}

	@Override
	public UserResponseDTO findById(Integer id) {
		Optional<User> userOpt = userRepository.findById(id);
		if(userOpt.isEmpty()) throw new BadRequestException("Not found your id");		
		return entityToDTO(userOpt.get());
	}
}
