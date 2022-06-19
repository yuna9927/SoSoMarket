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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.util.WebUtils;
import com.example.jpetstore.service.SosoMarketFacade;

@Controller
@RequestMapping({"/shop/newBidding.do","/shop/insertBidding.do"})
@SessionAttributes("biddingForm")
public class BiddingController { 
	
	@Value("BiddingForm")
	private String formViewName;
	
	@Value("index")
	private String successViewName;
	
	@Autowired
	private SosoMarketFacade sosomarket;
	
	public void setSosomarket(SosoMarketFacade sosomarket) {
		this.sosomarket = sosomarket;
	}
	
	UserSession userSession;
	BiddingForm bf;

//	@Autowired
//	private ProductFormValidator validator;
//	public void setValidator(ProductFormValidator validator) {
//		this.validator = validator;
//	}
		
	@ModelAttribute("biddingForm")
	public BiddingForm formBackingObject(HttpServletRequest request) 
			throws Exception {
		
		userSession = 
				(UserSession) WebUtils.getSessionAttribute(request, "userSession");

		bf = new BiddingForm();
		bf.setBuyerId(userSession.getAccount().getAccountId());
		return bf;
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String form() {
		return formViewName;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String onSubmit(
			HttpServletRequest request, HttpSession session,
			@RequestParam("auctionId") String auctionId,
			@ModelAttribute("biddingForm") BiddingForm biddingForm,
			@ModelAttribute("userSession") UserSession userSession,
			BindingResult result) throws Exception {
		
		int int_auctionId = Integer.parseInt(auctionId);
		bf.setProductId(int_auctionId);
		System.out.println(biddingForm);
		sosomarket.insertBidding(biddingForm.getBidding());
				
		return successViewName;  
	}
}