package com.robocon321.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.robocon321.demo.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	User findByUsername(String username);
}
