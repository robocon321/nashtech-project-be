package com.robocon321.demo.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.robocon321.demo.dto.request.ContactRequestDTO;
import com.robocon321.demo.dto.response.ResponseObject;
import com.robocon321.demo.service.ContactService;

@RestController
@RequestMapping("/contacts")
public class ContactController {
	@Autowired
	private ContactService contactService;
	
	@GetMapping
	public ResponseEntity get() {
		ResponseObject response = new ResponseObject<>();
		response.setData(contactService.get());
		response.setMessage("Success");
		response.setSuccess(true);
		return ResponseEntity.ok(response);		
	}
	
	@PostMapping
	public ResponseEntity post(@RequestBody @Valid ContactRequestDTO contactRequestDTO) {
		ResponseObject response = new ResponseObject<>();
		response.setData(contactService.save(contactRequestDTO));
		response.setMessage("Success");
		response.setSuccess(true);
		return ResponseEntity.ok(response);
	}
}
