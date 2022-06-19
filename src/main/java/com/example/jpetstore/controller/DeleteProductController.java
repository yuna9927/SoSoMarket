package com.example.jpetstore.controller;

import javax.servlet.http.HttpSession;

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
import com.example.jpetstore.domain.Item;
import com.example.jpetstore.domain.Product;
import com.example.jpetstore.service.SosoMarketFacade;

/**
 * @author Juergen Hoeller
 * @since 30.11.2003
 * @modified-by Changsup Park
 */
@Controller
@SessionAttributes({"category", "productList"})
public class DeleteProductController { 

	private SosoMarketFacade sosomarket;

	@Autowired
	public void setPetStore(SosoMarketFacade petSsosomarkettore) {
		this.sosomarket = sosomarket;
	}

	@RequestMapping("/shop/deleteProduct.do")
	public ModelAndView deleteProduct(HttpSession session,
			@RequestParam("productId") String productId,
			ModelMap model) throws Exception {
		//로그인 사용자 != 상품 게시 사용자일 경우 error
		UserSession userSession = (UserSession) session.getAttribute("userSession");
		Product product = sosomarket.getProduct(Integer.parseInt(productId));
		System.out.println("현재로그인 id : " + userSession.getAccount().getAccountId() + ", " + product.getSellerId());
		if (!userSession.getAccount().getAccountId().equals(product.getSellerId()))
			return new ModelAndView("Error", "message", 
					"본인이 등록한 상품만 삭제할 수 있습니다.");
		//상품 삭제가 가능할 경우 삭제
		else {
			this.sosomarket.deleteProduct(Integer.parseInt(productId));
		
			return new ModelAndView("SearchProductList");
		}
	}
	
	@RequestMapping("/shop/deleteAuction.do")
	public ModelAndView deleteAuctionProduct(HttpSession session,
			@RequestParam("auctionId") String auctionId,
			ModelMap model) throws Exception {
		//로그인 사용자 != 상품 게시 사용자일 경우 error
		UserSession userSession = (UserSession) session.getAttribute("userSession");
		Auction auction = sosomarket.getAuction(Integer.parseInt(auctionId));
		System.out.println("현재로그인 id : " + userSession.getAccount().getAccountId() + ", " + auction.getProduct().getSellerId());
		if (!userSession.getAccount().getAccountId().equals(auction.getProduct().getSellerId()))
			return new ModelAndView("Error", "message", 
					"본인이 등록한 상품만 삭제할 수 있습니다.");
		//상품 삭제가 가능할 경우 삭제
		else {
			this.sosomarket.deleteProduct(Integer.parseInt(auctionId));
		
			return new ModelAndView("SearchAuctionProductList");
		}
	}
	
}
