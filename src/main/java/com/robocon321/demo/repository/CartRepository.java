package com.robocon321.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.robocon321.demo.entity.Cart;

public interface CartRepository extends JpaRepository<Cart, Integer>{

}
