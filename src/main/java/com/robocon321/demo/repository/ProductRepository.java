package com.robocon321.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.robocon321.demo.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Integer>{

}
