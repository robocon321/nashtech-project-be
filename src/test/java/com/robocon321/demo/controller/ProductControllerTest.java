package com.robocon321.demo.controller;

import static org.mockito.Mockito.mock;
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
import org.springframework.http.ResponseEntity;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.robocon321.demo.dto.request.ProductRequestDTO;
import com.robocon321.demo.dto.request.UserRequestDTO;
import com.robocon321.demo.dto.response.ProductResponseDTO;
import com.robocon321.demo.dto.response.ResponseObject;
import com.robocon321.demo.dto.response.UserResponseDTO;
import com.robocon321.demo.exception.BadRequestException;
import com.robocon321.demo.handler.ApiExceptionHandler;
import com.robocon321.demo.service.ProductService;
import com.robocon321.demo.service.UserService;

@AutoConfigureMockMvc
@SpringBootTest
@Transactional
public class ProductControllerTest {

	public static final MediaType APPLICATION_JSON_UTF8 = MediaType.APPLICATION_JSON;

	@Autowired
	private MockMvc mockMvc;

	@Mock
	private ProductService productService;

	@InjectMocks
	private ProductController productController;

	@Autowired
	private ObjectMapper mapper;

	@BeforeEach
	public void setup() {
		mockMvc = MockMvcBuilders.standaloneSetup(productController).setControllerAdvice(new ApiExceptionHandler())
				.build();
	}

	@AfterEach
	public void finish() {
	}

	@DisplayName("Get product page with page or size incorrect format")
	@ParameterizedTest
	@CsvSource(value = { "a,b", "1,b", "a,1" }, delimiter = ',')
	public void get_PageOrSizeIncorrectFormat(String page, String size) throws Exception {
		MultiValueMap<String, String> request = new LinkedMultiValueMap<>();
		request.add("page", page);
		request.add("size", size);
		request.add("sort", "id__desc");

		mockMvc.perform(MockMvcRequestBuilders.get("/products").params(request))
				.andExpect(status().is(400));
	}

	@DisplayName("Get product page success")
	@Test
	public void get_Success() throws Exception {
		when(productService.getPage(Mockito.anyInt(), Mockito.anyInt(), Mockito.anyString(), Mockito.any(Map.class)))
				.thenReturn(null);

		MultiValueMap<String, String> request = new LinkedMultiValueMap<>();
		request.add("page", "-10");
		request.add("size", "-10");
		request.add("sort", "id__desc");

		mockMvc.perform(MockMvcRequestBuilders.get("/products").params(request))
				.andExpect(status().isOk());
	}

	
	@DisplayName("Get product by slug success with category")
	@Test
	public void getBySlugWithCategory_Success() throws Exception {
		mockMvc.perform(MockMvcRequestBuilders.get("/products/category/{slug}", "category-1")).andExpect(status().isOk());
	}
	
	
	@DisplayName("Get product by slug success with category and product image")
	@Test
	public void getBySlugWithCategoryAndProductImage_Success() throws Exception {
		mockMvc.perform(MockMvcRequestBuilders.get("/products/category/product_image/{slug}", "category-1")).andExpect(status().isOk());
	}

	@DisplayName("Delete products success")
	@Test
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void delete_Success() throws Exception {
		when(productService.delete(Mockito.any())).thenReturn(true);
		mockMvc.perform(MockMvcRequestBuilders.delete("/products").contentType(MediaType.APPLICATION_JSON)
				.content(mapper.writeValueAsString(List.of(1, 2, 3)))).andExpect(status().isOk());
	}
	
	@DisplayName("Save product with request invalid")
	@Test
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void post_RequestInvalid() throws Exception {
		ProductRequestDTO productRequestDTO = new ProductRequestDTO();

		mockMvc.perform(MockMvcRequestBuilders.post("/products").contentType(MediaType.MULTIPART_FORM_DATA)
				.content(mapper.writeValueAsString(productRequestDTO))).andExpect(status().is(400));
	}

	@DisplayName("Save product success")
	@Test
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void post_Success() throws Exception {
		ProductRequestDTO productRequestDTO = new ProductRequestDTO();
		productRequestDTO.setName("Product 1");
		productRequestDTO.setThumbnail(mock(MultipartFile.class));
		productRequestDTO.setHeight(3.0);
		productRequestDTO.setWidth(3.0);
		productRequestDTO.setLength(3.0);
		productRequestDTO.setWeight(3.0);
		productRequestDTO.setStock(3);
		productRequestDTO.setCategories(List.of(1,2,3));
		productRequestDTO.setDescription("Haha");
		productRequestDTO.setSlug("product-1");
		productRequestDTO.setRealPrice(10000.0);
		productRequestDTO.setSellPrice(10000.0);
		
		when(productService.save(Mockito.any())).thenReturn(new ProductResponseDTO());
		mockMvc.perform(MockMvcRequestBuilders.post("/products").contentType(MediaType.MULTIPART_FORM_DATA)
				.flashAttr("productRequestDTO", productRequestDTO)).andExpect(status().isOk());
	}

	@DisplayName("Update product with request invalid")
	@Test
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void put_RequestInvalid() throws Exception {
		ProductRequestDTO productRequestDTO = new ProductRequestDTO();

		mockMvc.perform(MockMvcRequestBuilders.put("/products").contentType(MediaType.MULTIPART_FORM_DATA)
				.content(mapper.writeValueAsString(productRequestDTO))).andExpect(status().is(400));
	}

	@DisplayName("Updat3e product success")
	@Test
	@WithMockUser(value="aladin1212",roles={"ADMIN"})
	public void put_Success() throws Exception {
		ProductRequestDTO productRequestDTO = new ProductRequestDTO();
		productRequestDTO.setId(1);
		productRequestDTO.setName("Product 1");
		productRequestDTO.setThumbnail(mock(MultipartFile.class));
		productRequestDTO.setHeight(3.0);
		productRequestDTO.setWidth(3.0);
		productRequestDTO.setLength(3.0);
		productRequestDTO.setWeight(3.0);
		productRequestDTO.setStock(3);
		productRequestDTO.setCategories(List.of(1,2,3));
		productRequestDTO.setDescription("Haha");
		productRequestDTO.setSlug("product-1");
		productRequestDTO.setRealPrice(10000.0);
		productRequestDTO.setSellPrice(10000.0);
		
		when(productService.update(Mockito.any())).thenReturn(new ProductResponseDTO());
		mockMvc.perform(MockMvcRequestBuilders.put("/products").contentType(MediaType.MULTIPART_FORM_DATA)
				.flashAttr("productRequestDTO", productRequestDTO)).andExpect(status().isOk());
	}
}
