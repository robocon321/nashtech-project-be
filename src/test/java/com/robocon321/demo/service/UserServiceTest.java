package com.robocon321.demo.service;

import static org.mockito.Mockito.doReturn;
import static org.mockito.Mockito.doThrow;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.TreeMap;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.aggregator.ArgumentsAccessor;
import org.junit.jupiter.params.provider.CsvSource;
import org.junit.jupiter.params.provider.NullSource;
import org.junit.jupiter.params.provider.ValueSource;
import org.mockito.Mockito;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.test.util.ReflectionTestUtils;

import com.robocon321.demo.SpringBootEcommerceApplication;
import com.robocon321.demo.dto.FilterCriteria;
import com.robocon321.demo.dto.request.UserRequestDTO;
import com.robocon321.demo.dto.response.UserResponseDTO;
import com.robocon321.demo.entity.Role;
import com.robocon321.demo.entity.User;
import com.robocon321.demo.exception.BadRequestException;
import com.robocon321.demo.exception.NotImplementedException;
import com.robocon321.demo.exception.NotfoundException;
import com.robocon321.demo.repository.RoleRepository;
import com.robocon321.demo.repository.UserRepository;
import com.robocon321.demo.security.CustomUserDetails;
import com.robocon321.demo.specs.UserSpecification;
import com.robocon321.demo.type.FilterOperateType;

@TestMethodOrder(value = MethodOrderer.DisplayName.class)
@SpringBootTest(classes= SpringBootEcommerceApplication.class)
public class UserServiceTest {
	@MockBean
	private UserRepository userRepository;
	
	@MockBean
	private RoleRepository roleRepository;
	
