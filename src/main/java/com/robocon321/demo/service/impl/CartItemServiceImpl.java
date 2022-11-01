package com.robocon321.demo.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.robocon321.demo.dto.request.CartItemRequestDTO;
import com.robocon321.demo.dto.response.CartItemResponseDTO;
import com.robocon321.demo.dto.response.ProductResponseDTO;
import com.robocon321.demo.entity.Cart;
import com.robocon321.demo.entity.CartItem;
import com.robocon321.demo.entity.Product;
import com.robocon321.demo.entity.User;
import com.robocon321.demo.exception.BadRequestException;
import com.robocon321.demo.exception.NotfoundException;
import com.robocon321.demo.repository.CartItemRepository;
import com.robocon321.demo.repository.CartRepository;
import com.robocon321.demo.repository.ProductRepository;
import com.robocon321.demo.security.CustomUserDetails;
import com.robocon321.demo.service.CartItemService;

@Service
public class CartItemServiceImpl implements CartItemService {
	@Autowired
	private CartItemRepository cartItemRepository;
	
	@Autowired
	private CartRepository cartRepository;
	
	@Autowired
	private ProductRepository productRepository;

	@Override
	public CartItemResponseDTO save(CartItemRequestDTO requestDTO) {
		if(requestDTO.getId() != null) throw new BadRequestException("Id must be null");
		Cart cart = getCurrentCart();
		
		List<CartItem> cartItems = cart.getCartItems();
		Optional<CartItem> cartItemOpt = cartItemRepository.findOneByCart_IdAndProduct_Id(cart.getId(), requestDTO.getProductId());
		
		CartItem cartItem;

		if(cartItemOpt.isEmpty()) {
			cartItem = new CartItem();
			cartItem.setQuantity(requestDTO.getQuantity());
			cartItem.setCart(cart);
		} else {
			cartItem = cartItemOpt.get();
			cartItem.setQuantity(requestDTO.getQuantity());
		}
		
		Optional<Product> productOpt = productRepository.findOneByIdAndStatus(requestDTO.getProductId(), 1);

		Product product;
		
		if(productOpt.isEmpty()) throw new NotfoundException("Not found product ID: " + requestDTO.getProductId());

		else {
			product = productOpt.get();
			if(product.getStock() < requestDTO.getQuantity()) {
				System.out.println(10);
				throw new BadRequestException("Your quantity bigger our stock");
			}
		}
		System.out.println(20);
		
		cartItem.setProduct(product);
		cartItem = cartItemRepository.save(cartItem);

		CartItemResponseDTO cartItemResponseDTO = new CartItemResponseDTO();
		BeanUtils.copyProperties(cartItem, cartItemResponseDTO);
		ProductResponseDTO productResponseDTO = new ProductResponseDTO();
		BeanUtils.copyProperties(product, productResponseDTO);
		cartItemResponseDTO.setProduct(productResponseDTO);
		
		return cartItemResponseDTO;
	}
	
	private Cart getCurrentCart() {
		CustomUserDetails customUserDetails = (CustomUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		User user = customUserDetails.getUser();
		Optional<Cart> cartOpt = cartRepository.findOneByUser_IdAndStatus(user.getId(), 1);
		Cart cart;
		if(cartOpt.isEmpty()) {
			cart = cartRepository.save(new Cart(null, 1, null, null, user, null, null));
		} else {
			cart = cartOpt.get();
		}
		return cart;
	}


	@Override
	public boolean delete(List<Integer> ids) {
		try {
			cartItemRepository.deleteAllById(ids);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			throw new BadRequestException("Delete fail!");
		}
	}

	@Override
	public CartItemResponseDTO update(CartItemRequestDTO cartItemRequestDTO) {
		if(cartItemRequestDTO.getId() == null) throw new BadRequestException("Your cart item id not found");
		Optional<CartItem> cartItemOpt = cartItemRepository.findById(cartItemRequestDTO.getId());
		if(cartItemOpt.isPresent()) {
			CartItem cartItem = cartItemOpt.get();
			Cart cart = cartItem.getCart();
			CustomUserDetails customUserDetails = (CustomUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			User user = customUserDetails.getUser();
			if(user.getId() != cart.getUser().getId()) {
				throw new BadRequestException("You're not allowed to update this cart item");
			} else {
				Product product = cartItem.getProduct();

				if(product.getStock() < cartItemRequestDTO.getQuantity()) throw new BadRequestException("Quantity must be less or equal stock");

				BeanUtils.copyProperties(cartItemRequestDTO, cartItem);
				cartItem = cartItemRepository.save(cartItem);
				
				CartItemResponseDTO cartItemResponseDTO = new CartItemResponseDTO();
				BeanUtils.copyProperties(cartItem, cartItemResponseDTO);
				

				ProductResponseDTO productResponseDTO = new ProductResponseDTO();
				BeanUtils.copyProperties(product, productResponseDTO);
				
				cartItemResponseDTO.setProduct(productResponseDTO);
				
				return cartItemResponseDTO;
			}
		} else {
			throw new NotfoundException("Not found your cart item");
		}
	}

}
