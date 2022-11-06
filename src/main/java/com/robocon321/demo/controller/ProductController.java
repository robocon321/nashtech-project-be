package com.robocon321.demo.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.robocon321.demo.dto.request.ProductRequestDTO;
import com.robocon321.demo.dto.response.ProductResponseDTO;
import com.robocon321.demo.dto.response.ResponseObject;
import com.robocon321.demo.exception.BadRequestException;
import com.robocon321.demo.service.ProductService;

@RestController
@RequestMapping("/products")
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@GetMapping
	public ResponseEntity<ResponseObject> get(@RequestParam Map<String, String> request) {
		String sort = "";
		Integer page = 0;
		Integer size = 10;

		ResponseObject response = new ResponseObject<>();

		if (request.containsKey("sort")) {
			sort = request.get("sort");
			request.remove("sort");
		}

		try {
			if (request.containsKey("size")) {
				size = Integer.parseInt(request.get("size"));
				if(size < 0) size = 10;
				request.remove("size");
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new BadRequestException("Size must be a number");
		}

		try {

			if (request.containsKey("page")) {
				page = Integer.parseInt(request.get("page"));
				if (page < 0)
					page = 0;

				request.remove("page");
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new BadRequestException("Page must be a number");
		}

		Page<ProductResponseDTO> pageResponse = productService.getPage(size, page, sort, request);
		response.setData(pageResponse);
		response.setMessage("Successful!");
		response.setSuccess(true);

		return ResponseEntity.status(HttpStatus.OK).body(response);

	}

	@GetMapping("category/{slug}")
	public ResponseEntity<ResponseObject> getBySlugWithCategory(@PathVariable("slug") String slug) {
		ResponseObject response = new ResponseObject<>();
		response.setData(productService.getBySlugWithCategory(slug));
		response.setMessage("Success");
		response.setSuccess(true);
		return ResponseEntity.ok(response);
	}

	@GetMapping("category/product_image/{slug}")
	public ResponseEntity<ResponseObject> getBySlugWithCategory_ProductImage(@PathVariable("slug") String slug) {
		ResponseObject response = new ResponseObject<>();
		response.setData(productService.getBySlugWithCategory_ProductImage(slug));
		response.setMessage("Success");
		response.setSuccess(true);
		return ResponseEntity.ok(response);
	}
	
	@DeleteMapping
	public ResponseEntity<ResponseObject> delete(@RequestBody List<Integer> ids) {
		ResponseObject response = new ResponseObject<>();
		response.setSuccess(productService.delete(ids));
		response.setMessage("Success");
		return ResponseEntity.ok(response);
	}

	@PostMapping(consumes = {"multipart/form-data"})
	public ResponseEntity<ResponseObject> post(@Valid @ModelAttribute ProductRequestDTO productRequestDTO) {
		ResponseObject response = new ResponseObject<>();
		response.setData(productService.save(productRequestDTO));
		response.setMessage("Success");
		response.setSuccess(true);
		return ResponseEntity.ok(response);
	}
	
	@PutMapping(consumes = {"multipart/form-data"})
	public ResponseEntity<ResponseObject> put(@Valid @ModelAttribute ProductRequestDTO productRequestDTO) {
		ResponseObject response = new ResponseObject<>();
		response.setData(productService.update(productRequestDTO));
		response.setMessage("Success");
		response.setSuccess(true);
		return ResponseEntity.ok(response);
	}

}