	@Autowired
	private UserService userService;
		
	
	@DisplayName("Find user not found by userId and status with role")
	@ParameterizedTest
	@CsvSource(value = {"1,1"})
	public void findUserByIdWithRole_ReturnNull(Integer userId, Integer status) {		
		UserResponseDTO expected = null;
		UserResponseDTO actual = userService.findUserByIdWithRole(userId, status);
		
		Assertions.assertEquals(expected, actual);
		
		verify(userRepository, times(1)).findOneByIdAndStatus(userId, status);
	}
	
	
	@DisplayName("Find user found by userId and status with role")
	@ParameterizedTest
	@CsvSource(value = {"1,1"})
	public void findUserByIdWithRole_Found(Integer userId, Integer status) {
		Role adminRole = new Role();
		Role clientRole = new Role();

		User user = new User();
		user.setRoles(List.of(adminRole, clientRole));
		Optional<User> userOpt = Optional.of(user);
		when(userRepository.findOneByIdAndStatus(userId, status)).thenReturn(userOpt);

		UserResponseDTO expected = ReflectionTestUtils.invokeMethod(userService, "entityToDTOWithRole", userOpt.get());
		
		when(userRepository.findOneByIdAndStatus(userId, status)).thenReturn(userOpt);		
		UserResponseDTO actual = userService.findUserByIdWithRole(userId, status);
		
		Assertions.assertEquals(expected, actual);
		
	}
	
	
	@Test
	@DisplayName("Save user with id not null")
	public void save_IdNotNull() {
		UserRequestDTO userRequestDTO = new UserRequestDTO();
		userRequestDTO.setId(1);
		String[] roleNames = {};
		
		String expected = "Id must be null";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> userService.save(userRequestDTO, roleNames));
		String actual = ex.getMessage();
		Assertions.assertEquals(expected, actual);
	}
	
	
	@DisplayName("Save user with password null or blank")
	@ParameterizedTest
	@NullSource
	@ValueSource(strings = {""})
	public void save_PasswordNull(String password) {
		UserRequestDTO userRequestDTO = new UserRequestDTO();
		userRequestDTO.setPassword(password);
		String[] roleNames = {};
		
		String expected = "Password not blank";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> userService.save(userRequestDTO, roleNames));
		String actual = ex.getMessage();
		Assertions.assertEquals(expected, actual);
	}
	
	
	@DisplayName("Save user with password too short or long")
	@ParameterizedTest
	@ValueSource(strings = {"123", "1234567890123456789999"})
	public void save_PasswordLengthInvalid(String password) {
		UserRequestDTO userRequestDTO = new UserRequestDTO();
		userRequestDTO.setPassword(password);
		String[] roleNames = {};
		
		String expected = "Size password >= 6 and <= 20";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> userService.save(userRequestDTO, roleNames));
		String actual = ex.getMessage();
		Assertions.assertEquals(expected, actual);
	}
	
	
	@DisplayName("Save user with username already exists")
	@ParameterizedTest
	@CsvSource(value = {"username1.password1"}, delimiter = '.')
	public void save_UsernameExists(String username, String password) {
		UserRequestDTO userRequestDTO = new UserRequestDTO();
		userRequestDTO.setUsername(username);
		userRequestDTO.setPassword(password);

		String[] roleNames = {};
		
		when(userRepository.existsByUsername(username)).thenReturn(true);
			
		String expected = "Your username already existed!";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> userService.save(userRequestDTO, roleNames));
		String actual = ex.getMessage();
		
		Assertions.assertEquals(expected, actual);
	}
	
	
	@DisplayName("Save user with email already exists")
	@ParameterizedTest
	@CsvSource(value = {
			"username1,password1,robocon321n@gmail.com,035412418"
	}, delimiter = ',')
	public void save_EmailExists(String username, String password, String email) {
		UserRequestDTO userRequestDTO = new UserRequestDTO();
		userRequestDTO.setUsername(username);
		userRequestDTO.setPassword(password);
		userRequestDTO.setEmail(email);
		
		String[] roleNames = {};
		
		when(userRepository.existsByEmail(email)).thenReturn(true);
			
		String expected = "Your email already existed!";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> userService.save(userRequestDTO, roleNames));
		String actual = ex.getMessage();
		
		Assertions.assertEquals(expected, actual);
	}

	
	@DisplayName("Save user with phone already exists")
	@ParameterizedTest
	@CsvSource(value = {
			"username1,password1,robocon321n@gmail.com,035412418"
	}, delimiter = ',')
	public void save_PhoneExists(String username, String password, String email, String phone) {
		UserRequestDTO userRequestDTO = new UserRequestDTO();
		userRequestDTO.setUsername(username);
		userRequestDTO.setPassword(password);
		userRequestDTO.setEmail(email);
		userRequestDTO.setPhone(phone);
		
		String[] roleNames = {};
		
		when(userRepository.existsByPhone(phone)).thenReturn(true);
			
		String expected = "Your phone already existed!";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> userService.save(userRequestDTO, roleNames));
		String actual = ex.getMessage();
		
		Assertions.assertEquals(expected, actual);
	}
	
	
	@DisplayName("Save user with role not found")
	@ParameterizedTest
	@CsvSource(value = {
			"username1,password1,robocon321n@gmail.com,035412418"
	}, delimiter = ',')
	public void save_RoleNotfound(String username, String password, String email, String phone) {
		UserRequestDTO userRequestDTO = new UserRequestDTO();
		userRequestDTO.setUsername(username);
		userRequestDTO.setPassword(password);
		userRequestDTO.setEmail(email);
		userRequestDTO.setPhone(phone);
	
		String roleValid = "ADMIN";
		String roleInvalid = "HAHO";
		String[] roleNames = {roleValid, roleInvalid};
		
		Role role = new Role();
		Optional<Role> roleOpt = Optional.of(role);
		when(roleRepository.findOneByName(roleValid)).thenReturn(roleOpt);
					
		Optional<Role> roleEmptyOpt = Optional.empty();
		when(roleRepository.findOneByName(roleInvalid)).thenReturn(roleEmptyOpt);

		String expected = "Not found role " + roleInvalid;
		NotImplementedException ex = Assertions.assertThrows(NotImplementedException.class, () -> userService.save(userRequestDTO, roleNames));
		String actual = ex.getMessage();
		
		Assertions.assertEquals(expected, actual);
		
		verify(roleRepository, times(1)).findOneByName(roleValid);
		verify(roleRepository, times(1)).findOneByName(roleInvalid);
	}
	
	
	@DisplayName("Save user success")
	@ParameterizedTest
	@CsvSource(value = {
			"username1,password1,robocon321n@gmail.com,035412418"
	}, delimiter = ',')
	public void save_Success(String username, String password, String email, String phone) {
		User user = new User();
				
		UserResponseDTO expected = ReflectionTestUtils.invokeMethod(userService, "entityToDTO", user);	

		UserRequestDTO userRequestDTO = new UserRequestDTO();
		userRequestDTO.setUsername(username);
		userRequestDTO.setPassword(password);
		userRequestDTO.setEmail(email);
		userRequestDTO.setPhone(phone);

		String[] roleNames = {"ADMIN", "CLIENT"};
		for(String roleName: roleNames) {
			Role role = new Role();
			role.setName(roleName);
			Optional<Role> roleOpt = Optional.of(role);
			when(roleRepository.findOneByName(roleName)).thenReturn(roleOpt);
		}
				
		when(userRepository.save(Mockito.any(User.class)))
        .thenAnswer(i -> user);
		
		UserResponseDTO actual = userService.save(userRequestDTO, roleNames);
	
		Assertions.assertEquals(expected, actual);
	}

	
	
	@Test
	@DisplayName("Delete fail users")
	public void delete_OneIdNotfound() {
		Integer[] ids = {1, 2, 3};
		String expected = "Can not delete!";
		
		doThrow(BadRequestException.class).when(userRepository).deleteAllById(List.of(ids));;
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> userService.delete(List.of(ids)));

		String actual = ex.getMessage();
		Assertions.assertEquals(expected, actual);
	}
	
	
	@Test
	@DisplayName("Delete success users")
	public void delete_Success() {
		Integer[] ids = {4, 2, 3};
		Assertions.assertDoesNotThrow(() -> userService.delete(List.of(ids)));
	}
	
	
	@ParameterizedTest
	@DisplayName("Update user with id null")
	@ValueSource(ints = {1, 2, 3})
	public void update_IdNull(int id) {
		UserRequestDTO userRequestDTO = new UserRequestDTO();
		String expected = "Not found your id";
		when(userRepository.findById(id)).thenThrow(new BadRequestException(expected));
		String[] roleNames = {};
		
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> userService.update(userRequestDTO, roleNames));
		String actual = ex.getMessage();

		Assertions.assertEquals(expected, actual);
	}

	
	@DisplayName("Update user with password too short or long")
	@ParameterizedTest
	@ValueSource(strings = {"123", "1234567890123456789999"})
	public void update_PasswordLengthInvalid(String password) {
		User user = new User();
		Optional<User> optional = Optional.of(user);
		when(userRepository.findById(10)).thenReturn(optional);		
		
		UserRequestDTO userRequestDTO = new UserRequestDTO();
		userRequestDTO.setId(10);
		userRequestDTO.setPassword(password);
		String[] roleNames = {};
		
		
		String expected = "Size password >= 6 and <= 20";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> userService.update(userRequestDTO, roleNames));
		String actual = ex.getMessage();
		Assertions.assertEquals(expected, actual);
	}

	
	@DisplayName("Update user with username already exists")
	@ParameterizedTest
	@CsvSource(value = {"1,username1,password1"}, delimiter = ',')
	public void update_UsernameExists(Integer id, String username, String password) {
		User user = new User();
		Optional<User> optional = Optional.of(user);
		when(userRepository.findById(id)).thenReturn(optional);		

		UserRequestDTO userRequestDTO = new UserRequestDTO();
		userRequestDTO.setId(id);
		userRequestDTO.setUsername(username);
		userRequestDTO.setPassword(password);

		String[] roleNames = {};
		
		when(userRepository.existsByUsernameAndIdNot(username, id)).thenReturn(true);
			
		String expected = "Your username already existed!";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> userService.update(userRequestDTO, roleNames));
		String actual = ex.getMessage();
		
		Assertions.assertEquals(expected, actual);
	}
	
	
	@DisplayName("Update user with email already exists")
	@ParameterizedTest
	@CsvSource(value = {
			"1,username1,password1,robocon321n@gmail.com,035412418"
	}, delimiter = ',')
	public void update_EmailExists(Integer id, String username, String password, String email) {
		User user = new User();
		Optional<User> optional = Optional.of(user);
		when(userRepository.findById(id)).thenReturn(optional);		

		UserRequestDTO userRequestDTO = new UserRequestDTO();
		userRequestDTO.setId(id);
		userRequestDTO.setUsername(username);
		userRequestDTO.setPassword(password);
		userRequestDTO.setEmail(email);
		
		String[] roleNames = {};
		
		when(userRepository.existsByEmailAndIdNot(email, id)).thenReturn(true);
			
		String expected = "Your email already existed!";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> userService.update(userRequestDTO, roleNames));
		String actual = ex.getMessage();
		
		Assertions.assertEquals(expected, actual);
	}

	
	@DisplayName("Update user with phone already exists")
	@ParameterizedTest
	@CsvSource(value = {
			"1,username1,password1,robocon321n@gmail.com,035412418"
	}, delimiter = ',')
	public void update_PhoneExists(Integer id, String username, String password, String email, String phone) {
		User user = new User();
		Optional<User> optional = Optional.of(user);
		when(userRepository.findById(id)).thenReturn(optional);		

		UserRequestDTO userRequestDTO = new UserRequestDTO();
		userRequestDTO.setId(id);
		userRequestDTO.setUsername(username);
		userRequestDTO.setPassword(password);
		userRequestDTO.setEmail(email);
		userRequestDTO.setPhone(phone);
		
		String[] roleNames = {};
		
		when(userRepository.existsByPhoneAndIdNot(phone, id)).thenReturn(true);
			
		String expected = "Your phone already existed!";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> userService.update(userRequestDTO, roleNames));
		String actual = ex.getMessage();
		
		Assertions.assertEquals(expected, actual);
	}

	
	@DisplayName("Update user with role not found")
	@ParameterizedTest
	@CsvSource(value = {
			"1,username1,password1,robocon321n@gmail.com,035412418"
	}, delimiter = ',')
	public void update_RoleNotfound(Integer id, String username, String password, String email, String phone) {
		User user = new User();
		Optional<User> optional = Optional.of(user);
		when(userRepository.findById(id)).thenReturn(optional);		

		UserRequestDTO userRequestDTO = new UserRequestDTO();
		userRequestDTO.setId(id);
		userRequestDTO.setUsername(username);
		userRequestDTO.setPassword(password);
		userRequestDTO.setEmail(email);
		userRequestDTO.setPhone(phone);
	
		String roleValid = "ADMIN";
		String roleInvalid = "HAHO";
		String[] roleNames = {roleValid, roleInvalid};
		
		Role role = new Role();
		Optional<Role> roleOpt = Optional.of(role);
		when(roleRepository.findOneByName(roleValid)).thenReturn(roleOpt);
					
		Optional<Role> roleEmptyOpt = Optional.empty();
		when(roleRepository.findOneByName(roleInvalid)).thenReturn(roleEmptyOpt);

		String expected = "Not found role " + roleInvalid;
		NotImplementedException ex = Assertions.assertThrows(NotImplementedException.class, () -> userService.update(userRequestDTO, roleNames));
		String actual = ex.getMessage();
		
		Assertions.assertEquals(expected, actual);
		
		verify(roleRepository, times(1)).findOneByName(roleValid);
		verify(roleRepository, times(1)).findOneByName(roleInvalid);
	}

	
	@DisplayName("Update user success")
	@ParameterizedTest
	@CsvSource(value = {
			"1,username1,password1,robocon321n@gmail.com,035412418"
	}, delimiter = ',')
	public void update_Success(Integer id, String username, String password, String email, String phone) {
		User user = new User();
		Optional<User> optional = Optional.of(user);
		when(userRepository.findById(id)).thenReturn(optional);		
		UserRequestDTO userRequestDTO = new UserRequestDTO();
		userRequestDTO.setId(id);
		userRequestDTO.setUsername(username);
		userRequestDTO.setPassword(password);
		userRequestDTO.setEmail(email);
		userRequestDTO.setPhone(phone);

		BeanUtils.copyProperties(userRequestDTO, user);
				
		UserResponseDTO expected = ReflectionTestUtils.invokeMethod(userService, "entityToDTO", user);	


		String[] roleNames = {"ADMIN", "CLIENT"};
		for(String roleName: roleNames) {
			Role role = new Role();
			role.setName(roleName);
			Optional<Role> roleOpt = Optional.of(role);
			when(roleRepository.findOneByName(roleName)).thenReturn(roleOpt);
		}
				
		when(userRepository.save(Mockito.any(User.class)))
        .thenAnswer(i -> user);
		
		UserResponseDTO actual = userService.update(userRequestDTO, roleNames);
	
		Assertions.assertEquals(expected, actual);
	}


	
	@DisplayName("Update user with password null or blank")
	@ParameterizedTest
	@NullSource
	@ValueSource(strings = {""})
	public void update_PasswordNull(String password) {
		UserRequestDTO userRequestDTO = new UserRequestDTO();
		userRequestDTO.setId(1);
		userRequestDTO.setUsername("robocon321");
		userRequestDTO.setPassword(password);
		userRequestDTO.setEmail("robocon321n@gmail.com");
		userRequestDTO.setPhone("0354828384");


		User user = new User();
		
		BeanUtils.copyProperties(userRequestDTO, user);
		user.setPassword("hiphopneverdie123");

		Optional<User> optional = Optional.of(user);
		when(userRepository.findById(1)).thenReturn(optional);		
				
		UserResponseDTO expected = ReflectionTestUtils.invokeMethod(userService, "entityToDTO", user);	


		String[] roleNames = {"ADMIN", "CLIENT"};
		for(String roleName: roleNames) {
			Role role = new Role();
			role.setName(roleName);
			Optional<Role> roleOpt = Optional.of(role);
			when(roleRepository.findOneByName(roleName)).thenReturn(roleOpt);
		}
				
		when(userRepository.save(Mockito.any(User.class)))
        .thenAnswer(i -> user);
		
		UserResponseDTO actual = userService.update(userRequestDTO, roleNames);
	
		Assertions.assertEquals(expected, actual);
		
	}

	
	@DisplayName("Filter with one parameter")
	@ParameterizedTest
	@CsvSource(value = {
			"0|10|id__desc|OR_id|1,2,3", 
			"0|10|id_asc|AND_username|robocon321", 
			"0|10|id__asc|BT_id|3,7", 
			"0|10|id__asc|LIKE_username|a",
			"0|10|id__desc|IN_id|1,2,3"
	}, delimiter = '|')
	public void filterWithOneParam(Integer page, Integer size, String sort, String keyEntry, String valueEntry) {
		Map<String, String> map = new HashMap<>();
		map.put(keyEntry, valueEntry);
		
		List<User> users = new ArrayList<>();
		Page<User> pageUser = new PageImpl<>(users);
				
		when(userRepository.findAll(Mockito.any(Specification.class), Mockito.any(Pageable.class)))
        .thenAnswer(i -> pageUser);
		
		Page<UserResponseDTO> actual = userService.getPage(size, page, sort, map);
		
		Page<UserResponseDTO> expected = ReflectionTestUtils.invokeMethod(userService, "pageEntityToDTO", pageUser);
		Assertions.assertEquals(actual, expected);
		
	}

	@DisplayName("Filter with two parameters")
	@ParameterizedTest
	@CsvSource(value = {
			"0|10|id__desc|LIKE_username|1,2,3|OR_id|1,2,3", 
			"0|10|id_asc|OR_id|1,2,3|AND_username|robocon321", 
			"0|10|id__asc|OR_id|1,2,3|BT_id|3,7", 
			"0|10|id__asc|OR_id|1,2,3|LIKE_username|a",
			"0|10|id__desc|OR_id|1,2,3|IN_id|1,2,3"
	}, delimiter = '|')
	public void filterWithTwoParam(Integer page, Integer size, String sort, 
			String keyEntry1, String valueEntry1,
			String keyEntry2, String valueEntry2) {
		Map<String, String> map = new LinkedHashMap<>();
		map.put(keyEntry1, valueEntry1);
		map.put(keyEntry2, valueEntry2);
		
		List<User> users = new ArrayList<>();
		Page<User> pageUser = new PageImpl<>(users);
				
		when(userRepository.findAll(Mockito.any(Specification.class), Mockito.any(Pageable.class)))
        .thenAnswer(i -> pageUser);
		
		Page<UserResponseDTO> actual = userService.getPage(size, page, sort, map);
		
		Page<UserResponseDTO> expected = ReflectionTestUtils.invokeMethod(userService, "pageEntityToDTO", pageUser);
		Assertions.assertEquals(actual, expected);
		
	}

	@DisplayName("Load user by id not found")
	@ParameterizedTest
	@ValueSource(ints = {1})
	public void loadUserById_Notfound(int userId) {
		String expected = userId + " not found";
		NotfoundException ex = Assertions.assertThrows(
				NotfoundException.class, 
				() -> ReflectionTestUtils.invokeMethod(userService, "loadUserById", userId));
		String actual = ex.getMessage();
		Assertions.assertEquals(expected, actual);
	}
	
	@DisplayName("Load user by id found")
	@ParameterizedTest
	@ValueSource(ints = {1})
	public void loadUserById_Found(int userId) {
		User user = new User();
		Optional<User> userOpt = Optional.of(user);
		when(userRepository.findOneByIdAndStatus(userId, 1)).thenReturn(userOpt);

		CustomUserDetails actual = ReflectionTestUtils.invokeMethod(userService, "loadUserById", userId);
		CustomUserDetails expected = new CustomUserDetails(user);
		
		Assertions.assertEquals(expected, actual);		
	}

	@DisplayName("Find user by id not found")
	@ParameterizedTest
	@ValueSource(ints = {1})
	public void findUserById_Notfound(int userId) {
		User user = new User();
		String expected = "Not found your id";
		BadRequestException ex = Assertions.assertThrows(
				BadRequestException.class, 
				() -> userService.findById(userId));
		String actual = ex.getMessage();
		Assertions.assertEquals(expected, actual);
	}

	
	@DisplayName("Find user by id found")
	@ParameterizedTest
	@ValueSource(ints = {1})
	public void findUserById_Found(int userId) {
		User user = new User();
		Optional<User> userOpt = Optional.of(user);
		when(userRepository.findById(userId)).thenReturn(userOpt);

		UserResponseDTO expected = ReflectionTestUtils.invokeMethod(userService, "entityToDTO", user);
		UserResponseDTO actual = userService.findById(userId);
		
		Assertions.assertEquals(expected, actual);		
	}

}
