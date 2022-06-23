package com.example.jpetstore.service;

import java.text.SimpleDateFormat;

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
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "auction.product.description", "DESCRIPTION_REQUIRED", "상품 설명을 입력해주세요.");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "auction.product.shipping", "SHIPPING_REQUIRED", "배송 방법을 입력해주세요.");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "auction.deadLine", "DEADLINE_REQUIRED", "마감기한을 입력해주세요.");
	    
	    if (auction.getStartPrice() < 1000) {
        	errors.rejectValue("auction.startPrice", "PRICE_TOO_LOW", "1000원 이하는 등록할 수 없습니다.");
        }
	    
	    if (errors.hasFieldErrors() && !errors.hasGlobalErrors()) {
	    	errors.reject("ERRORS_OCCURED", "입력 형식에 오류가 생겼습니다. 다시 확인해주세요.");
	    }
	}
}