package com.gemini.ProductWebsiteBackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.gemini.ProductWebsiteBackend.dao.ProductDAO;
import com.gemini.ProductWebsiteBackend.model.Product;

public class ProductTest {

	private static AnnotationConfigApplicationContext context;
	private static ProductDAO productDao;
	private static Product product;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.gemini.ProductWebsiteBackend");
		context.refresh();
		productDao = (ProductDAO) context.getBean("productDao");
	}

	
	@Test
	public void testAdd() {

		product = new Product();
		product.setName("Watch series");
		product.setBrand("SONATA");
		product.setDescription("its awesome,  2 year warranty.");
		product.setUnitPrice(25500.0);
		product.setQuantity(10);
		product.setActive(true);
		product.setCategoryId(0);
		product.setSupplierId(129);
		product.setPurchases(230);
		product.setViews(142);

		assertEquals("added successfully", true, productDao.add(product));

	}

	
	@Ignore
	@Test
	public void testUpdate() {
		product = productDao.get(2);
		product.setCode("p3");
		product.setName("MI watches");
		product.setBrand("MI");
		product.setDescription("its fabulous");
		product.setUnitPrice(10500.0);
		product.setQuantity(100);
		product.setActive(true);
		product.setCategoryId(5);
		product.setSupplierId(2);
		product.setPurchases(1090);
		product.setViews(2109);


		product.setActive(true);
		assertEquals("product updated successfully", true, productDao.update(product));
	}

	@Ignore
	@Test
	public void testDelete() {
		product = productDao.get(2);
		assertEquals("product deleted successfully", true, productDao.delete(product));
	}

	@Ignore
	@Test
	public void testList() {
		product = productDao.get(2);
		assertEquals("product fetched successfully",2, productDao.list().size());
	}
	
	@Ignore
	@Test
	public void TestListActiveProduct()
	{
		assertEquals("active product fetched successfully",4, productDao.listActiveProducts().size());
	}

	@Ignore
	@Test
	public void TestListActiveProductByCategory()
	{
		assertEquals("active products by category is fetched successfully",1, productDao.listActiveProductByCategory(2).size());
	}
	@Ignore
	@Test
	public void testLatestActiveProducts()
	{
		assertEquals("latest active products is fetched successfully",2, productDao.getLatestActiveProducts(2).size());
	}
	
	
}

