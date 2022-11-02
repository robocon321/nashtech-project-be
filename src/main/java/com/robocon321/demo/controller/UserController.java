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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.robocon321.demo.dto.request.UserRequestDTO;
import com.robocon321.demo.dto.response.ResponseObject;
import com.robocon321.demo.dto.response.UserResponseDTO;
import com.robocon321.demo.service.UserService;

@RestController
@RequestMapping("/users")
public class UserController {
	@Autowired
	private UserService userService;
	
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
				request.remove("size");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.setSuccess(false);			
			return ResponseEntity.status(HttpStatus.FORBIDDEN).body(response);
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
			response.setSuccess(false);
			return ResponseEntity.status(HttpStatus.FORBIDDEN).body(response);
		}

		Page<UserResponseDTO> pageResponse = userService.getPage(size, page, sort, request);
		response.setData(pageResponse);
		response.setMessage("Successful!");
		response.setSuccess(true);

		return ResponseEntity.status(HttpStatus.OK).body(response);

	}

	@DeleteMapping
	public ResponseEntity<ResponseObject> delete(@RequestBody List<Integer> ids) {
		ResponseObject response = new ResponseObject<>();
		response.setSuccess(userService.delete(ids));
		response.setMessage("Success");
		return ResponseEntity.ok(response);
	}

	@PostMapping
	public ResponseEntity<ResponseObject> post(@RequestBody @Valid UserRequestDTO userRequestDTO) {
		ResponseObject response = new ResponseObject<>();
		String[] roles = {"ADMIN"};
		response.setData(userService.insertUser(userRequestDTO, roles));
		response.setMessage("Success");
		response.setSuccess(true);
		return ResponseEntity.ok(response);
	}
}
