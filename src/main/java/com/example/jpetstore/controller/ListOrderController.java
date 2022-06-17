package com.example.jpetstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.example.jpetstore.domain.Order;
import com.example.jpetstore.service.SosoMarketFacade;

/**
 * @author Juergen Hoeller
 * @since 01.12.2003
 * @modified by Changsup Park
 */
@Controller
@SessionAttributes("userSession")
public class ListOrderController {

	private SosoMarketFacade sosomarket;

	@Autowired
	public void setPetStore(SosoMarketFacade sosomarket) {
		this.sosomarket = sosomarket;
	}

	@RequestMapping("/user/viewSellerOrderList.do")
	public ModelAndView getOrderListBySeller(
		@ModelAttribute("userSession") UserSession userSession
		) throws Exception {
		String accountId = userSession.getAccount().getAccountId();
		return new ModelAndView("/user/orderListOnSell", "sellOrderList", 
				sosomarket.getOrderListBySeller(accountId));
	}
	
	@RequestMapping("/user/viewBuyerOrderList.do")
	public ModelAndView getOrderListByBuyer(
		@ModelAttribute("userSession") UserSession userSession
		) throws Exception {
		String accountId = userSession.getAccount().getAccountId();
		List<Order> buyOrderList = sosomarket.getOrderListByBuyer(accountId);
		return new ModelAndView("ListOrders", "buyOrderList", 
				buyOrderList);
	}

}
