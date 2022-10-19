package com.robocon321.demo.dto;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CategoryDTO {
	private Integer id;
	private String name;
	private String image;
	private String description;
	private String slug;
	private String metaTitle;
	private String metaKeyword;
	private String metaDescription;
	private Integer status;
	private Timestamp createTime;
	private Timestamp modTime;
	private CategoryDTO parent;
	private List<CategoryDTO> childs = new ArrayList<>();
	private List<ProductDTO> productDTOs = new ArrayList<>();
}
