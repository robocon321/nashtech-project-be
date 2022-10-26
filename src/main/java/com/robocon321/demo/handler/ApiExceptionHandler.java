package com.robocon321.demo.handler;

import org.springframework.http.HttpStatus;
import org.springframework.validation.BindException;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.context.request.WebRequest;

import com.robocon321.demo.dto.ResponseObject;
import com.robocon321.demo.exception.BadRequestException;
import com.robocon321.demo.exception.ConflictException;
import com.robocon321.demo.exception.NotImplementedException;
import com.robocon321.demo.exception.NotfoundException;

@RestControllerAdvice
public class ApiExceptionHandler {
	// status 400
	
	@ExceptionHandler(BadRequestException.class)
	@ResponseStatus(value = HttpStatus.BAD_REQUEST)
	public ResponseObject badRequestExceptionHandler(Exception ex, WebRequest request) {
		return new ResponseObject(false, ex.getMessage(), null);
	}

	
	@ExceptionHandler(ConflictException.class)
	@ResponseStatus(value = HttpStatus.CONFLICT)
	public ResponseObject conflictExceptionHandler(Exception ex, WebRequest request) {
		return new ResponseObject(false, ex.getMessage(), null);
	}

	@ExceptionHandler(NotfoundException.class)
	@ResponseStatus(value = HttpStatus.NOT_FOUND)
	public ResponseObject notFoundExceptionHandler(Exception ex, WebRequest request) {
		return new ResponseObject(false, ex.getMessage(), null);
	}
	
	@ExceptionHandler(MethodArgumentNotValidException.class)
	@ResponseStatus(value = HttpStatus.BAD_REQUEST)
	public ResponseObject argumentNotValidExceptionHandler(MethodArgumentNotValidException ex, WebRequest request) {
		String message = "";
		for (FieldError error : ex.getFieldErrors()) {
			message += error.getDefaultMessage() + ". \n";
		}

		return new ResponseObject(false, message, null);
	}
	
	@ExceptionHandler(BindException.class)
	@ResponseStatus(value = HttpStatus.BAD_REQUEST)
	public ResponseObject argumentNotValidMultipartExceptionHandler(BindException ex, WebRequest request) {
		String message = "";
		for (FieldError error : ex.getFieldErrors()) {
			message += error.getDefaultMessage() + ". \n";
		}

		return new ResponseObject(false, message, null);
	}
	// Status 500
	
	@ExceptionHandler(NotImplementedException.class)
	@ResponseStatus(value = HttpStatus.NOT_IMPLEMENTED)
	public ResponseObject notImplementedExceptionHandler(Exception ex, WebRequest request) {
		return new ResponseObject(false, ex.getMessage(), null);
	}	
	
	
}
