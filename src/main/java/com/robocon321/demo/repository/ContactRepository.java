package com.robocon321.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.robocon321.demo.entity.Contact;

public interface ContactRepository extends JpaRepository<Contact, Integer>{

}
