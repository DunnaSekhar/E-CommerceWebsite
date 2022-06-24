package com.gemini.ProductWebsiteBackend.dao;

import java.util.List;

import com.gemini.ProductWebsiteBackend.model.Cart;
import com.gemini.ProductWebsiteBackend.model.CartLine;

public interface CartLineDAO {
	public List<CartLine> list(int cartId);

	public CartLine get(int id);

	public boolean add(CartLine cartLine);

	public boolean update(CartLine cartLine);

	public boolean delete(CartLine cartLine);

	public CartLine getByCartAndProduct(int cartId, int productId);

	boolean updateCart(Cart cart);

	public List<CartLine> listAvailable(int cartId);
}
