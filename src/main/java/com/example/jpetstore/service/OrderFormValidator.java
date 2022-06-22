package com.example.jpetstore.service;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.example.jpetstore.controller.OrderForm;
import com.example.jpetstore.domain.Order;

/**
 * @author Juergen Hoeller
 * @since 01.12.2003
 * @modified by Changsup Park
 */
@Component
public class OrderFormValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return Order.class.isAssignableFrom(clazz);
	}

	public void validate(Object obj, Errors errors) {
		OrderForm orderForm = (OrderForm)obj;
		Order order = orderForm.getOrder();
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "order.bankName", "BANK_NAME_REQUIRED", "은행명을 입력해주세요.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "order.bankNumber", "BANK_NUMBER_REQUIRED", "계좌번호를 입력해주세요.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "order.shippingZipCode", "SHIPPING_ZIPCODE_REQUIRED", "우편번호를 입력해주세요.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "order.shippingAddress", "SHIPPING_ADDRESS_REQUIRED", "주소를 입력해주세요.");
		
		if (order.getShippingZipCode().length() != 5 && order.getShippingZipCode() != null && order.getShippingZipCode().length() > 0) {
	    	errors.rejectValue("order.shippingZipCode", "ZIPCODE_LENGTH", "우편번호는 5자리입니다.");
	    }
		
		if (errors.hasFieldErrors() && !errors.hasGlobalErrors()) {
	    	errors.reject("ERRORS_OCCURED", "입력 과정에서 오류가 발생했습니다. 다시 확인해주세요.");
	    }
	}
}