package com.robocon321.demo.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.robocon321.demo.dto.request.CartItemRequestDTO;
import com.robocon321.demo.dto.response.ResponseObject;
import com.robocon321.demo.service.CartItemService;

@RestController
@RequestMapping("/cart_items")
public class CartItemController {
	@Autowired
	private CartItemService cartItemService;
	
	@PostMapping
	public ResponseEntity save(@Valid @RequestBody CartItemRequestDTO cartItemRequestDTO) {
		ResponseObject response = new ResponseObject<>();
		response.setData(cartItemService.save(cartItemRequestDTO));
		response.setMessage("Success");
		response.setSuccess(true);
		return ResponseEntity.ok(response);
	}
	
	@DeleteMapping
	public ResponseEntity delete(@RequestBody List<Integer> ids) {
		ResponseObject response = new ResponseObject<>();
		response.setData(cartItemService.delete(ids));
		response.setMessage("Success");
		response.setSuccess(true);
		return ResponseEntity.ok(response);
	}

	@PutMapping
	public ResponseEntity update(@Valid @RequestBody CartItemRequestDTO cartItemRequestDTO) {
		ResponseObject response = new ResponseObject<>();
		response.setData(cartItemService.update(cartItemRequestDTO));
		response.setMessage("Success");
		response.setSuccess(true);
		return ResponseEntity.ok(response);
	}
}
