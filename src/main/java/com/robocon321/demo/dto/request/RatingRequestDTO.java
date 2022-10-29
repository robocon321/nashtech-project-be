package com.robocon321.demo.dto.request;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RatingRequestDTO {
	private Integer id;
	@NotNull(message = "Star not null")
	@Max(value = 5, message = "Max value star is 5")
	@Min(value = 1, message = "Min value star is 1")
	private Integer star;
	
	@NotBlank(message = "Content not blank")
	private String content;
	
	@NotNull(message = "Product Id not null")
	private Integer productId;
}
