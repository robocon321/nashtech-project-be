package com.robocon321.demo.service;

import java.util.List;

import com.robocon321.demo.dto.request.ContactRequestDTO;
import com.robocon321.demo.dto.response.ContactResponseDTO;

public interface ContactService {
	public ContactResponseDTO save(ContactRequestDTO contactRequestDTO);
	public List<ContactResponseDTO> get();
}
