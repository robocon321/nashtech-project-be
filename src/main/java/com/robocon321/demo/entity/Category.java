package com.robocon321.demo.entity;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
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
@Table(name = "category")
public class Category {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(nullable = false, length = 100)
	private String name;
	
	@Column(nullable = false, length = 2048)
	private String image;
	
	private String description;
	
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
	
	@ManyToOne(targetEntity = Category.class)
	@JoinColumn(name = "parent_id")
	private Category parent;
	
	@OneToMany(mappedBy = "parent", targetEntity = Category.class)
	private List<Category> childs;
	
	@ManyToMany(mappedBy = "categories", targetEntity = Product.class)
	private List<Product> products;
}
