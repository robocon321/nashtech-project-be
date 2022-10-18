package com.robocon321.demo.dto;

import java.sql.Timestamp;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductDTO {
	private Integer id;
	private String name;
	private Double realPrice;
	private Double sellPrice;
	private String description;
	private String fullDescription;
	private Integer stock;
	private Double width;
	private Double length;
	private Double height;
	private Double weight;
	private String slug;
	private String metaTitle;
	private String metaKeyword;
	private String metaDescription;
	private Integer status;
	private Timestamp createTime;
	private Timestamp modTime;
	private List<CategoryDTO> categoryDTOs;
	private List<ProductImageDTO> images;
	private List<CartItemDTO> cartItemDTOs;
	private List<RatingDTO> ratingDTOs;

}
