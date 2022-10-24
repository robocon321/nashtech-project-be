package com.robocon321.demo.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import com.robocon321.demo.entity.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer>, JpaSpecificationExecutor<Product>{
	boolean existsBySlug(String slug);
	boolean existsBySlugAndIdNot(String slug, Integer id);

	boolean existsByName(String name);
	boolean existsByNameAndIdNot(String name, Integer id);	

}
