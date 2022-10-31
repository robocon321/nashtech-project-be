package com.robocon321.demo.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.robocon321.demo.dto.request.CartRequestDTO;
import com.robocon321.demo.dto.response.CartItemResponseDTO;
import com.robocon321.demo.dto.response.CartResponseDTO;
import com.robocon321.demo.dto.response.ProductResponseDTO;
import com.robocon321.demo.entity.Cart;
import com.robocon321.demo.entity.CartItem;
import com.robocon321.demo.entity.Product;
import com.robocon321.demo.entity.User;
import com.robocon321.demo.repository.CartRepository;
import com.robocon321.demo.security.CustomUserDetails;
import com.robocon321.demo.service.CartService;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartRepository cartRepository;

	@Override
	public CartResponseDTO getWithCartItem_Product() {
		CustomUserDetails customUserDetails = (CustomUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		User user = customUserDetails.getUser();
		Optional<Cart> cartOpt = cartRepository.findOneByUser_IdAndStatus(user.getId(), 1);
		Cart cart;
		if(cartOpt.isEmpty()) {
			cart = cartRepository.save(new Cart(null, 1, null, null, user, null, null));
			CartResponseDTO cartResponseDTO = new CartResponseDTO();
			BeanUtils.copyProperties(cart, cartResponseDTO);
			return cartResponseDTO;
		} else {
			cart = cartOpt.get();
		}
		
		CartResponseDTO cartResponseDTO = new CartResponseDTO();
		BeanUtils.copyProperties(cart, cartResponseDTO);
		
		List<CartItemResponseDTO> cartItemResponseDTOs = new ArrayList<>();
		
		for(CartItem cartItem: cart.getCartItems()) {
			CartItemResponseDTO cartItemResponseDTO = new CartItemResponseDTO();
			BeanUtils.copyProperties(cartItem, cartItemResponseDTO);
			
			ProductResponseDTO productResponseDTO = new ProductResponseDTO();
			Product product = cartItem.getProduct();
			BeanUtils.copyProperties(product, productResponseDTO);
			cartItemResponseDTO.setProduct(productResponseDTO);
			cartItemResponseDTOs.add(cartItemResponseDTO);
		}
		
		cartResponseDTO.setCartItems(cartItemResponseDTOs);
		
		
		
		return cartResponseDTO;
	}
	

	@Override
	public CartResponseDTO save(CartRequestDTO requestDTO) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
