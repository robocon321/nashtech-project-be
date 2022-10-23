package com.robocon321.demo.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.context.request.WebRequest;

import com.robocon321.demo.dto.ResponseObject;

public class BadRequestException extends RuntimeException {

	public BadRequestException(String message) {
		super(message);
	}
	
}
