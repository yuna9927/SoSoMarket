package com.example.jpetstore.controller;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.util.WebUtils;
import com.example.jpetstore.domain.Product;
import com.example.jpetstore.service.SosoMarketFacade;

@Controller
@RequestMapping({"/shop/newOrderForm.do","/shop/newOrder.do"})
@SessionAttributes("biddingForm")
public class OrderController { 
	
	@Value("NewOrderForm")
	private String formViewName;
	
	@Value("index")
	private String successViewName;
	
	@Autowired
	private SosoMarketFacade sosomarket;
	
	public void setSosomarket(SosoMarketFacade sosomarket) {
		this.sosomarket = sosomarket;
	}
	
	UserSession userSession;
	OrderForm of;

//	@Autowired
//	private ProductFormValidator validator;
//	public void setValidator(ProductFormValidator validator) {
//		this.validator = validator;
//	}
		
	@ModelAttribute("orderForm")
	public OrderForm formBackingObject(HttpServletRequest request) 
			throws Exception {
		
		userSession = 
				(UserSession) WebUtils.getSessionAttribute(request, "userSession");

		of = new OrderForm();
		of.setBuyerId(userSession.getAccount().getAccountId());
		System.out.println(userSession.getAccount().getAccountId());
		
		String productId = request.getParameter("productId");
		int int_productId = Integer.parseInt(productId);
		of.setProductId(int_productId);
		
		Date orderDate = new Date();
		of.setDate(orderDate);
		return of;
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String form() {
		return formViewName;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String onSubmit(
			HttpServletRequest request, HttpSession session,
			@ModelAttribute("orderForm") OrderForm orderForm,
			@ModelAttribute("userSession") UserSession userSession,
			BindingResult result) throws Exception {
		
		System.out.println(orderForm);
		sosomarket.insertOrder(orderForm.getOrder());
				
		return successViewName;  
	}
}