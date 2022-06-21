package com.example.jpetstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import com.example.jpetstore.domain.Cart;
import com.example.jpetstore.domain.Item;
import com.example.jpetstore.domain.Wish;
import com.example.jpetstore.service.SosoMarketFacade;

@Controller
@SessionAttributes("wish")
public class WishController { 

	private SosoMarketFacade sosomarket;

	@Autowired
	public void setSosomarket(SosoMarketFacade sosomarket) {
		this.sosomarket = sosomarket;
	}

	@ModelAttribute("wish")
	public Wish createWish() {
		return new Wish();
	}
	
	@RequestMapping("/user/newWish.do")
	public ModelAndView handleRequest(
			@RequestParam("productId") String productId,
			@ModelAttribute("wish") Wish wish 
			) throws Exception {
		if (cart.containsItemId(workingItemId)) {
			cart.incrementQuantityByItemId(workingItemId);
		}
		else {
			// isInStock is a "real-time" property that must be updated
			// every time an item is added to the cart, even if other
			// item details are cached.
			boolean isInStock = this.petStore.isItemInStock(workingItemId);
			Item item = this.petStore.getItem(workingItemId);
			cart.addItem(item, isInStock);
		}
		
		if(sosomarket)
		return new ModelAndView("Cart", "cart", cart);
	}
}