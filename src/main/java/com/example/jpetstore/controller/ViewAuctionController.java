package com.example.jpetstore.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.example.jpetstore.domain.Auction;
import com.example.jpetstore.domain.Bidding;
import com.example.jpetstore.domain.Item;
import com.example.jpetstore.domain.Product;
import com.example.jpetstore.service.SosoMarketFacade;

/**
 * @author Juergen Hoeller
 * @since 30.11.2003
 * @modified-by Changsup Park
 */
@Controller
//@SessionAttributes({"category", "productList"})
public class ViewAuctionController { 

	private SosoMarketFacade sosomarket;

	@Autowired
	public void setSosomarket(SosoMarketFacade sosomarket) {
		this.sosomarket = sosomarket;
	}

	@RequestMapping("/shop/viewAuctionProduct.do")
	public String handleRequest(
			@RequestParam("auctionId") int auctionId,
			ModelMap model) throws Exception {
		//경매 상품 페이지에서 필요한 경매 상품 입찰가 목록 조회
		List<Bidding> biddingList = new ArrayList<Bidding>();
		biddingList = this.sosomarket.getBiddingsByAuction(auctionId);
		Auction auction = this.sosomarket.getAuction(auctionId);
		model.put("biddingList", biddingList);
		model.put("auction", auction);
		return "ViewAuctionProduct";
	}

	
//	@RequestMapping("/shop/viewProduct2.do")
//	public String handleRequest2(
//			@ModelAttribute("product") Product product,
//			@ModelAttribute("itemList") PagedListHolder<Item> itemList,
//			@RequestParam("pageName") String page, 
//			ModelMap model) throws Exception {
//		if ("next".equals(page)) {
//			itemList.nextPage();
//		}
//		else if ("previous".equals(page)) {
//			itemList.previousPage();
//		}
//		model.put("itemList", itemList);
//		model.put("product", product);
//		return "Product";
//	}
}
