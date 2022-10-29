package com.robocon321.demo.service;

import java.util.Map;

import org.springframework.data.domain.Page;

import com.robocon321.demo.dto.request.RatingRequestDTO;
import com.robocon321.demo.dto.response.RatingResponseDTO;

public interface RatingService {
	public Page<RatingResponseDTO> getPage(Integer size, Integer page, String sort, Map<String, String> filter);
	public Page<RatingResponseDTO> getPageWithUser(Integer size, Integer page, String sort, Map<String, String> filter);
	public RatingResponseDTO save(RatingRequestDTO ratingRequestDTO);
}
