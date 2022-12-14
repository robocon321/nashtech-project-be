package com.robocon321.demo.entity;

import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="`transaction`")
@EntityListeners(AuditingEntityListener.class)
public class Transaction {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(nullable = false)
	private Double productPrice;

	@Column(nullable = false)
	private Double shipPrice;

	@Column(nullable = false)
	private Integer status;
	
	@CreatedDate
	@Column(nullable = false)
	private Timestamp createTime;
	
	@OneToOne(targetEntity = Shipping.class)
	@JoinColumn(name = "shipping_id", nullable = false)
	private Shipping shipping;
	
	@OneToOne(targetEntity = Cart.class)
	@JoinColumn(name = "cart_id", nullable = false)
	private Cart cart;
}
