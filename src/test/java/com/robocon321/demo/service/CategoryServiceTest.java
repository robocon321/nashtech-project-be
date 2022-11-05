package com.robocon321.demo.service;

import static org.mockito.Mockito.doThrow;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import org.junit.jupiter.params.provider.ValueSource;
import org.mockito.Mockito;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.test.util.ReflectionTestUtils;

import com.robocon321.demo.SpringBootEcommerceApplication;
import com.robocon321.demo.dto.request.CategoryRequestDTO;
import com.robocon321.demo.dto.response.CategoryResponseDTO;
import com.robocon321.demo.entity.Category;
import com.robocon321.demo.exception.BadRequestException;
import com.robocon321.demo.exception.ConflictException;
import com.robocon321.demo.repository.CategoryRepository;

@TestMethodOrder(value = MethodOrderer.DisplayName.class)
@SpringBootTest(classes= SpringBootEcommerceApplication.class)
public class CategoryServiceTest {
	@MockBean
	private CategoryRepository categoryRepository;
	
	@Autowired
	private CategoryService categoryService;
	
	@DisplayName("Filter with one parameter")
	@ParameterizedTest
	@CsvSource(value = {
			"0|10|id__desc|OR_id|1,2,3", 
			"0|10|id_asc|AND_name|robocon321", 
			"0|10|id__asc|BT_id|3,7", 
			"0|10|id__asc|LIKE_name|a",
			"0|10|id__desc|IN_id|1,2,3"
	}, delimiter = '|')
	public void filterWithOneParam(Integer page, Integer size, String sort, String keyEntry, String valueEntry) {
		Map<String, String> map = new HashMap<>();
		map.put(keyEntry, valueEntry);
		
		List<Category> categories = new ArrayList<>();
		categories.add(new Category());
		categories.add(new Category());
		Page<Category> pageCategory = new PageImpl<>(categories);
				
		when(categoryRepository.findAll(Mockito.any(Specification.class), Mockito.any(Pageable.class)))
        .thenAnswer(i -> pageCategory);
		
		Page<CategoryResponseDTO> actual = categoryService.getPage(size, page, sort, map);
		
		Page<CategoryResponseDTO> expected = ReflectionTestUtils.invokeMethod(categoryService, "pageEntityToDTO", pageCategory);
		Assertions.assertEquals(actual, expected);
		
	}

	@DisplayName("Filter with two parameters")
	@ParameterizedTest
	@CsvSource(value = {
			"0|10|id__desc|LIKE_name|1,2,3|OR_id|1,2,3", 
			"0|10|id_asc|OR_id|1,2,3|AND_name|robocon321", 
			"0|10|id__asc|OR_id|1,2,3|BT_id|3,7", 
			"0|10|id__asc|OR_id|1,2,3|LIKE_name|a",
			"0|10|id__desc|OR_id|1,2,3|IN_id|1,2,3"
	}, delimiter = '|')
	public void filterWithTwoParam(Integer page, Integer size, String sort, 
			String keyEntry1, String valueEntry1,
			String keyEntry2, String valueEntry2) {
		Map<String, String> map = new LinkedHashMap<>();
		map.put(keyEntry1, valueEntry1);
		map.put(keyEntry2, valueEntry2);
		
		List<Category> categorys = new ArrayList<>();
		Page<Category> pageCategory = new PageImpl<>(categorys);
				
		when(categoryRepository.findAll(Mockito.any(Specification.class), Mockito.any(Pageable.class)))
        .thenAnswer(i -> pageCategory);
		
		Page<CategoryResponseDTO> actual = categoryService.getPage(size, page, sort, map);
		
		Page<CategoryResponseDTO> expected = ReflectionTestUtils.invokeMethod(categoryService, "pageEntityToDTO", pageCategory);
		Assertions.assertEquals(actual, expected);
		
	}

	@DisplayName("Save category with category name already exists")
	@Test
	public void save_NameExist() {		
		CategoryRequestDTO dto = new CategoryRequestDTO();
		dto.setName("Category 1");
		String expected = "Your category name already exists";
		when(categoryRepository.existsByName("Category 1")).thenReturn(true);
		ConflictException ex = Assertions.assertThrows(ConflictException.class, () -> categoryService.save(dto));
		String actual = ex.getMessage();
	}
	
	@DisplayName("Save category with category slug already exists")
	@Test
	public void save_SlugExist() {		
		CategoryRequestDTO dto = new CategoryRequestDTO();
		dto.setName("Category 1");
		dto.setSlug("slug-1");
		String expected = "Your slug already exists";
		when(categoryRepository.existsBySlug(dto.getSlug())).thenReturn(true);
		ConflictException ex = Assertions.assertThrows(ConflictException.class, () -> categoryService.save(dto));
		String actual = ex.getMessage();
	}

