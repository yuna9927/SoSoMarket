package com.example.jpetstore.service;

import org.springframework.beans.factory.annotation.Autowired;
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

	@Autowired
	private SosoMarketFacade sosomarket;
	
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
   
//	    sosomarket.getAccount(account.getAccountId()) != NULL;
//	    if (account.getAccountId())
	    if (account.getPassword().length() < 6) {
	    	errors.rejectValue("account.password", "PASSWORD_LENGTH", "비밀번호는 최소 6자리로 정해주세요.");
	    }
	    if (!account.getEmail().matches("(.*)@(.*)") || !account.getEmail().matches("(.*)\\.(.*)")) {
	    	errors.reject("EMAIL_MISMATCH", "이메일 형식이 잘못되었습니다.");
	    }


	    if (accountForm.isNewAccount()) {
//        account.setStatus("OK");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.accountId", "ACCOUNT_ID_REQUIRED", "아이디를 입력해주세요.");
        if (account.getPassword() == null || account.getPassword().length() < 1
        		|| !account.getPassword().equals(accountForm.getRepeatedPassword())) {
           errors.reject("PASSWORD_MISMATCH", "비밀번호가 없거나 일치하지 않습니다.");
        }
      } else if (account.getPassword() != null && account.getPassword().length() > 0) {
    	  if (!account.getPassword().equals(accountForm.getRepeatedPassword())) {
            errors.rejectValue("repeatedPassword", "PASSWORD_MISMATCH", "비밀번호가 일치하지 않습니다. 다시 확인해주세요.");
          }
      }
   }
}