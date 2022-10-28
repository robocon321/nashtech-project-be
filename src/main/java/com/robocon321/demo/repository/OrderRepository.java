package com.robocon321.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.robocon321.demo.entity.Transaction;

public interface OrderRepository extends JpaRepository<Transaction, Integer>{

}
