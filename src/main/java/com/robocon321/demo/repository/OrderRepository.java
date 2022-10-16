package com.robocon321.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.robocon321.demo.entity.Order;

public interface OrderRepository extends JpaRepository<Order, Integer>{

}
