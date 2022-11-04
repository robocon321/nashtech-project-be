package com.robocon321.demo.dto.response;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.robocon321.demo.type.VisibleType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CategoryResponseDTO {
	private Integer id;
	private String name;
	private String image;
	private String description;
	private String slug;
	private String metaTitle;
	private String metaKeyword;
	private String metaDescription;
//	private VisibleType visibleType;
	private Integer status;
	private Timestamp createTime;
	private Timestamp modTime;
	private Integer totalProduct;
	private CategoryResponseDTO parent;
	private List<CategoryResponseDTO> childs = new ArrayList<>();
	private List<ProductResponseDTO> products = new ArrayList<>();

}
