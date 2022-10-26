package com.robocon321.demo.util;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.robocon321.demo.exception.BadRequestException;



public class SaveFileHelper {
	private static final Logger LOGGER = LoggerFactory.getLogger(SaveFileHelper.class);

	public static void saveMultipart(MultipartFile multipart, String path, String fileName) {
		if (!multipart.isEmpty()) {			
//			FileUploadUtil.cleanDir(path);
			try {
				FileUploadUtil.saveFile(path, fileName, multipart);
			} catch (IOException e) {
				throw new BadRequestException("Your file is null");
			}	
		}		
	}
	
	
	public static String getNameMultipart(MultipartFile multipart) {
		if(!multipart.isEmpty()) {
			String fileName = StringUtils.cleanPath(multipart.getOriginalFilename());
			return fileName;
		} else {
			return null;
		}
	}
	
	public static boolean isImage(MultipartFile multipart) {
		String contentType = multipart.getContentType();
		if(contentType == null) return false;
		return contentType.startsWith("image");
	}
}
