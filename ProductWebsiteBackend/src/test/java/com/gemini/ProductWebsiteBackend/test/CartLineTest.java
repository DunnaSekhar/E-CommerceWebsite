package com.gemini.ProductWebsiteBackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.gemini.ProductWebsiteBackend.dao.CartLineDAO;
import com.gemini.ProductWebsiteBackend.dao.ProductDAO;
import com.gemini.ProductWebsiteBackend.dao.UserDAO;
import com.gemini.ProductWebsiteBackend.model.Cart;
import com.gemini.ProductWebsiteBackend.model.CartLine;
import com.gemini.ProductWebsiteBackend.model.Product;
import com.gemini.ProductWebsiteBackend.model.User;

public class CartLineTest {
	private static AnnotationConfigApplicationContext context;
	private static CartLineDAO cartlineDAO;
	private static ProductDAO productDAO;
	private static UserDAO userDAO;

	private CartLine cartLine = null;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.gemini.ProductWebsiteBackend");
		context.refresh();
		cartlineDAO = (CartLineDAO) context.getBean("cartLineDAO");
		productDAO = (ProductDAO) context.getBean("productDao");
		userDAO = (UserDAO) context.getBean("userDAO");

	}

	@Test
	public void testAddCartLine() {
		User user = userDAO.getEmailById("deepak@gmail.com");
		Cart cart = user.getCart();
		Product product = productDAO.get(13);
		cartLine = new CartLine();
		cartLine.setCartId(cart.getId());
		cartLine.setProductCount(cartLine.getProductCount() + 1);
		cartLine.setBuyingPrice(product.getUnitPrice());
		cartLine.setTotal(product.getUnitPrice() * cartLine.getProductCount());
		cartLine.setAvailable(true);
		cartLine.setProduct(product);
		assertEquals("Cart add", true, cartlineDAO.add(cartLine));
		cart.setGrandTotal(cart.getGrandTotal() + cartLine.getTotal());
		cart.setCartLines(cart.getCartLines() + 1);
		assertEquals("Cart update", true, cartlineDAO.updateCart(cart));

	}
}