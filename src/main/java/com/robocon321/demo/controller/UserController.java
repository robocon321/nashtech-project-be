package com.robocon321.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.robocon321.demo.dto.ResponseObject;
import com.robocon321.demo.entity.Role;
import com.robocon321.demo.repository.RoleRepository;
import com.robocon321.demo.repository.UserRepository;

@RestController
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private RoleRepository roleRepository;
	
	@GetMapping
	public ResponseEntity<ResponseObject> get() {
		ResponseObject response = new ResponseObject<>();
		response.setSuccess(true);
		response.setData("Hala");
		userRepository.deleteById(1);
		return ResponseEntity.status(HttpStatus.OK).body(response);
	}
	
	
}
