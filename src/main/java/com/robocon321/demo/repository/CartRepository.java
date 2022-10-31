package com.robocon321.demo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.robocon321.demo.entity.Cart;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer>{
	public Optional<Cart> findOneByUser_IdAndStatus(Integer userId, Integer status);
}
