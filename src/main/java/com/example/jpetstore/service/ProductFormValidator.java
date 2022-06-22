package com.example.jpetstore.service;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import com.example.jpetstore.controller.ProductForm;
import com.example.jpetstore.domain.Product;
/**
 * @author Juergen Hoeller
 * @since 01.12.2003
 * @modified by Changsup Park
 */
@Component
public class ProductFormValidator implements Validator {
	
	public boolean supports(Class<?> clazz) {
		return Product.class.isAssignableFrom(clazz);
	}

	public void validate(Object obj, Errors errors) {
		ProductForm productForm = (ProductForm)obj; 
		Product product = productForm.getProduct();
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "product.title", "PRODUCT_TITLE_REQUIRED", "제목을 입력해주세요.");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "product.categoryId", "CATEGORY_REQUIRED", "카테고리를 입력해주세요.");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "product.description", "DESCRIPTION_REQUIRED", "상품 설명을 입력해주세요.");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "product.price", "PRICE_REQUIRED", "가격을 입력해주세요."); 
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "product.shipping", "SHIPPING_REQUIRED", "배송방법을 입력해주세요.");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "product.shippingFee", "SHIPPING_FEE_REQUIRED", "배송비를 입력해주세요.");
	    
	    if (product.getPrice() < 1000) {
        	errors.rejectValue("product.price", "PRICE_TOO_LOW", "1000원 아래로는 등록이 불가능합니다.");
        }
	    
	    if (errors.hasFieldErrors() && !errors.hasGlobalErrors()) {
	    	errors.reject("ERRORS_OCCURED", "입력 과정에서 오류가 발생했습니다. 다시 확인해주세요.");
	    }
	}
}