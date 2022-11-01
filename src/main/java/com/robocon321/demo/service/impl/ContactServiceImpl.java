package com.robocon321.demo.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.robocon321.demo.dto.request.ContactRequestDTO;
import com.robocon321.demo.dto.response.ContactResponseDTO;
import com.robocon321.demo.entity.Contact;
import com.robocon321.demo.entity.User;
import com.robocon321.demo.repository.ContactRepository;
import com.robocon321.demo.security.CustomUserDetails;
import com.robocon321.demo.service.ContactService;

@Service
public class ContactServiceImpl implements ContactService {
	@Autowired
	private ContactRepository contactRepository;

	@Override
	public ContactResponseDTO save(ContactRequestDTO contactRequestDTO) {
		CustomUserDetails customUserDetails = (CustomUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		User user = customUserDetails.getUser();
		Contact contact = new Contact();
		BeanUtils.copyProperties(contactRequestDTO, contact);
		contact.setUser(user);
		contact = contactRepository.save(contact);
		
		ContactResponseDTO dto =  new ContactResponseDTO();
		BeanUtils.copyProperties(contact, dto);
		return dto;
	}

	@Override
	public List<ContactResponseDTO> get() {
		CustomUserDetails customUserDetails = (CustomUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		User user = customUserDetails.getUser();
		List<Contact> contacts = contactRepository.findByUser_Id(user.getId());
		List<ContactResponseDTO> dtos = new ArrayList<>();
		for(Contact contact : contacts) {
			ContactResponseDTO dto = new ContactResponseDTO();
			BeanUtils.copyProperties(contact, dto);
			dtos.add(dto);
		}
		return dtos;
	}
	

}
