package com.robocon321.demo.controller;

import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.List;
import java.util.Map;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.robocon321.demo.dto.request.UserRequestDTO;
import com.robocon321.demo.dto.response.UserResponseDTO;
import com.robocon321.demo.handler.ApiExceptionHandler;
import com.robocon321.demo.repository.RoleRepository;
import com.robocon321.demo.repository.UserRepository;
import com.robocon321.demo.service.UserService;

@AutoConfigureMockMvc
@SpringBootTest
@Transactional
public class UserControllerTest {

	public static final MediaType APPLICATION_JSON_UTF8 = MediaType.APPLICATION_JSON;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private RoleRepository roleRepository;

	@Autowired
	private UserDetailsService userDetailsService;

	@Autowired
	private MockMvc mockMvc;

	@Mock
	private UserService userService;

	@InjectMocks
	private UserController userController;

	@Autowired
	private ObjectMapper mapper;

	@BeforeEach
	public void setup() {
		mockMvc = MockMvcBuilders.standaloneSetup(userController).setControllerAdvice(new ApiExceptionHandler())
				.build();
	}

	@AfterEach
	public void finish() {
	}

	@DisplayName("Get user page with page or size incorrect format")
	@ParameterizedTest
	@CsvSource(value = { "a,b", "1,b", "a,1" }, delimiter = ',')
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void get_PageOrSizeIncorrectFormat(String page, String size) throws Exception {
		MultiValueMap<String, String> request = new LinkedMultiValueMap<>();
		request.add("page", page);
		request.add("size", size);
		request.add("sort", "id__desc");

		mockMvc.perform(MockMvcRequestBuilders.get("/users").params(request))
				.andExpect(status().is(403));
	}

	@DisplayName("Get user page success")
	@Test
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void get_Success() throws Exception {
		when(userService.getPage(Mockito.anyInt(), Mockito.anyInt(), Mockito.anyString(), Mockito.any(Map.class)))
				.thenReturn(null);

		MultiValueMap<String, String> request = new LinkedMultiValueMap<>();
		request.add("page", "-10");
		request.add("size", "-10");
		request.add("sort", "id__desc");

		mockMvc.perform(MockMvcRequestBuilders.get("/users").params(request))
				.andExpect(status().isOk());
	}

	@DisplayName("Delete users success")
	@Test
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void delete_Success() throws Exception {
		when(userService.delete(Mockito.any())).thenReturn(true);
		mockMvc.perform(MockMvcRequestBuilders.delete("/users").contentType(MediaType.APPLICATION_JSON)
				.content(mapper.writeValueAsString(List.of(1, 2, 3)))).andExpect(status().isOk());
	}

	@DisplayName("Get user by id success")
	@Test
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void getById_Success() throws Exception {
		mockMvc.perform(MockMvcRequestBuilders.get("/users/{id}", "1")).andExpect(status().isOk());
	}

	@DisplayName("Get user by id invalid")
	@Test
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void getById_IdInvalid() throws Exception {
		mockMvc.perform(MockMvcRequestBuilders.get("/users/{id}", "1a"))
				.andExpect(status().is(HttpStatus.BAD_REQUEST.value()));
	}

	@DisplayName("Save user with request invalid")
	@Test
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void post_RequestInvalid() throws Exception {
		UserRequestDTO userRequestDTO = new UserRequestDTO();
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization",
				"Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxIiwiaWF0IjoxNjY3MDI3ODgzfQ.-QdC7_7KaISDwpbQN8QcuZ12at0DxTqzmmV3z4VwQTg");

		mockMvc.perform(MockMvcRequestBuilders.post("/users").contentType(MediaType.APPLICATION_JSON)
				.content(mapper.writeValueAsString(userRequestDTO))).andExpect(status().is(400));
	}

	@DisplayName("Save user success")
	@Test
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void post_Success() throws Exception {
		UserRequestDTO userRequestDTO = new UserRequestDTO();
		userRequestDTO.setUsername("robocon321");
		userRequestDTO.setEmail("robocon321n@gmail.com");
		userRequestDTO.setPhone("0354512122");
		userRequestDTO.setFullname("Join Guiler");
		userRequestDTO.setPassword("1234567890");
		
		when(userService.save(Mockito.any(), Mockito.any())).thenReturn(new UserResponseDTO());
		mockMvc.perform(MockMvcRequestBuilders.post("/users").contentType(MediaType.APPLICATION_JSON)
				.content(mapper.writeValueAsString(userRequestDTO))).andExpect(status().isOk());
	}
	
	@DisplayName("Update user with request invalid")
	@Test
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void put_RequestInvalid() throws Exception {
		UserRequestDTO userRequestDTO = new UserRequestDTO();

		mockMvc.perform(MockMvcRequestBuilders.post("/users").contentType(MediaType.APPLICATION_JSON)
				.content(mapper.writeValueAsString(userRequestDTO))).andExpect(status().is(400));
	}

	@DisplayName("Update user success")
	@Test
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void put_Success() throws Exception {
		UserRequestDTO userRequestDTO = new UserRequestDTO();
		userRequestDTO.setUsername("robocon321");
		userRequestDTO.setEmail("robocon321n@gmail.com");
		userRequestDTO.setPhone("0354512122");
		userRequestDTO.setFullname("Join Guiler");
		userRequestDTO.setPassword("1234567890");
		
		when(userService.update(Mockito.any(), Mockito.any())).thenReturn(new UserResponseDTO());
		mockMvc.perform(MockMvcRequestBuilders.put("/users").contentType(MediaType.APPLICATION_JSON)
				.content(mapper.writeValueAsString(userRequestDTO))).andExpect(status().isOk());
	}

}
