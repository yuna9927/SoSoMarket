package com.example.jpetstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

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

	private SosoMarketFacade petStore;

	@Autowired
	public void setPetStore(SosoMarketFacade petStore) {
		this.petStore = petStore;
	}

	@RequestMapping("/shop/viewAuction.do")
	public ModelAndView handleRequest(
			@RequestParam("auctionId") String auctionId,
			ModelMap model) throws Exception {
//		PagedListHolder<Item> itemList = new PagedListHolder<Item>(this.petStore.getItemListByProduct(productId));
//		itemList.setPageSize(4);
		Product product = this.petStore.getProduct(Integer.parseInt(productId));
		return new ModelAndView("ViewProduct", "product", product);
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
