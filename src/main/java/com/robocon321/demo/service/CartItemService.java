package com.robocon321.demo.service;

import java.util.List;

import com.robocon321.demo.dto.request.CartItemRequestDTO;
import com.robocon321.demo.dto.response.CartItemResponseDTO;

public interface CartItemService {
	public CartItemResponseDTO save(CartItemRequestDTO requestDTO);
	public boolean delete(List<Integer> ids);
	public CartItemResponseDTO update(CartItemRequestDTO cartItemRequestDTO);
}
