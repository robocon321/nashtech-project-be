package com.robocon321.demo.entity;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
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
@Table(name = "cart")
public class Cart {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(nullable = false)
	private Integer status;
	
	@CreatedDate
	@Column(nullable = false)
	private Timestamp createTime;

	@LastModifiedDate
	@Column(nullable = false)
	private Timestamp modTime;

	@ManyToOne(targetEntity = User.class)
	@JoinColumn(name = "user_id", nullable = false)
	private User user;
	
	@OneToMany(
			cascade = CascadeType.ALL, 
			mappedBy = "cart", 
			targetEntity = CartItem.class)
	private List<CartItem> cartItems;

	@OneToOne(
			cascade = CascadeType.ALL,
			mappedBy = "cart", 
			targetEntity = Order.class)
	private Order order;
}