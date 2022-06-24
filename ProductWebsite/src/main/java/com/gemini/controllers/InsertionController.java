package com.gemini.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gemini.ProductWebsiteBackend.dao.CategoryDAO;
import com.gemini.ProductWebsiteBackend.dao.ProductDAO;
import com.gemini.ProductWebsiteBackend.model.Category;
import com.gemini.ProductWebsiteBackend.model.Product;
import com.gemini.util.FileUtility;
import com.gemini.validator.ProductValidator;

@Controller
@RequestMapping("/insert")
public class InsertionController {

	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	ProductDAO productDAO;

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public ModelAndView showmanageProducts(@RequestParam(name = "operation", required = false) String operation) {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("title", "Inserting Products");
		mv.addObject("userClickInsertProduct", true);
		Product newproduct = new Product();

		newproduct.setSupplierId(1);
		newproduct.setActive(true);
		mv.addObject("product", newproduct);

		if (operation != null) {
			if (operation.equals("product")) {
				mv.addObject("message", "Product Added Successfully!!!");
			}
			if (operation.equals("category")) {
				mv.addObject("message", "Category Added Successfully!!!");
			}
		}
		return mv;
	}

	@RequestMapping(value = "/products", method = RequestMethod.POST)
	public String showSubmitProducts(@Valid @ModelAttribute("product") Product mproduct, BindingResult results,
			Model model, HttpServletRequest request) {
		if(mproduct.getId()==0)
		{
			new ProductValidator().validate(mproduct, results);			
		}
		else {
			if (!mproduct.getFile().getOriginalFilename().equals("")) {
				new ProductValidator().validate(mproduct, results);
			}
		}
		if (results.hasErrors()) {
			model.addAttribute("title", "Managing Products");
			model.addAttribute("userClickInsertProduct", true);
			model.addAttribute("message", "Validation Failed");
			return "index";
		}
		if (!mproduct.getFile().getOriginalFilename().equals("")) {
			FileUtility.uploadFile(request, mproduct.getFile(), mproduct.getCode());
		}
		

		if(mproduct.getId()==0)
		{
			productDAO.add(mproduct);
		}
		else
		{
			productDAO.update(mproduct);
		}
		return "redirect:/insert/products?operation=product";
	}

	@RequestMapping(value = "/product/{id}/activation", method = RequestMethod.POST)
	@ResponseBody
	public String activateProducts(@PathVariable int id) {
		Product product = productDAO.get(id);
		boolean isActive = product.isActive();
		product.setActive(!product.isActive());
		productDAO.update(product);

		return (isActive) ? "You have successfully deactivate the Product" + product.getName()
				: "You have Successfully activate the product" + product.getName();

	}

	@RequestMapping(value = "/{id}/product", method = RequestMethod.GET)
	public ModelAndView editProducts(@PathVariable int id) {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("title", "Inserting Products");
		mv.addObject("userClickInsertProduct", true);

		Product nproduct = productDAO.get(id);
		mv.addObject("product", nproduct);
		return mv;
	}
	
	/*
	 * @RequestMapping(value = "/category", method = RequestMethod.POST) public
	 * String categorySubmission(@ModelAttribute Category category) {
	 * categoryDAO.add(category); return
	 * "redirect:/insert/products?operation=category"; }
	 */
	
	/*
	 * @ModelAttribute("category") public List<Category> getCategory() { return
	 * categoryDAO.list(); }
	 */
	
	
	@ModelAttribute("categories")
	public List<Category> getCategories() {
		return categoryDAO.list();
	}
	
}
