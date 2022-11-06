package com.robocon321.demo.service;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.io.ByteArrayInputStream;
import java.io.IOException;
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
import org.springframework.web.multipart.MultipartFile;

import com.robocon321.demo.SpringBootEcommerceApplication;
import com.robocon321.demo.dto.request.ProductRequestDTO;
import com.robocon321.demo.dto.response.CategoryResponseDTO;
import com.robocon321.demo.dto.response.ProductImageResponseDTO;
import com.robocon321.demo.dto.response.ProductResponseDTO;
import com.robocon321.demo.entity.Category;
import com.robocon321.demo.entity.Product;
import com.robocon321.demo.entity.ProductImage;
import com.robocon321.demo.exception.BadRequestException;
import com.robocon321.demo.exception.ConflictException;
import com.robocon321.demo.exception.NotfoundException;
import com.robocon321.demo.repository.ProductRepository;

@TestMethodOrder(value = MethodOrderer.DisplayName.class)
@SpringBootTest(classes= SpringBootEcommerceApplication.class)
public class ProductServiceTest {
	@MockBean
	private ProductRepository productRepository;
	
	@Autowired
	private ProductService productService;
	
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
		
		List<Product> categories = new ArrayList<>();
		categories.add(new Product());
		categories.add(new Product());
		Page<Product> pageProduct = new PageImpl<>(categories);
				
		when(productRepository.findAll(Mockito.any(Specification.class), Mockito.any(Pageable.class)))
        .thenAnswer(i -> pageProduct);
		
		Page<ProductResponseDTO> actual = productService.getPage(size, page, sort, map);
		
		Page<ProductResponseDTO> expected = ReflectionTestUtils.invokeMethod(productService, "pageEntityToDTO", pageProduct);
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
		
		List<Product> products = new ArrayList<>();
		Page<Product> pageProduct = new PageImpl<>(products);
				
		when(productRepository.findAll(Mockito.any(Specification.class), Mockito.any(Pageable.class)))
        .thenAnswer(i -> pageProduct);
		
		Page<ProductResponseDTO> actual = productService.getPage(size, page, sort, map);
		
