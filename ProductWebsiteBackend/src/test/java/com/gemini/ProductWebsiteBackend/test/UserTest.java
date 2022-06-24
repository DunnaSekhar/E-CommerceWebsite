package com.gemini.ProductWebsiteBackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.gemini.ProductWebsiteBackend.dao.UserDAO;
import com.gemini.ProductWebsiteBackend.model.Address;
import com.gemini.ProductWebsiteBackend.model.Cart;
import com.gemini.ProductWebsiteBackend.model.User;

public class UserTest {

	private static AnnotationConfigApplicationContext context;
	private static UserDAO userDAO;
	private User user=null;
	private Cart cart=null;
	private Address address=null;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.gemini.ProductWebsiteBackend");
		context.refresh();
		userDAO=(UserDAO)context.getBean("userDAO");
	}
	
	
	@Test
	public void testAddUser()
	{
		user = new User();
		user.setFirstname("Subhasis");
		user.setLastname("Mishra");
		user.setEmail("subhasis@gmail.com");
		user.setContactNo("700856432");
		user.setEnabled(true);
		user.setRole("USER");
		user.setPassword("password@123");
		
		
		address= new Address();
		address.setAddressLineOne("sriram nagar");
		address.setAddressLineTwo("near gajuwaka");
		address.setCity("Vizag");
		address.setState("AP");
		address.setPostalcode("709102");
		address.setCountry("India");
		address.setBilling(true);
		
		
		cart=new Cart();
		address.setUser(user);
		user.setCart(cart);
		
		
		assertEquals("Failed to add this user",true,userDAO.addUser(user));
		assertEquals("Failed to add the billing address!!",true,userDAO.addAddress(address));
	
		address= new Address();
		address.setAddressLineOne("DAV school");
		address.setAddressLineTwo("parade ground");
		address.setCity("Vizag");
		address.setState("AP");
		address.setPostalcode("709102");
		address.setCountry("India");
		address.setShipping(true);
		address.setUser(user);
		assertEquals("Failed to add the shipping address!!",true,userDAO.addAddress(address));
		
	
	}
	
	@Ignore
	@Test
	public void testAddAddress()
	{
		user=userDAO.getEmailById("dse@gmail.com"); 
		address= new Address();
		address.setAddressLineOne("shanti nagar");
		address.setAddressLineTwo("near dav school");
		address.setCity("Chatrapur");
		address.setState("Odisha");
		address.setPostalcode("761020");
		address.setCountry("India");
		address.setUser(user);
		assertEquals("Failed to add the address!!",true,userDAO.addAddress(address));
	}
}

