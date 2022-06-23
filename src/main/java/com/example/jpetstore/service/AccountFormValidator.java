package com.example.jpetstore.service;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import com.example.jpetstore.controller.AccountForm;
import com.example.jpetstore.domain.Account;
/**
 * @author Juergen Hoeller
 * @since 01.12.2003
 * @modified by Changsup Park
 */
@Component
public class AccountFormValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return Account.class.isAssignableFrom(clazz);
	}

	public void validate(Object obj, Errors errors) {
		AccountForm accountForm = (AccountForm)obj; 
		Account account = accountForm.getAccount();

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.password", "PASSWORD_REQUIRED", "비밀번호를 입력해주세요.");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "repeatedPassword", "REPEATED_PASSWORD_REQUIRED", "비밀번호 확인을 입력해주세요.");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.nickname", "NICKNAME_REQUIRED", "닉네임을 입력해주세요.");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.email", "EMAIL_ADDRESS_REQUIRED", "이메일을 입력해주세요."); 
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.phoneNumber", "PHONE_NUMBER_REQUIRED", "전화번호를 입력해주세요.");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.address", "MY_ADDRESS_REQUIRED", "주소를 입력해주세요.");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.zipcode", "MY_ZIPCODE_REQUIRED", "우편번호를 입력해주세요.");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.bankName", "BANK_NAME_REQUIRED", "은행명을 입력해주세요.");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.bankNumber", "BANK_NUMBER_REQUIRED", "계좌번호를 입력해주세요.");

	    if (account.getPassword().length() < 6 && account.getPassword() != null && account.getPassword().length() > 0) {
	    	errors.rejectValue("account.password", "PASSWORD_LENGTH", "비밀번호는 최소 6글자 이상이여야 합니다.");
	    }
	    if (account.getZipcode().length() != 5 && account.getZipcode() != null && account.getZipcode().length() > 0) {
	    	errors.rejectValue("account.zipcode", "ZIPCODE_LENGTH", "우편번호는 5자리입니다.");
	    }
	    if (account.getEmail() != null && account.getEmail().length() > 0) {
	    	if (!account.getEmail().matches("(.*)@(.*)") || !account.getEmail().matches("(.*)\\.(.*)")) {
		    	errors.rejectValue("account.email", "EMAIL_MISMATCH", "이메일 형식이 잘못되었습니다. 다시 확인해주세요.");
		    }
	    }
	    if (!account.getPhoneNumber().matches("^01(?:0|1|[6-9])-(?:\\d{3}|\\d{4})-\\d{4}$")
	    		&& account.getPhoneNumber() != null && account.getPhoneNumber().length() > 0) {
	    	errors.rejectValue("account.phoneNumber", "PHONE_NUMBER_MISMATCH", "전화번호 형식이 잘못되었습니다. 다시 확인해주세요.");
	    }
	    if (accountForm.isNewAccount()) {
	    	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.accountId", "ACCOUNT_ID_REQUIRED", "아이디를 입력해주세요.");
	        if (account.getPassword() == null || account.getPassword().length() < 1
	        		|| !account.getPassword().equals(accountForm.getRepeatedPassword())) {
	        	errors.reject("PASSWORD_MISMATCH", "비밀번호가 없거나 잘못되었습니다. 다시 확인주세요.");
	        }
	    } else if (account.getPassword() != null && account.getPassword().length() > 0) {
	    	if (!account.getPassword().equals(accountForm.getRepeatedPassword())) {
	    		errors.rejectValue("repeatedPassword", "PASSWORD_MISMATCH", "비밀번호가 틀렸습니다. 다시 확인해주세요.");
	    	}
	    }
	    if (errors.hasFieldErrors() && !errors.hasGlobalErrors()) {
	    	errors.reject("ERRORS_OCCURED", "입력 형식에 오류가 생겼습니다. 다시 확인해주세요.");
	    }
	}
}