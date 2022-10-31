package com.robocon321.demo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.robocon321.demo.entity.CartItem;

public interface CartItemRepository extends JpaRepository<CartItem, Integer>{
	public Optional<CartItem> findOneByCart_IdAndProduct_Id(Integer cartId, Integer productId);
}
