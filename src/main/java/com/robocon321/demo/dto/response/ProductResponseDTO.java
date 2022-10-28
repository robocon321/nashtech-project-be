package com.robocon321.demo.dto.response;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.robocon321.demo.dto.CartItemDTO;
import com.robocon321.demo.dto.ProductImageDTO;
import com.robocon321.demo.dto.RatingDTO;
import com.robocon321.demo.type.VisibleType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductResponseDTO {
	private Integer id;
	private String name;
	private String thumbnail;
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
	private VisibleType visibleType;
	private Timestamp createTime;
	private Timestamp modTime;
	
	private Integer order;
	private Double rating;
	private List<CategoryResponseDTO> categories = new ArrayList<>();
	private List<ProductImageDTO> gallery = new ArrayList<>();
	private List<CartItemDTO> cartItems = new ArrayList<>();
	private List<RatingDTO> ratings = new ArrayList<>();

}
