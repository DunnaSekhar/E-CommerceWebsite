package com.gemini.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.gemini.ProductWebsiteBackend.dao.UserDAO;
import com.gemini.ProductWebsiteBackend.model.User;
import com.gemini.model.UserModel;

@ControllerAdvice
public class GlobalController {

	@Autowired
	private HttpSession session;

	@Autowired
	private UserDAO userDAO;
	private UserModel userModel = null;
	private User user = null;

	@ModelAttribute("userModel")
	public UserModel getUserModel() {
		if (session.getAttribute("userModel") == null) {
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			user = userDAO.getEmailById(authentication.getName());

			if (user != null) {
				userModel = new UserModel();
				userModel.setId(user.getId());
				userModel.setFullName(user.getFirstname() + " " + user.getLastname());
				userModel.setRole(user.getRole());

				if (user.getRole().equals("USER")) {
					userModel.setCart(user.getCart());
				}
				session.setAttribute("userModel", userModel);
				return userModel;
			}
		}
		return (UserModel)session.getAttribute("userModel");
	}	
}
