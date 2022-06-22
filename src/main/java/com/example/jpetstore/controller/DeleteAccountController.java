package com.example.jpetstore.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import com.example.jpetstore.service.SosoMarketFacade;

@Controller
@SessionAttributes("userSession")
@RequestMapping("/user/deleteUser.do")
public class DeleteAccountController { 

	@Autowired
	private SosoMarketFacade sosoMarket;
	
	@Autowired
	public void setSosomarket(SosoMarketFacade sosoMarket) {
		this.sosoMarket = sosoMarket;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String showForm() {
	      return "DeleteAccountForm";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView handleRequest(
			@ModelAttribute("userSession") UserSession userSession
		) throws Exception {
		
		String accountId = userSession.getAccount().getAccountId();
		sosoMarket.deleteAccount(accountId);
		
		return new ModelAndView("index");
	}
}

