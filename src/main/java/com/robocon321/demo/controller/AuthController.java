package com.robocon321.demo.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.robocon321.demo.dto.request.ForgotPasswordRequestDTO;
import com.robocon321.demo.dto.request.LoginDTO;
import com.robocon321.demo.dto.request.UserRequestDTO;
import com.robocon321.demo.dto.response.ResponseObject;
import com.robocon321.demo.dto.response.UserResponseDTO;
import com.robocon321.demo.exception.BadRequestException;
import com.robocon321.demo.jwt.JwtTokenProvider;
import com.robocon321.demo.security.CustomUserDetails;
import com.robocon321.demo.service.UserService;

@RestController
@RequestMapping("/")
public class AuthController {
	@Autowired
	AuthenticationManager authenticationManager;

	@Autowired
	JwtTokenProvider jwtTokenProvider;
	
	@Autowired
	UserService userService;
	
	@PostMapping("/sign-in")
	public ResponseEntity<ResponseObject> signIn(@Valid @RequestBody LoginDTO dto) {
		ResponseObject response = new ResponseObject<>();
		Authentication authentication = authenticationManager
				.authenticate(new UsernamePasswordAuthenticationToken(dto.getUsername(),
						dto.getPassword()));
		SecurityContextHolder.getContext().setAuthentication(authentication);

		String jwt = jwtTokenProvider.generateToken((CustomUserDetails) authentication.getPrincipal());
		
		response.setData(jwt);
		response.setMessage("Success");
		response.setSuccess(true);
		
		return ResponseEntity.ok(response);

	}

	@GetMapping("/sign-in")
	public ResponseEntity<ResponseObject> loadAccount() {
		ResponseObject response = new ResponseObject<>();
		
		CustomUserDetails userDetails = (CustomUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		UserResponseDTO dto = userService.findUserByIdWithRole(userDetails.getUser().getId(), 1);
		if(dto == null) {
			throw new BadRequestException("Not found user");
		} else {
			response.setData(dto);
			response.setMessage("Success");
			response.setSuccess(true);
			return ResponseEntity.status(HttpStatus.OK).body(response);
		}
		
	}
	
	@PostMapping("/sign-up")
	public ResponseEntity<ResponseObject> register(@Valid @RequestBody UserRequestDTO userResponseDTO, BindingResult result) {
		ResponseObject response = new ResponseObject<>();
		// insert role to user
		String[] roles = {"CLIENT"};
		UserResponseDTO data = userService.save(userResponseDTO, roles);
		response.setSuccess(true);
		response.setMessage("Success!");
		response.setData(data);
		return ResponseEntity.status(HttpStatus.OK).body(response);
	}

	@PostMapping("/forgot-password")
	public ResponseEntity<ResponseObject> resetPassword(@RequestBody @Valid ForgotPasswordRequestDTO dto) throws UnsupportedEncodingException {
		ResponseObject response = new ResponseObject<>();
		response.setSuccess(userService.resetPassword(dto.getEmail()));
		response.setMessage("Open your email to take new password!");
		return ResponseEntity.status(HttpStatus.OK).body(response);
		
	}
}
