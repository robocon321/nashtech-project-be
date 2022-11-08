package com.robocon321.demo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.robocon321.demo.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>, JpaSpecificationExecutor<User>{
	Optional<User> findOneByUsername(String username);
	Optional<User> findOneByUsernameAndStatus(String username, Integer status);
	Optional<User> findOneByIdAndStatus(Integer id, Integer status);
	Optional<User> findOneByEmailAndStatus(String email, Integer status);
	Optional<User> findOneByEmail(String email);
	
	boolean existsByUsername(String username); 
	boolean existsByEmail(String email); 
	boolean existsByPhone(String phone);
	
	boolean existsByUsernameAndIdNot(String username, Integer id);	
	boolean existsByPhoneAndIdNot(String phone, Integer id);
	boolean existsByEmailAndIdNot(String email, Integer id);
}
