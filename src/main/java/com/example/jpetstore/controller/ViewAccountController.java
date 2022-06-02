package com.example.jpetstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.example.jpetstore.domain.Account;
import com.example.jpetstore.service.SosoMarketFacade;

/**
 * @author Juergen Hoeller
 * @since 01.12.2003
 * @modified by Changsup Park
 */
@Controller
@SessionAttributes("userSession")
public class ViewAccountController {

	private SosoMarketFacade sosomarket;

	@Autowired
	public void setPetStore(SosoMarketFacade sosomarket) {
		this.sosomarket = sosomarket;
	}

	@RequestMapping("/user/viewUser.do")
	public ModelAndView handleRequest(
			@ModelAttribute("userSession") UserSession userSession
			) throws Exception {
		Account account = this.sosomarket.getAccount(userSession.getAccount().getAccountId());
		if (account != null) {
			return new ModelAndView("ViewUser", "account", account);
		}
		else {
			return new ModelAndView("Error", "message", "You have to log in first.");
		}
	}
}