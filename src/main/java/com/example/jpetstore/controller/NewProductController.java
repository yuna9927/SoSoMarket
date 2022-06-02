package com.example.jpetstore.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.jpetstore.domain.Product;
import com.example.jpetstore.service.SosoMarketFacade;

@Controller
@RequestMapping({"/shop/newProduct.do","/shop/newProductForm.do"})
public class NewProductController { 

	@Value("EditProductForm")
	private String formViewName;
	
	@Value("index")
	private String successViewName;
	
	@Autowired
	private SosoMarketFacade sosomarket;
	
	public void setSosomarket(SosoMarketFacade sosomarket) {
		this.sosomarket = sosomarket;
	}

//	@Autowired
//	private ProductFormValidator validator;
//	public void setValidator(ProductFormValidator validator) {
//		this.validator = validator;
//	}
		
	@ModelAttribute("auctionForm")
	public Product formBackingObject(HttpServletRequest request) 
			throws Exception {
		
		
		if(request.getMethod().equalsIgnoreCase("GET")) {
			Product product = new Product();
			
			return product;
			
		} else {
			return new Product();
		}
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String form() {
		return formViewName;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String onSubmit(
			HttpServletRequest request, HttpSession session,
			@ModelAttribute("auction") Product product,
			BindingResult result) throws Exception {

			
//		new ProductValidator().validate(product, result);
		
//		if(result.hasErrors()) {
//			return formViewName;
//		}
		
		sosomarket.insertProduct(product);		
		return successViewName;  
	}
	
}