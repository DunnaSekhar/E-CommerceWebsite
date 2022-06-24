package com.gemini.ProductWebsiteBackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.gemini.ProductWebsiteBackend.dao.CategoryDAO;
import com.gemini.ProductWebsiteBackend.model.Category;

public class CategoryTest {
	private static AnnotationConfigApplicationContext context;
	private static CategoryDAO categoryDao;
	private static Category category;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.gemini.ProductWebsiteBackend");
		context.refresh();
		categoryDao = (CategoryDAO) context.getBean("categoryDao");
	}

	
	@Test
	public void testAdd() {
		category = new Category();
		category.setName("Trimmer");
		category.setDescription("Trimmer Section");
		category.setImgURL("11.jpg");
		assertEquals("added successfully", true, categoryDao.add(category));
		
	}

	@Ignore
	@Test
	public void testUpdate() {
		category = categoryDao.get(1);
		category.setName("Tablet");
		category.setDescription("this is a tablet");
		category.setImgURL("1.png");
		category.setActive(true);
		assertEquals("category updated successfully", true, categoryDao.update(category));
	}

	@Ignore
	@Test
	public void testDelete() {
		category = categoryDao.get(2);
		assertEquals("category deleted successfully", true, categoryDao.delete(category));
	}
	
	@Ignore
	@Test
	public void testList() {
		category = categoryDao.get(3);
		assertEquals("category fetched successfully", 3, categoryDao.list().size());
	}
}
