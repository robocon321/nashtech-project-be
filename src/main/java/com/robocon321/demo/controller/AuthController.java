package com.robocon321.demo.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.robocon321.demo.dto.LoginDTO;
import com.robocon321.demo.dto.ResponseObject;
import com.robocon321.demo.dto.RoleDTO;
import com.robocon321.demo.dto.UserDTO;
import com.robocon321.demo.entity.User;
import com.robocon321.demo.jwt.JwtTokenProvider;
import com.robocon321.demo.security.CustomUserDetails;
import com.robocon321.demo.service.UserService;
import com.robocon321.demo.security.CustomUserDetails;

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
	public ResponseEntity<ResponseObject> signIn(@Valid @RequestBody LoginDTO dto, BindingResult result) {
		ResponseObject response = new ResponseObject<>();
		if(result.hasErrors()) {
			String message = "";
			for (ObjectError error : result.getAllErrors()) {
				message += error.getDefaultMessage() + ". \n";
			}
			response.setMessage(message.trim());
			response.setSuccess(false);
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
		} else {
			try {
				Authentication authentication = authenticationManager
						.authenticate(new UsernamePasswordAuthenticationToken(dto.getUsername(),
								dto.getPassword()));
				SecurityContextHolder.getContext().setAuthentication(authentication);

				String jwt = jwtTokenProvider.generateToken((CustomUserDetails) authentication.getPrincipal());
				
				response.setData(jwt);
				response.setMessage("Success");
				response.setSuccess(true);
				
				return ResponseEntity.ok(response);
			} catch (Exception ex) {
				response.setMessage("Username or password is incorrect!");
				response.setSuccess(false);
				return ResponseEntity.status(HttpStatus.FORBIDDEN).body(response);
			}
		}
	}

	@GetMapping("/sign-in")
	public ResponseEntity<ResponseObject> loadAccount() {
		ResponseObject response = new ResponseObject<>();
		
		CustomUserDetails userDetails = (CustomUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		UserDTO dto = userService.findUserByIdWithRole(userDetails.getUser().getId());
		if(dto == null) {
			response.setMessage("Not found user");
			response.setSuccess(false);
			return ResponseEntity.status(HttpStatus.FORBIDDEN).body(response);
		} else {
			response.setData(dto);
			response.setMessage("Success");
			response.setSuccess(true);
			return ResponseEntity.status(HttpStatus.OK).body(response);
		}
		
	}
	
	@PostMapping("/sign-up")
	public ResponseEntity<ResponseObject> register(@Valid @RequestBody UserDTO userDTO, BindingResult result) {
		ResponseObject response = new ResponseObject<>();
		if(result.hasErrors()) {
			String message = "";
			for (ObjectError error : result.getAllErrors()) {
				message += error.getDefaultMessage() + ". \n";
			}
			response.setMessage(message.trim());
			response.setSuccess(false);
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
		} else {
			try {
				RoleDTO roleDTO = new RoleDTO();
				roleDTO.setId(1);
				userDTO.setRoleDTOs(List.of(roleDTO));
				UserDTO data = userService.insertUser(userDTO);
				response.setSuccess(true);
				response.setMessage("Success!");
				response.setData(data);
				return ResponseEntity.status(HttpStatus.OK).body(response);
			} catch (Exception ex) {
				response.setMessage(ex.getMessage());
				response.setSuccess(false);
				return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
			}
		}
	}

	
}
