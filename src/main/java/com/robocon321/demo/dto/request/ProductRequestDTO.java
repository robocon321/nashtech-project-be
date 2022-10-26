package com.robocon321.demo.dto.request;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

import com.robocon321.demo.type.VisibleType;
import com.robocon321.demo.util.ValidatePattern;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductRequestDTO {
	private Integer id;
	
	@NotBlank(message = "Name not blank")
	@Size(max = 100, message = "Name less 100 letters")
	private String name;
	
	private MultipartFile thumbnail;
	
	@NotNull(message = "Real price not null")
	private Double realPrice;

	@NotNull(message = "Sell price not null")
	private Double sellPrice;
	
	@NotBlank(message = "Description not null")
	@Size(max = 512, message = "Description less 512 letters")
	private String description;
	
	
	private String fullDescription;
	
	@NotNull(message = "Stock not null")
	private Integer stock;
	
	@NotNull(message = "Width not null")
	private Double width;

	@NotNull(message = "Length not null")
	private Double length;
	
	@NotNull(message = "Length not null")
	private Double height;
	
	@NotNull(message = "Weight not null")
	private Double weight;

	@NotBlank(message = "Slug not blank")
	@Pattern(regexp = ValidatePattern.SLUG, message = "Slug incorrect format")
	@Size(max = 100, message = "Slug less 100 letters")
	private String slug;

	@Size(max = 100, message = "Meta title less 100 letters")
	private String metaTitle;

	@Size(max = 300, message = "Meta keyword less 300 letters")
	private String metaKeyword;
	
	@Size(max = 500, message = "Meta description less 500 letters")
	private String metaDescription;

	private VisibleType visibleType;
	private List<Integer> categories = new ArrayList<>();
	private List<MultipartFile> gallery = new ArrayList<>();
}
