package com.gemini.ProductWebsiteBackend.dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.gemini.ProductWebsiteBackend.model.Product;

public interface ProductDAO {
	@Autowired
	List<Product> list();
	Product get(int productId);
	boolean add(Product product);
	boolean update(Product product);
	boolean delete(Product product);
	
	List<Product> listActiveProducts();	  
		
	List<Product> listActiveProductByCategory(int categoryId);
			
	List<Product> getLatestActiveProducts(int count);
			 
	 
}