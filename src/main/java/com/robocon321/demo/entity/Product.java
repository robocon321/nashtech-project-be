package com.robocon321.demo.entity;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "`product`")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(nullable = false, length = 100)
	private String name;
	
	@Column(nullable = false)
	private Double realPrice;

	@Column(nullable = false)
	private Double sellPrice;

	@Column(nullable = false, length = 512)
	private String description;

	private String fullDescription;
	
	@Column(nullable = false)
	private Integer stock;
	
	@Column(nullable = false)
	private Double width;
	
	@Column(nullable = false)
	private Double length;
	
	@Column(nullable = false)
	private Double height;
	
	@Column(nullable = false)
	private Double weight;
	
	@Column(nullable = false, length = 100, unique = true)
	private String slug;

	@Column(length = 100)
	private String metaTitle;
	
	@Column(length = 300)
	private String metaKeyword;

	@Column(length = 500)
	private String metaDescription;

	@Column(nullable = false)
	private Integer status;
	
	@CreatedDate
	@Column(nullable = false)
	private Timestamp createTime;

	@LastModifiedDate
	@Column(nullable = false)
	private Timestamp modTime;
	
	@ManyToMany(targetEntity = Category.class)
	@JoinTable(name = "`category_product`", joinColumns = @JoinColumn(name = "product_id", nullable = false), inverseJoinColumns = @JoinColumn(name = "category_id", nullable = false))
	private List<Category> categories = new ArrayList<>();
	
	@OneToMany(mappedBy = "product", targetEntity = ProductImage.class, cascade = CascadeType.ALL)
	private List<ProductImage> images = new ArrayList<>();
	
	@OneToMany(
			cascade = CascadeType.ALL, 
			mappedBy = "product", 
			targetEntity = CartItem.class)
	private List<CartItem> cartItems = new ArrayList<>();
	
	@OneToMany(
			mappedBy = "product", 
			targetEntity = Rating.class)
	private List<Rating> ratings = new ArrayList<>();

}
