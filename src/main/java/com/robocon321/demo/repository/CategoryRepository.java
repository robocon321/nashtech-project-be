package com.robocon321.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.robocon321.demo.entity.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer>{

}
