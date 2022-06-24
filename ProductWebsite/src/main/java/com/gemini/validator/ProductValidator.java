package com.gemini.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.gemini.ProductWebsiteBackend.model.Product;

public class ProductValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {

		return Product.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors error) {

		Product product = (Product) target;
		if(product.getFile()==null || product.getFile().getOriginalFilename().equals(""))
		{
			error.rejectValue("file",null,"Select an image file for upload");
			return;
		}
		
		if(!(product.getFile().getContentType().equals("image/jpeg") ||
				product.getFile().getContentType().equals("image/jpg")	||
				product.getFile().getContentType().equals("image/png") ||
				product.getFile().getContentType().equals("image/gif")
				))
		{
			error.rejectValue("file", null,"Selected Image File is not Supported!!");
			return;
		}
	}

}
