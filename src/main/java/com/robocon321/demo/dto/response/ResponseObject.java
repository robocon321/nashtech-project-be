package com.robocon321.demo.dto.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ResponseObject<T> {
	private boolean isSuccess;
	private String message;
	private T data;
}
