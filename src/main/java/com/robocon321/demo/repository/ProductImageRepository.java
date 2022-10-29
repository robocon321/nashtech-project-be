package com.robocon321.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.robocon321.demo.entity.ProductImage;

@Repository
public interface ProductImageRepository extends JpaRepository<ProductImage, Integer>{
	void deleteByProduct_Id(Integer id);
	List<ProductImage> findByProduct_Id(Integer id);
}
