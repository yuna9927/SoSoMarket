package com.example.jpetstore.controller;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import com.example.jpetstore.domain.Cart;
import com.example.jpetstore.service.SosoMarketFacade;

@Controller
@SessionAttributes("sessionCart")
public class DeleteAccountController { 

	@RequestMapping("/user/deleteUser.do")
	public ModelAndView handleRequest(
			@RequestParam("accountId") String accountId,
			@ModelAttribute("sosoMarket") SosoMarketFacade sosoMarket,
			HttpSession session
		) throws Exception {
		
		sosoMarket.deleteAccount(accountId);
		
		
		return "index";
	}
}
