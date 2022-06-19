package com.example.jpetstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.example.jpetstore.domain.Auction;
import com.example.jpetstore.domain.Product;
import com.example.jpetstore.service.SosoMarketFacade;

/**
 * @author Juergen Hoeller
 * @since 01.12.2003
 * @modified by Changsup Park
 */
@Controller
@SessionAttributes("userSession")
public class ViewMyProductListController {

	private SosoMarketFacade sosomarket;

	@Autowired
	public void setPetStore(SosoMarketFacade sosomarket) {
		this.sosomarket = sosomarket;
	}

	@RequestMapping("/user/viewMyProductList.do")
	public String getMyProductList(
		@ModelAttribute("userSession") UserSession userSession,
		ModelMap model
		) throws Exception {
		String accountId = userSession.getAccount().getAccountId();
	
		List<Product> productList = sosomarket.getProductListByUser(accountId);
	
		
		model.put("productList", productList);
		

		return "ListSells";
	}
	
	@RequestMapping("/user/viewMyAuctionProductList.do")
	public String getMyAuctionProductList(
		@ModelAttribute("userSession") UserSession userSession,
		ModelMap model
		) throws Exception {
		String accountId = userSession.getAccount().getAccountId();
		List<Auction> auctionList = sosomarket.getAuctionListByUser(accountId);
		
		model.put("auctionList", auctionList);

		return "ListAuctionSells";
	}
	
	
}
