package com.robocon321.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.robocon321.demo.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>, JpaSpecificationExecutor<User>{
	User findByUsername(String username);
	boolean existsByUsername(String username); 
	boolean existsByEmail(String email); 
	boolean existsByPhone(String phone);
	
	boolean existsByUsernameAndIdNot(String username, Integer id);	
	boolean existsByPhoneAndIdNot(String phone, Integer id);
	boolean existsByEmailAndIdNot(String email, Integer id);
}
