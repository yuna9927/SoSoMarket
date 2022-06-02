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

      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.password", "PASSWORD_REQUIRED", "password is required.");
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.phoneNumber", "PHONE_NUMBER_REQUIRED", "phone number is required.");
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.email", "EMAIL_ADDRESS_REQUIRED", "email address is required.");
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.nickname", "NICKNAME_REQUIRED", "nickname is required.");
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.joinDate", "JOIN_DATE_REQUIRED", "join date is required.");
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.address", "MY_ADDRESS_REQUIRED", "my address is required.");
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.zipcode", "MY_ZIPCODE_REQUIRED", "zipcode is required.");
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.bankName", "BANK_NAME_REQUIRED", "bank name is required.");
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.bankNumber", "BANK_NUMBER_REQUIRED", "bank number is required.");
      
      if (accountForm.isNewAccount()) {
//         account.setStatus("OK");
         ValidationUtils.rejectIfEmptyOrWhitespace(errors, "account.accountId", "ACCOUNT_ID_REQUIRED", "account Id is required.");
         if (account.getPassword() == null || account.getPassword().length() < 1 ||
               !account.getPassword().equals(accountForm.getRepeatedPassword())) {
            errors.reject("PASSWORD_MISMATCH",
                "Passwords did not match or were not provided. Matching passwords are required.");
         }
      }
      else if (account.getPassword() != null && account.getPassword().length() > 0) {
         if (!account.getPassword().equals(accountForm.getRepeatedPassword())) {
            errors.reject("PASSWORD_MISMATCH", "Passwords did not match. Matching passwords are required.");
         }
      }
   }
}