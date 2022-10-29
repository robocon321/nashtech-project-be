package com.robocon321.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.robocon321.demo.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	User findByUsername(String username);
	boolean existsByUsername(String username); 
	boolean existsByEmail(String email); 
	boolean existsByPhone(String phone);
	
}
