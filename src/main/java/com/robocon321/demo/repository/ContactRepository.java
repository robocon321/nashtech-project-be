package com.robocon321.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.robocon321.demo.dto.response.ContactResponseDTO;
import com.robocon321.demo.entity.Contact;

public interface ContactRepository extends JpaRepository<Contact, Integer>{
	public List<Contact> findByUser_Id(Integer id);
}
