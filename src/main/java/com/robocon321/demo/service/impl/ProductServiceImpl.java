package com.robocon321.demo.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.robocon321.demo.dto.FilterCriteria;
import com.robocon321.demo.dto.request.ProductRequestDTO;
import com.robocon321.demo.dto.response.CategoryResponseDTO;
import com.robocon321.demo.dto.response.ProductImageResponseDTO;
import com.robocon321.demo.dto.response.ProductResponseDTO;
import com.robocon321.demo.entity.Category;
import com.robocon321.demo.entity.Product;
import com.robocon321.demo.entity.ProductImage;
import com.robocon321.demo.exception.BadRequestException;
import com.robocon321.demo.exception.ConflictException;
import com.robocon321.demo.exception.NotfoundException;
import com.robocon321.demo.repository.ProductImageRepository;
import com.robocon321.demo.repository.ProductRepository;
import com.robocon321.demo.service.ProductService;
import com.robocon321.demo.specs.ProductSpecification;
import com.robocon321.demo.type.FilterOperateType;
import com.robocon321.demo.type.VisibleType;
import com.robocon321.demo.util.FileUploadUtil;
import com.robocon321.demo.util.PathContant;
import com.robocon321.demo.util.SaveFileHelper;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private ProductImageRepository productImageRepository;	

	@Override
	public Page<ProductResponseDTO> getPage(Integer size, Integer page, String sort,
			Map<String, String> filter) {
		Specification<Product> spec = null;
		for(Map.Entry<String, String> entry : filter.entrySet()) {	
			String keyEntry = entry.getKey();
			String valueEntry = entry.getValue();
			
			if(keyEntry.startsWith("OR")) {
				String field = keyEntry.substring(3);
				String[] values = valueEntry.split(",");
				for(int i = 0; i < values.length; i ++) {
					String value = values[i];
					Specification<Product> specType = ProductSpecification.filter(new FilterCriteria(field, FilterOperateType.EQUALS, value));
					if(spec == null) {
						spec = specType;
					} else {
						if(i == 0) spec = spec.and(specType);
						else spec = spec.or(specType);
					}
				}
			} else if(keyEntry.startsWith("BT")) {
				String field = keyEntry.substring(3);
				String[] values = valueEntry.split(",");
				if(values.length == 2) {
					Specification<Product> specTypeGreater = ProductSpecification.filter(new FilterCriteria(field, FilterOperateType.GREATER, values[0]));
					Specification<Product> specTypeLess = ProductSpecification.filter(new FilterCriteria(field, FilterOperateType.LESS, values[1]));
					if(spec == null) {
						spec = specTypeGreater.and(specTypeLess);
					} else {
						spec = spec.and(specTypeGreater.and(specTypeLess));						
					}
				}
			} else if(keyEntry.startsWith("AND")) {
				String field = keyEntry.substring(4);
				String[] values = valueEntry.split(",");
				for(String value: values) {
					Specification<Product> specType = ProductSpecification.filter(new FilterCriteria(field, FilterOperateType.EQUALS, value));
					if(spec == null) {
						spec = specType;
					} else {
						spec = spec.and(specType);
					}
				}
			} else if(keyEntry.startsWith("LIKE")) {
				String field = keyEntry.substring(5);

				if(spec == null) {
					spec = ProductSpecification.filter(new FilterCriteria(field, FilterOperateType.LIKE, valueEntry));
				} else {
					spec = spec.and(ProductSpecification.filter(new FilterCriteria(field, FilterOperateType.LIKE, valueEntry)));
				}
			} 
			else if(keyEntry.startsWith("IN")) {
				String field = keyEntry.substring(3);
				if(spec == null) {
					spec = ProductSpecification.filter(new FilterCriteria(field, FilterOperateType.IN, valueEntry));
				} else {
					spec = spec.and(ProductSpecification.filter(new FilterCriteria(field, FilterOperateType.IN, valueEntry)));
				}
				
			}
			else {
				continue;								
			}
		}
		
		String[] sorts = sort.split("__");
		String sortName;
		String sortType;
		if(sorts.length == 2) {
			sortName = sorts[0];
			sortType = sorts[1];
		} else {
			sortName = "id";
			sortType = "asc";
		}
		
		Page<Product> pageResponse = productRepository.findAll(spec, PageRequest.of(page, size, sortType.equals("desc") ? Sort.by(sortName).descending() : Sort.by(sortName).ascending()));
		
		return pageEntityToDTO(pageResponse);
	}
	
	// Init name file thumbnail
	// Set name thumbnail into product
	// Save product
	// Save multipart to folder product id
	// The same way with images
	
	@Override
	public ProductResponseDTO save(ProductRequestDTO dto) throws BadRequestException{
		ProductResponseDTO productResponseDTO = new ProductResponseDTO();
		
		if(dto.getThumbnail() == null || dto.getThumbnail().isEmpty()) {
			throw new BadRequestException("Thumbnail not null");
		}
		
		if(!SaveFileHelper.isImage(dto.getThumbnail())) {
			throw new BadRequestException("Thumbnail incorrect format image");
		}
		
		if(dto.getId() != null) {
			throw new BadRequestException("Id must be null");
		}
		
		if(productRepository.existsBySlug(dto.getSlug())) {
			throw new ConflictException("Your slug already exists");
		}
				
		// set thumbnail into product entity
		Product product = new Product();
		
		String thumbnail = UUID.randomUUID().toString() + "-" + SaveFileHelper.getNameMultipart(dto.getThumbnail());	
		
		BeanUtils.copyProperties(dto, product);
		product.setVisibleType(VisibleType.VISIBLE);
		product.setThumbnail(thumbnail);
		
		// set category
		
		List<Category> categories = new ArrayList<>();
		for(Integer categoryId: dto.getCategories()) {
			Category category = new Category();
			category.setId(categoryId);
			categories.add(category);			
		}
		
		product.setCategories(categories);
		
		// set images into product entity
		
		List<ProductImage> images = new ArrayList<>();
		
		for(MultipartFile multipartFile: dto.getGallery()) {	
			if(!SaveFileHelper.isImage(multipartFile)) {
				throw new BadRequestException("Image incorrect format image");
			}
			if(multipartFile != null || !multipartFile.isEmpty()) {				
				String image = UUID.randomUUID().toString() + "-" + SaveFileHelper.getNameMultipart(multipartFile);
				images.add(new ProductImage(null, product, image));
			}			
		}
		product.setGallery(images);
		
		// save product
		
		product = productRepository.save(product);
		BeanUtils.copyProperties(product, productResponseDTO);
		
		String pathThumbnailId = PathContant.PATH_PRODUCT_THUMBNAIL + product.getId();
		String pathImageId = PathContant.PATH_PRODUCT_IMAGES + product.getId();

		FileUploadUtil.cleanDir(pathThumbnailId);
		FileUploadUtil.cleanDir(pathImageId);
		
		SaveFileHelper.saveMultipart(dto.getThumbnail(), pathThumbnailId, thumbnail);
		
		for(int i = 0; i < images.size(); i ++) {			
			SaveFileHelper.saveMultipart(dto.getGallery().get(i), pathImageId, images.get(i).getImage());
		}

		// set image response dto
		
		List<ProductImageResponseDTO> productImageDTOs = new ArrayList<>();
		
		for(ProductImage productImage : product.getGallery()) {
			ProductImageResponseDTO productImageDTO = new ProductImageResponseDTO();
			BeanUtils.copyProperties(productImage, productImageDTO);
			productImageDTOs.add(productImageDTO);
		}
		productResponseDTO.setGallery(productImageDTOs);
		
		return productResponseDTO;
	}

	// If thumbnail is null, get old thumbnail url to save
	// If thumbnail not null, use new image
	// The same way with images
	
	@Override
	public ProductResponseDTO update(ProductRequestDTO productRequestDTO) {
		ProductResponseDTO productResponseDTO = new ProductResponseDTO();
		
		if(productRequestDTO.getId() == null) {
			throw new BadRequestException("Id not found");
		}	
		
		if(productRepository.existsBySlugAndIdNot(productRequestDTO.getSlug(), productRequestDTO.getId())) {
			throw new ConflictException("Your slug already exists");
		}
		
		Optional<Product> productOldOptional = productRepository.findById(productRequestDTO.getId());
		if(productOldOptional.isPresent()) {
			Product productOld = productOldOptional.get();
			Product product = new Product();			

			// set thumbnail into product entity
			
			String thumbnail = "";

			if(productRequestDTO.getThumbnail() == null || productRequestDTO.getThumbnail().isEmpty()) {
				thumbnail = productOld.getThumbnail();
			} else {
				if(!SaveFileHelper.isImage(productRequestDTO.getThumbnail())) {
					throw new BadRequestException("Thumbnail incorrect format image");
				}

				thumbnail = UUID.randomUUID().toString() + "-" + SaveFileHelper.getNameMultipart(productRequestDTO.getThumbnail());								
			}
			
			BeanUtils.copyProperties(productRequestDTO, product);
			product.setThumbnail(thumbnail);
			
			
			// set images into product entity
			
			List<ProductImage> images = new ArrayList<>();

			if(productRequestDTO.getGallery().size() == 0) {
				images = product.getGallery();
			} else {				
				for(MultipartFile multipartFile: productRequestDTO.getGallery()) {
					if(!SaveFileHelper.isImage(multipartFile)) {
						throw new BadRequestException("Image incorrect format image");
					}

					if(multipartFile != null || !multipartFile.isEmpty()) {
						String image = UUID.randomUUID().toString() + "-" + SaveFileHelper.getNameMultipart(multipartFile);
						images.add(new ProductImage(null, product, image));						
					}
				}
				product.setGallery(images);
			}
			
			// set create time product entity
			
			product.setCreateTime(productOld.getCreateTime());
			
			// set category product entity
			
			List<Category> categories = new ArrayList<>();
			for(Integer categoryId: productRequestDTO.getCategories()) {
				Category category = new Category();
				category.setId(categoryId);
				categories.add(category);			
			}
			
			product.setCategories(categories);
			
			// save product
			
			productImageRepository.deleteAll();
			product = productRepository.save(product);
			BeanUtils.copyProperties(product, productResponseDTO);
			
			if(productRequestDTO.getThumbnail() != null && !productRequestDTO.getThumbnail().isEmpty()) {
				String pathThumbnailId = PathContant.PATH_PRODUCT_THUMBNAIL + product.getId();
				FileUploadUtil.cleanDir(pathThumbnailId);
				SaveFileHelper.saveMultipart(productRequestDTO.getThumbnail(), pathThumbnailId, thumbnail);				
			} 
			
			if(productRequestDTO.getGallery().size() != 0) {
				String pathImageId = PathContant.PATH_PRODUCT_IMAGES + product.getId();
				FileUploadUtil.cleanDir(pathImageId);
				
				
				for(int i = 0; i < images.size(); i ++) {			
					SaveFileHelper.saveMultipart(productRequestDTO.getGallery().get(i), pathImageId, images.get(i).getImage());
				}				
			}

			// set image response dto
			
			List<ProductImageResponseDTO> productImageDTOs = new ArrayList<>();
			
			for(ProductImage productImage : product.getGallery()) {
				ProductImageResponseDTO productImageDTO = new ProductImageResponseDTO();
				BeanUtils.copyProperties(productImage, productImageDTO);
				productImageDTOs.add(productImageDTO);
			}
			productResponseDTO.setGallery(productImageDTOs);
			
			return productResponseDTO;			
		} else {
			throw new BadRequestException("Id not found");
		}
		
	}


	@Override
	public boolean delete(List<Integer> ids) throws BadRequestException {
		try {			
			productRepository.deleteAllById(ids);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			throw new BadRequestException("Can not delete!");
		}
	}

	@Override
	public ProductResponseDTO getBySlugWithCategory(String slug) {
		Optional<Product> optional = productRepository.findOneBySlug(slug);
		if(optional.isPresent()) {
			return entityToDTOWithCategory(optional.get());
		} else {
			throw new NotfoundException("Not found your product");
		}
	}
	
	private Page<ProductResponseDTO> pageEntityToDTO(Page<Product> page) {
		return page.map(product -> entityToDTO(product));
	}
	 
	private List<ProductResponseDTO> entitiesToDTOs(List<Product> products) {
		return products.stream().map(item -> {
			return entityToDTO(item);
		}).toList();
	}
	
	private ProductResponseDTO entityToDTO(Product product) {
		ProductResponseDTO dto = new ProductResponseDTO();
		BeanUtils.copyProperties(product, dto);
		return dto;
	}

	private ProductResponseDTO entityToDTOWithCategory(Product product) {
		ProductResponseDTO dto = new ProductResponseDTO();
		BeanUtils.copyProperties(product, dto);
		
		List<Category> categories = product.getCategories();
		List<CategoryResponseDTO> categoryResponseDTOs = new ArrayList<>();
		for(Category category : categories) {
			CategoryResponseDTO categoryResponseDTO = new CategoryResponseDTO();
			BeanUtils.copyProperties(category, categoryResponseDTO);
			categoryResponseDTOs.add(categoryResponseDTO);
		}
		
		dto.setCategories(categoryResponseDTOs);
		return dto;
		
	}

}
