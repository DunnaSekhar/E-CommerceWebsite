package com.gemini.ProductWebsiteBackend.dao;


import java.util.List;

import com.gemini.ProductWebsiteBackend.model.Address;
import com.gemini.ProductWebsiteBackend.model.Cart;
import com.gemini.ProductWebsiteBackend.model.User;

public interface UserDAO {
	
	boolean addUser(User user);
	
	User getEmailById(String email);
	
	boolean addAddress(Address address);
	
	Address getByBillingAddress(User user);
	
	List<Address> listShippingAddress(User user);
	

}
