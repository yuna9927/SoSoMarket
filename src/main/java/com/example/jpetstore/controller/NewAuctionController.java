package com.example.jpetstore.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.example.jpetstore.service.SosoMarketFacade;

@Controller
@RequestMapping({"/shop/newAuction.do","/shop/newAuctionForm.do"})
public class NewAuctionController { 

	@Value("EditAuctionForm")
	private String formViewName;
	
	@Value("index")
	private String successViewName;
	
	@Autowired
	private SosoMarketFacade sosomarket;
	
	public void setSosomarket(SosoMarketFacade sosomarket) {
		this.sosomarket = sosomarket;
	}

	@Autowired
	private AuctionFormValidator validator;
	public void setValidator(AuctionFormValidator validator) {
		this.validator = validator;
	}
		
	@ModelAttribute("auctionForm")
	public Auction formBackingObject(HttpServletRequest request) 
			throws Exception {
		
		
		if(request.getMethod().equalsIgnoreCase("GET")) {
			Auction auction = new Auction();
			
			return auction;
			
		} else {
			return new Auction();
		}
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String form() {
		return formViewName;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String onSubmit(
			HttpServletRequest request, HttpSession session,
			@ModelAttribute("auction") Auction auction,
			BindingResult result) throws Exception {

			
		new AuctionValidator().validate(auction, result);
		
		if(result.hasErrors()) {
			return formViewName;
		}
		
		sosomarket.insertAuction(auction);		return successViewName;  
	}
	
}