	@DisplayName("Save category success")
	@Test
	public void save_Success() {
		CategoryRequestDTO dto = new CategoryRequestDTO();
		dto.setName("Category 1");
		dto.setSlug("slug-1");

		Category category = new Category();
		BeanUtils.copyProperties(dto, category);
		when(categoryRepository.save(Mockito.any(Category.class))).thenAnswer(i -> category);
		
		CategoryResponseDTO expected = new CategoryResponseDTO();
		BeanUtils.copyProperties(category, expected);
		
		CategoryResponseDTO actual = categoryService.save(dto);
		Assertions.assertEquals(expected, actual);
	}
	
	@DisplayName("Update category with id null")
	@Test
	public void update_IdNull() {
		CategoryRequestDTO dto = new CategoryRequestDTO();
		dto.setName("Category 1");
		dto.setSlug("slug-1");

		String expected = "Category must contain id";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> categoryService.update(dto));
		String actual = ex.getMessage();
	}

	@DisplayName("Update category with id not found")
	@Test
	public void update_IdNotFound() {
		CategoryRequestDTO dto = new CategoryRequestDTO();
		dto.setId(1);
		dto.setName("Category 1");
		dto.setSlug("slug-1");

		Category category = new Category();
		Optional<Category> categoryOpt = Optional.empty();

		String expected = "Not found this category id";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> categoryService.update(dto));
		String actual = ex.getMessage();
	}

	@DisplayName("Update category with category name already exists")
	@Test
	public void update_NameExist() {		
		CategoryRequestDTO dto = new CategoryRequestDTO();
		dto.setId(1);
		dto.setName("Category 1");
		dto.setSlug("slug-1");

		Category category = new Category();
		Optional<Category> categoryOpt = Optional.of(category);
		when(categoryRepository.findById(dto.getId())).thenReturn(categoryOpt);
		
		String expected = "Your category name already exists";
		when(categoryRepository.existsByNameAndIdNot("Category 1", dto.getId())).thenReturn(true);
		ConflictException ex = Assertions.assertThrows(ConflictException.class, () -> categoryService.update(dto));
		String actual = ex.getMessage();
	}
	
	@DisplayName("Update category with category slug already exists")
	@Test
	public void update_SlugExist() {		
		CategoryRequestDTO dto = new CategoryRequestDTO();
		dto.setId(1);
		dto.setName("Category 1");
		dto.setSlug("slug-1");

		Category category = new Category();
		Optional<Category> categoryOpt = Optional.of(category);
		when(categoryRepository.findById(dto.getId())).thenReturn(categoryOpt);

		String expected = "Your slug already exists";
		when(categoryRepository.existsBySlugAndIdNot(dto.getSlug(), dto.getId())).thenReturn(true);
		ConflictException ex = Assertions.assertThrows(ConflictException.class, () -> categoryService.update(dto));
		String actual = ex.getMessage();
	}


	@DisplayName("Update category success")
	@Test
	public void update_Success() {
		CategoryRequestDTO dto = new CategoryRequestDTO();
		dto.setId(1);
		dto.setName("Category 1");
		dto.setSlug("slug-1");

		Category category = new Category();
		category.setId(dto.getId());
		Optional<Category> categoryOpt = Optional.of(category);
		when(categoryRepository.findById(dto.getId())).thenReturn(categoryOpt);

		BeanUtils.copyProperties(dto, category);
		when(categoryRepository.save(Mockito.any(Category.class))).thenAnswer(i -> category);
		
		CategoryResponseDTO expected = new CategoryResponseDTO();
		BeanUtils.copyProperties(category, expected);
		
		CategoryResponseDTO actual = categoryService.update(dto);
		Assertions.assertEquals(expected, actual);
	}

	@Test
	@DisplayName("Delete category not found")
	public void delete_IdNotFound() {
		Integer[] ids = {1, 2, 3};
		String expected = "Can not delete!";
		
		doThrow(BadRequestException.class).when(categoryRepository).deleteAllById(List.of(ids));;
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> categoryService.delete(List.of(ids)));

		String actual = ex.getMessage();
		Assertions.assertEquals(expected, actual);
	}
	
	@DisplayName("Delete category success")
	@Test
	public void delete_Success() {
		Integer[] ids = {1, 2, 3};
		Assertions.assertDoesNotThrow(() -> categoryService.delete(List.of(ids)));
	}

	
}
