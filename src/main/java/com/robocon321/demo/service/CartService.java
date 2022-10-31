package com.robocon321.demo.service;

import com.robocon321.demo.dto.request.CartRequestDTO;
import com.robocon321.demo.dto.response.CartResponseDTO;

public interface CartService {
	public CartResponseDTO getWithCartItem_Product();
	public CartResponseDTO save(CartRequestDTO requestDTO);
}
