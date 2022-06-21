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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.util.WebUtils;

import com.example.jpetstore.domain.Product;
import com.example.jpetstore.service.SosoMarketFacade;

@Controller
@RequestMapping({"/shop/newAuctionForm.do","/shop/newAuction.do"})
@SessionAttributes("auctionForm")
public class NewAuctionController { 

	@Value("NewAuctionForm")
	private String formViewName;
	
	@Value("index")
	private String successViewName;
	
	@Autowired
	private SosoMarketFacade sosomarket;
	
	public void setSosomarket(SosoMarketFacade sosomarket) {
		this.sosomarket = sosomarket;
	}
	
	UserSession userSession;
	public String sellerId;
	public Product product;

//	@Autowired
//	private ProductFormValidator validator;
//	public void setValidator(ProductFormValidator validator) {
//		this.validator = validator;
//	}
		
	@ModelAttribute("auctionForm")
	public AuctionForm formBackingObject(HttpServletRequest request) 
			throws Exception {
		
		UserSession userSession = 
				(UserSession) WebUtils.getSessionAttribute(request, "userSession");

		AuctionForm af = new AuctionForm();
		product = new Product();
		af.setProduct(product);
		sellerId = userSession.getAccount().getAccountId();
		af.setSellerId(sellerId);
		
		return af;
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String form() {
		return formViewName;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String onSubmit(
			HttpServletRequest request, HttpSession session,
			@ModelAttribute("auctionForm") AuctionForm auctionForm,
			@ModelAttribute("userSession") UserSession userSession,
			BindingResult result) throws Exception {
	
		
		sosomarket.insertProduct(auctionForm.getAuction().getProduct());
		
		String accountId = auctionForm.getAuction().getProduct().getSellerId();
		String title = auctionForm.getAuction().getProduct().getTitle();
		Product product2 = sosomarket.getProduct(accountId, title);
		
		auctionForm.getAuction().setAuctionId(product2.getProductId());
		sosomarket.insertAuction(auctionForm.getAuction());
		
		return successViewName;  
	}
}