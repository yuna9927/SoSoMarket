package com.example.jpetstore.service;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import com.example.jpetstore.controller.BiddingForm;
import com.example.jpetstore.domain.Bidding;
/**
 * @author Juergen Hoeller
 * @since 01.12.2003
 * @modified by Changsup Park
 */
@Component
public class BiddingFormValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return Bidding.class.isAssignableFrom(clazz);
	}

	public void validate(Object obj, Errors errors) {
		BiddingForm biddingForm = (BiddingForm)obj; 
		Bidding bidding = biddingForm.getBidding();

		if (bidding.getBiddingPrice() < 1000 && bidding.getBiddingPrice() >= 0) {
        	errors.rejectValue("bidding.biddingPrice", "BIDDINGPRICE_MISMATCH");
        } 
	}
}