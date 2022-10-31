package com.robocon321.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.robocon321.demo.dto.response.ResponseObject;
import com.robocon321.demo.service.CartService;

@RestController
@RequestMapping("/carts")
public class CartController {
	@Autowired
	private CartService cartService;
	
	@GetMapping("/cart_item/product")
	public ResponseEntity get() {
		ResponseObject response = new ResponseObject<>();
		response.setData(cartService.getWithCartItem_Product());
		response.setSuccess(true);
		response.setMessage("");
		return ResponseEntity.ok(response);
	}
}
