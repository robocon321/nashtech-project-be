package com.robocon321.demo.entity;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.ToString.Exclude;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "user")
@EntityListeners(AuditingEntityListener.class)
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(unique = true, nullable = false, length = 100)
	private String username;
	
	@Column(nullable = false, length = 100)
	private String password;
	
	@Column(nullable = false, length = 200)
	private String fullname;
	
	@Column(nullable = false, length = 11)
	private String phone;
	
	@Column(nullable = false, length = 255)
	private String email;
	
	@Column(length = 2048)
	private String avatar;
	
	private Timestamp birthday;
	private Boolean sex;
	
	@Column(nullable = false, columnDefinition = "INTEGER DEFAULT 1")
	private Integer status;
	
	@CreatedDate
	@Column(nullable = false)
	private Timestamp createTime;

	@LastModifiedDate
	@Column(nullable = false)
	private Timestamp modTime;
	
	@ManyToMany(
			mappedBy = "users", 
			targetEntity = Role.class)
	private List<Role> roles;
	
	@OneToMany(
			cascade = CascadeType.ALL, 
			mappedBy = "user", 
			targetEntity = Contact.class)
	private List<Contact> contacts;
	
	@OneToMany(
			mappedBy = "user", 
			targetEntity = Cart.class, 
			cascade = CascadeType.ALL)
	private List<Cart> carts;
	
	@OneToMany(
			mappedBy = "user", 
			targetEntity = Rating.class)
	private List<Rating> ratings;
}