		Page<ProductResponseDTO> expected = ReflectionTestUtils.invokeMethod(productService, "pageEntityToDTO", pageProduct);
		Assertions.assertEquals(actual, expected);
		
	}

	@DisplayName("Save product with thumbnail null")
	@Test
	public void save_ThumbnailNull() {
		ProductRequestDTO dto = new ProductRequestDTO();
		String expected = "Thumbnail not null";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> productService.save(dto));
		String actual = ex.getMessage();
		Assertions.assertEquals(actual, expected);		
	}
	
	@DisplayName("Save product with thumbnail incorrect format image")
	@Test
	public void save_ThumbnailIncorrectFormat() {
		ProductRequestDTO dto = new ProductRequestDTO();
		dto.setThumbnail(mock(MultipartFile.class));		
		
		String expected = "Thumbnail incorrect format image";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> productService.save(dto));
		String actual = ex.getMessage();
		Assertions.assertEquals(actual, expected);
	}
	
	@DisplayName("Save product with id not null")
	@Test
	public void save_IdNotNull() {
		ProductRequestDTO dto = new ProductRequestDTO();
		dto.setId(1);
		dto.setThumbnail(mock(MultipartFile.class));		
		when(dto.getThumbnail().getContentType()).thenReturn("image This is a image");
		
		String expected = "Id must be null";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> productService.save(dto));
		String actual = ex.getMessage();
		Assertions.assertEquals(actual, expected);
	}
	
	@DisplayName("Save product with slug already exists")
	@Test
	public void save_SlugAlreadyExist() {
		ProductRequestDTO dto = new ProductRequestDTO();
		dto.setThumbnail(mock(MultipartFile.class));	
		dto.setSlug("product-1");
		when(dto.getThumbnail().getContentType()).thenReturn("image This is a image");
		when(productRepository.existsBySlug(dto.getSlug())).thenReturn(true);
		
		String expected = "Your slug already exists";
		ConflictException ex = Assertions.assertThrows(ConflictException.class, () -> productService.save(dto));
		String actual = ex.getMessage();
		Assertions.assertEquals(actual, expected);
	}
	
	@DisplayName("Save product with gallery image incorrect format")
	@Test
	public void save_GalleryIncorrectFormat() {
		ProductRequestDTO dto = new ProductRequestDTO();
		dto.setThumbnail(mock(MultipartFile.class));	
		dto.setSlug("product-1");
		when(dto.getThumbnail().getContentType()).thenReturn("image This is a image");
	
		List<Integer> categories = new ArrayList<>();
		categories.add(1);
		categories.add(2);
		dto.setCategories(categories);
		
		List<MultipartFile> multipartFiles = new ArrayList<>();
		multipartFiles.add(mock(MultipartFile.class));
		multipartFiles.add(mock(MultipartFile.class));
		dto.setGallery(multipartFiles);
		
		String expected = "Image incorrect format image";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> productService.save(dto));
		String actual = ex.getMessage();
		Assertions.assertEquals(actual, expected);
	}
	
	@DisplayName("Save product success")
	@Test
	public void save_Success() throws IOException {
		Product product = new Product();
		product.setGallery(List.of(new ProductImage()));
		
		when(productRepository.save(product)).thenAnswer(i -> product);
		
		ProductRequestDTO dto = new ProductRequestDTO();
		dto.setThumbnail(mock(MultipartFile.class));	
		when(dto.getThumbnail().getContentType()).thenReturn("image This is a image");
		when(dto.getThumbnail().getInputStream()).thenReturn(new ByteArrayInputStream("test data".getBytes()));
		dto.setSlug("product-1");
	
		List<Integer> categories = new ArrayList<>();
		categories.add(1);
		categories.add(2);
		dto.setCategories(categories);
		
		List<MultipartFile> multipartFiles = new ArrayList<>();
		multipartFiles.add(mock(MultipartFile.class));
		when(multipartFiles.get(0).getContentType()).thenReturn("image This is a image");
		when(multipartFiles.get(0).getInputStream()).thenReturn(new ByteArrayInputStream("test data".getBytes()));
		
		dto.setGallery(multipartFiles);

		ProductResponseDTO expected = new ProductResponseDTO();
		
		when(productRepository.save(Mockito.any(Product.class))).thenAnswer(i -> product);
		BeanUtils.copyProperties(product, expected);

		List<ProductImageResponseDTO> productImageDTOs = new ArrayList<>();

		for(ProductImage productImage : product.getGallery()) {
			ProductImageResponseDTO productImageDTO = new ProductImageResponseDTO();
			BeanUtils.copyProperties(productImage, productImageDTO);
			productImageDTOs.add(productImageDTO);
		}

		expected.setGallery(productImageDTOs);

		ProductResponseDTO actual = productService.save(dto);

		Assertions.assertEquals(expected, actual);
	}




	
	@DisplayName("Update product with id null")
	@Test
	public void update_IdNull() {
		ProductRequestDTO dto = new ProductRequestDTO();		
		String expected = "Id not found";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> productService.update(dto));
		String actual = ex.getMessage();
		Assertions.assertEquals(actual, expected);
	}


	@DisplayName("Update product with slug already exists")
	@Test
	public void update_SlugAlreadyExist() {
		ProductRequestDTO dto = new ProductRequestDTO();
		dto.setId(1);
		dto.setThumbnail(mock(MultipartFile.class));	
		dto.setSlug("product-1");
		when(dto.getThumbnail().getContentType()).thenReturn("image This is a image");
		when(productRepository.existsBySlugAndIdNot(dto.getSlug(), dto.getId())).thenReturn(true);
		
		String expected = "Your slug already exists";
		ConflictException ex = Assertions.assertThrows(ConflictException.class, () -> productService.update(dto));
		String actual = ex.getMessage();
		Assertions.assertEquals(actual, expected);
	}


	@DisplayName("Update product with id not found")
	@Test
	public void update_IdNotFound() {
		ProductRequestDTO dto = new ProductRequestDTO();
		dto.setId(1);
		Product product = new Product();
		String expected = "Product with this id not found";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> productService.update(dto));
		String actual = ex.getMessage();
		Assertions.assertEquals(expected, actual);
	}

	@DisplayName("Update product with thumbnail incorrect format image") 
	@Test
	public void update_ThumbnailIncorrectFormat() {
		ProductRequestDTO dto = new ProductRequestDTO();
		dto.setId(1);
		Product product = new Product();
		Optional<Product> productOpt = Optional.of(product);
		when(productRepository.findById(dto.getId())).thenReturn(productOpt);
		dto.setThumbnail(mock(MultipartFile.class));	
		String expected = "Thumbnail incorrect format image";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> productService.update(dto));
		String actual = ex.getMessage();
		Assertions.assertEquals(expected, actual);
	}


	@DisplayName("Update product with gallery incorrect format image") 
	@Test
	public void update_GalleryIncorrectFormat() {
		ProductRequestDTO dto = new ProductRequestDTO();
		dto.setId(1);
		Product product = new Product();
		Optional<Product> productOpt = Optional.of(product);
		when(productRepository.findById(dto.getId())).thenReturn(productOpt);
		dto.setGallery(List.of(mock(MultipartFile.class)));	
		String expected = "Image incorrect format image";
		BadRequestException ex = Assertions.assertThrows(BadRequestException.class, () -> productService.update(dto));
		String actual = ex.getMessage();
		Assertions.assertEquals(expected, actual);
	}
	
	@DisplayName("Update product success include update gallery") 
	@Test
	public void update_IncludeUpdateGallerySuccess() throws IOException {
		// optional

		ProductRequestDTO dto = new ProductRequestDTO();
		dto.setId(1);
		Product product = new Product();
		product.setGallery(List.of(new ProductImage()));
		Optional<Product> productOpt = Optional.of(product);
		when(productRepository.findById(dto.getId())).thenReturn(productOpt);
		
		// categories
		
		List<Integer> categories = new ArrayList<>();
		categories.add(1);
		categories.add(2);
		dto.setCategories(categories);

		// thumbnail
		
		dto.setThumbnail(mock(MultipartFile.class));	
		when(dto.getThumbnail().getContentType()).thenReturn("image This is a image");
		when(dto.getThumbnail().getInputStream()).thenReturn(new ByteArrayInputStream("test data".getBytes()));

		// gallery
		
		dto.setGallery(List.of(mock(MultipartFile.class)));			
		List<MultipartFile> multipartFiles = new ArrayList<>();
		multipartFiles.add(mock(MultipartFile.class));
		when(multipartFiles.get(0).getContentType()).thenReturn("image This is a image");
		when(multipartFiles.get(0).getInputStream()).thenReturn(new ByteArrayInputStream("test data".getBytes()));
		
		dto.setGallery(multipartFiles);


		// test
		
		ProductResponseDTO expected = new ProductResponseDTO();
		
		when(productRepository.save(Mockito.any(Product.class))).thenAnswer(i -> product);
		BeanUtils.copyProperties(product, expected);

		List<ProductImageResponseDTO> productImageDTOs = new ArrayList<>();

		for(ProductImage productImage : product.getGallery()) {
			ProductImageResponseDTO productImageDTO = new ProductImageResponseDTO();
			BeanUtils.copyProperties(productImage, productImageDTO);
			productImageDTOs.add(productImageDTO);
		}

		expected.setGallery(productImageDTOs);

		ProductResponseDTO actual = productService.update(dto);

		Assertions.assertEquals(expected, actual);
	}

	@DisplayName("Update product success no include update gallery") 
	@Test
	public void update_NoIncludeUpdateGallerySuccess() throws IOException {
		// optional

		ProductRequestDTO dto = new ProductRequestDTO();
		dto.setId(1);
		Product product = new Product();
		Optional<Product> productOpt = Optional.of(product);
		when(productRepository.findById(dto.getId())).thenReturn(productOpt);
		
		// categories
		
		List<Integer> categories = new ArrayList<>();
		categories.add(1);
		categories.add(2);
		dto.setCategories(categories);

		// thumbnail
		
		dto.setThumbnail(mock(MultipartFile.class));	
		when(dto.getThumbnail().getContentType()).thenReturn("image This is a image");
		when(dto.getThumbnail().getInputStream()).thenReturn(new ByteArrayInputStream("test data".getBytes()));

		// test
		
		ProductResponseDTO expected = new ProductResponseDTO();
		
		when(productRepository.save(Mockito.any(Product.class))).thenAnswer(i -> product);
		BeanUtils.copyProperties(product, expected);

		ProductResponseDTO actual = productService.update(dto);

		Assertions.assertEquals(expected, actual);
	}

	@DisplayName("Find product by slug with category not found")
	@ParameterizedTest
	@ValueSource(strings = "slug-1")
	public void getBySlugWithCategory_NotFound(String slug) {
		String expected = "Not found your product";
		NotfoundException ex = Assertions.assertThrows(NotfoundException.class, () -> productService.getBySlugWithCategory(slug));
		String actual = ex.getMessage();
		Assertions.assertEquals(expected, actual);
	}


	@DisplayName("Find product by slug with category success")
	@ParameterizedTest
	@ValueSource(strings = "slug-1")
	public void getBySlugWithCategory_Success(String slug) {
		Product product = new Product();
		product.setCategories(List.of(new Category()));
		Optional<Product> productOpt = Optional.of(product);
		when(productRepository.findOneBySlug(slug)).thenReturn(productOpt);
		
		ProductResponseDTO expected = new ProductResponseDTO();
		BeanUtils.copyProperties(product, expected);
		
		List<Category> categories = product.getCategories();
		List<CategoryResponseDTO> categoryResponseDTOs = new ArrayList<>();
		for(Category category : categories) {
			CategoryResponseDTO categoryResponseDTO = new CategoryResponseDTO();
			BeanUtils.copyProperties(category, categoryResponseDTO);
			categoryResponseDTOs.add(categoryResponseDTO);
		}
		
		expected.setCategories(categoryResponseDTOs);
		
		ProductResponseDTO actual = productService.getBySlugWithCategory(slug);
		Assertions.assertEquals(expected, actual);
	}
	
	@DisplayName("Find product by slug with category and product image not found")
	@ParameterizedTest
	@ValueSource(strings = "slug-1")
	public void getBySlugWithCategoryAndImage_NotFound(String slug) {
		String expected = "Not found your product";
		NotfoundException ex = Assertions.assertThrows(NotfoundException.class, () -> productService.getBySlugWithCategory_ProductImage(slug));
		String actual = ex.getMessage();
		Assertions.assertEquals(expected, actual);
	}


	@DisplayName("Find product by slug with category and product image success")
	@ParameterizedTest
	@ValueSource(strings = "slug-1")
	public void getBySlugWithCategoryAndProductImage_Success(String slug) {
		Product product = new Product();		
		product.setCategories(List.of(new Category()));
		product.setGallery(List.of(new ProductImage()));
		Optional<Product> productOpt = Optional.of(product);
		when(productRepository.findOneBySlugAndStatus(slug, 1)).thenReturn(productOpt);
		
		ProductResponseDTO expected = new ProductResponseDTO();
		BeanUtils.copyProperties(product, expected);
		
		List<Category> categories = product.getCategories();
		List<CategoryResponseDTO> categoryResponseDTOs = new ArrayList<>();
		for(Category category : categories) {
			CategoryResponseDTO categoryResponseDTO = new CategoryResponseDTO();
			BeanUtils.copyProperties(category, categoryResponseDTO);
			categoryResponseDTOs.add(categoryResponseDTO);
		}
		
		expected.setCategories(categoryResponseDTOs);
		
		List<ProductImage> productImages = product.getGallery();
		
		List<ProductImageResponseDTO> productImageDTOs = productImages.stream().map(item -> {
			ProductImageResponseDTO productImageResponseDTO = new ProductImageResponseDTO();
			BeanUtils.copyProperties(item, productImageResponseDTO);
			return productImageResponseDTO;
		}).toList();
		expected.setGallery(productImageDTOs);

		ProductResponseDTO actual = productService.getBySlugWithCategory_ProductImage(slug);
		Assertions.assertEquals(expected, actual);
	}

}
