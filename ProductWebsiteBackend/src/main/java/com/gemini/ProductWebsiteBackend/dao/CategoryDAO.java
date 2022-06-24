package com.gemini.ProductWebsiteBackend.dao;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.gemini.ProductWebsiteBackend.model.Category;



public interface CategoryDAO {
	@Autowired
	List<Category> list();
	Category get(int id);
	boolean add(Category category);
	boolean update(Category category);
	boolean delete(Category category);
	
	
}
