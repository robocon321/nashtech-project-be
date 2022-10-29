package com.robocon321.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.robocon321.demo.dto.response.ResponseObject;
import com.robocon321.demo.service.ProductImageService;

@RestController
@RequestMapping("/product_images")
public class ProductImageController {
	@Autowired
	private ProductImageService productImageService;
	
	@GetMapping
	public ResponseEntity<ResponseObject> getByProductId(@RequestParam Integer id) {
		ResponseObject response = new ResponseObject<>();
		response.setData(productImageService.getByProductId(id));
		response.setSuccess(true);
		response.setMessage("Success");
		return ResponseEntity.ok(response);
	}
	
}
