package com.robocon321.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.robocon321.demo.entity.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer>, JpaSpecificationExecutor<Category>{
	boolean existsBySlug(String slug);
	boolean existsBySlugAndIdNot(String slug, Integer id);

	boolean existsByName(String name);
	boolean existsByNameAndIdNot(String name, Integer id);
}
