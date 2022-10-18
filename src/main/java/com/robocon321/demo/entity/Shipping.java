package com.robocon321.demo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "shipping")
@EntityListeners(AuditingEntityListener.class)
public class Shipping {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(nullable = false, length = 200)
	private String fullname;
	
	@Column(nullable = false, length = 11)
	private String phone;
	
	@Column(nullable = false, length = 255)
	private String email;

	@Column(nullable = false, length = 40)
	private String province;
	
	@Column(nullable = false, length = 40)
	private String district;
	
	@Column(nullable = false, length = 40)
	private String ward;
	
	@Column(nullable = false, length = 255)
	private String detail;
	
	@OneToOne(
			mappedBy = "shipping", 
			targetEntity = Order.class)
	private Order order;
}
