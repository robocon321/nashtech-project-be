package com.robocon321.demo.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.robocon321.demo.entity.Role;

public interface RoleRepository extends JpaRepository<Role, Integer>{
	Optional<Role> findOneByName(String name);
}
