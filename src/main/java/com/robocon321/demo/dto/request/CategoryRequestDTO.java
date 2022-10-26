package com.robocon321.demo.dto.request;

import java.sql.Timestamp;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.robocon321.demo.type.VisibleType;
import com.robocon321.demo.util.ValidatePattern;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CategoryRequestDTO {
	private Integer id;
	
	@NotBlank(message = "Name not blank")
	@Size(max = 100, message = "Name less 100 letters")
	private String name;
	
	@Size(max = 2048, message = "URL image less 2048 letters")
	private String image;
	
	@Size(max = 255, message = "Description less 255 letters")
	private String description;
	
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
	private CategoryRequestDTO parent;

}
