package com.example.jpetstore.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import com.example.jpetstore.controller.AuctionForm;
import com.example.jpetstore.domain.Auction;
/**
 * @author Juergen Hoeller
 * @since 01.12.2003
 * @modified by Changsup Park
 */
@Component
public class AuctionFormValidator implements Validator {

	@Autowired
	private SosoMarketFacade sosomarket;
	
	public boolean supports(Class<?> clazz) {
		return Auction.class.isAssignableFrom(clazz);
	}

	public void validate(Object obj, Errors errors) {
		AuctionForm auctionForm = (AuctionForm)obj; 
		Auction auction = auctionForm.getAuction();
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "auction.product.title", "PRODUCT_TITLE_REQUIRED", "제목을 입력해주세요.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "auction.product.categoryId", "CATEGORY_REQUIRED", "카테고리를 입력해주세요.");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "auction.product.description", "DESCRIPTION_REQUIRED", "상품 설명을 입력해주세요.");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "auction.product.price", "PRICE_REQUIRED", "가격을 입력해주세요."); 
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "auction.product.shipping", "SHIPPING_REQUIRED", "배송방법을 입력해주세요.");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "auction.product.shippingFee", "SHIPPING_FEE_REQUIRED", "배송비를 입력해주세요.");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "auction.startPrice", "STARTPRICE_REQUIRED", "시작가를 입력해주세요.");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "auction.deadLine", "DEADLINE_REQUIRED", "마감 날짜를 입력해주세요.");
	    
	    if (auction.getProduct().getPrice() < 100) {
        	errors.rejectValue("auction.product.price", "PRICE_TOO_LOW", "100원 아래로는 등록이 불가능합니다.");
        }
	    if (auction.getStartPrice() < 100) {
        	errors.rejectValue("auction.startPrice", "PRICE_TOO_LOW", "100원 아래로는 등록이 불가능합니다.");
        }
	    auction.getDeadLine();
//	    if (auction.getDeadLine()) {
//	    	errors.rejectValue("auction.deadLine", "DEADLINE_MISMATCH", "날짜 형식이 올바르지 않습니다.");
//	    }
	    
	    if (errors.hasFieldErrors() && !errors.hasGlobalErrors()) {
	    	errors.reject("ERRORS_OCCURED", "입력 과정에서 오류가 발생했습니다. 다시 확인해주세요.");
	    }
	}
}