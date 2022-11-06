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
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.robocon321.demo.dto.request.CategoryRequestDTO;
import com.robocon321.demo.dto.response.CategoryResponseDTO;
import com.robocon321.demo.handler.ApiExceptionHandler;
import com.robocon321.demo.service.CategoryService;

@AutoConfigureMockMvc
@SpringBootTest
@Transactional
public class CategoryControllerTest {
	public static final MediaType APPLICATION_JSON_UTF8 = MediaType.APPLICATION_JSON;

	@Autowired
	private MockMvc mockMvc;

	@Mock
	private CategoryService categoryService;

	@InjectMocks
	private CategoryController categoryController;

	@Autowired
	private ObjectMapper mapper;

	@BeforeEach
	public void setup() {
		mockMvc = MockMvcBuilders.standaloneSetup(categoryController).setControllerAdvice(new ApiExceptionHandler())
				.build();
	}

	@AfterEach
	public void finish() {
	}

	@DisplayName("Get category page with page or size incorrect format")
	@ParameterizedTest
	@CsvSource(value = { "a,b", "1,b", "a,1" }, delimiter = ',')
	public void get_PageOrSizeIncorrectFormat(String page, String size) throws Exception {
		MultiValueMap<String, String> request = new LinkedMultiValueMap<>();
		request.add("page", page);
		request.add("size", size);
		request.add("sort", "id__desc");

		mockMvc.perform(MockMvcRequestBuilders.get("/categories").params(request))
				.andExpect(status().is(403));
	}

	@DisplayName("Get category page success")
	@Test
	public void get_Success() throws Exception {
		when(categoryService.getPage(Mockito.anyInt(), Mockito.anyInt(), Mockito.anyString(), Mockito.any(Map.class)))
				.thenReturn(null);

		MultiValueMap<String, String> request = new LinkedMultiValueMap<>();
		request.add("page", "-10");
		request.add("size", "-10");
		request.add("sort", "id__desc");

		mockMvc.perform(MockMvcRequestBuilders.get("/categories").params(request))
				.andExpect(status().isOk());
	}

	@DisplayName("Delete categories success")
	@Test
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void delete_Success() throws Exception {
		when(categoryService.delete(Mockito.any())).thenReturn(true);
		mockMvc.perform(MockMvcRequestBuilders.delete("/categories").contentType(MediaType.APPLICATION_JSON)
				.content(mapper.writeValueAsString(List.of(1, 2, 3)))).andExpect(status().isOk());
	}
	
	@DisplayName("Save category with request invalid")
	@Test
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void post_RequestInvalid() throws Exception {
		CategoryRequestDTO categoryRequestDTO = new CategoryRequestDTO();

		mockMvc.perform(MockMvcRequestBuilders.post("/categories").contentType(MediaType.APPLICATION_JSON)
				.content(mapper.writeValueAsString(categoryRequestDTO))).andExpect(status().is(400));
	}

	@DisplayName("Save category success")
	@Test
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void post_Success() throws Exception {
		CategoryRequestDTO categoryRequestDTO = new CategoryRequestDTO();
		categoryRequestDTO.setName("Category 1");
		categoryRequestDTO.setSlug("slug-1");
		
		when(categoryService.save(categoryRequestDTO)).thenReturn(new CategoryResponseDTO());
		mockMvc.perform(MockMvcRequestBuilders.post("/categories").contentType(MediaType.APPLICATION_JSON)
				.content(mapper.writeValueAsString(categoryRequestDTO))).andExpect(status().isOk());
	}



	@DisplayName("Update category with request invalid")
	@Test
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void update_RequestInvalid() throws Exception {
		CategoryRequestDTO categoryRequestDTO = new CategoryRequestDTO();

		mockMvc.perform(MockMvcRequestBuilders.put("/categories").contentType(MediaType.APPLICATION_JSON)
				.content(mapper.writeValueAsString(categoryRequestDTO))).andExpect(status().is(400));
	}

	@DisplayName("Update category success")
	@Test
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void update_Success() throws Exception {
		CategoryRequestDTO categoryRequestDTO = new CategoryRequestDTO();
		categoryRequestDTO.setId(1);
		categoryRequestDTO.setName("Category 1");
		categoryRequestDTO.setSlug("slug-1");
		
		when(categoryService.save(categoryRequestDTO)).thenReturn(new CategoryResponseDTO());
		mockMvc.perform(MockMvcRequestBuilders.put("/categories").contentType(MediaType.APPLICATION_JSON)
				.content(mapper.writeValueAsString(categoryRequestDTO))).andExpect(status().isOk());
	}}
