package com.example.jpetstore.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.jpetstore.domain.Auction;
import com.example.jpetstore.domain.Product;
import com.example.jpetstore.service.SosoMarketFacade;

@Controller
public class SearchProductsController {

	private SosoMarketFacade sosoMarket;
	private String successViewName;

	@Autowired
	public void setSoSoMarket(SosoMarketFacade sosoMarket) {
		this.sosoMarket = sosoMarket;
	}

	@RequestMapping("/shop/searchProducts.do")
	public ModelAndView handleRequest(HttpServletRequest request,
			@RequestParam(value = "keyword", required = false) String keyword,
			@RequestParam(value = "page", required = false) String page,
			@RequestParam(value = "type", required = false) String type) throws Exception {
		if (keyword != null) {
			if (!StringUtils.hasLength(keyword)) {
				return new ModelAndView("Error", "message",
						"Please enter a keyword to search for, then press the search button.");
			}

			System.out.println("type: " + type);
			
			//search product
			if (type.equals("product")) {
				PagedListHolder<Product> productList = new PagedListHolder<Product>(
						this.sosoMarket.searchProductList(keyword.toLowerCase()));
				productList.setPageSize(4);
				request.getSession().setAttribute("SearchProductsController_productList", productList);
				return new ModelAndView("SearchProductList", "productList", productList);
			}
			//search auction
			else {
				PagedListHolder<Auction> auctionList = new PagedListHolder<Auction>(
						this.sosoMarket.searchAuctionList(keyword.toLowerCase()));
				auctionList.setPageSize(4);
				request.getSession().setAttribute("SearchProductsController_auctionList", auctionList);
				return new ModelAndView("SearchAuctionList", "auctionList", auctionList);
			}
			
		} else {
			@SuppressWarnings("unchecked")
			PagedListHolder<Product> productList = (PagedListHolder<Product>) request.getSession()
					.getAttribute("SearchProductsController_productList");
			if (productList == null) {
				return new ModelAndView("Error", "message", "Your session has timed out. Please start over again.");
			}
			if ("next".equals(page)) {
				productList.nextPage();
			} else if ("previous".equals(page)) {
				productList.previousPage();
			}
			return new ModelAndView("SearchProducts", "productList", productList);
		}
	}

}
