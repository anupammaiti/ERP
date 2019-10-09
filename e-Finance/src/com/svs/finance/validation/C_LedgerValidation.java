package com.svs.finance.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.LedgerDetailsBean;
import com.svs.finance.validation.util.C_ValidationUtil;

public class C_LedgerValidation implements Validator {

	@Autowired
	C_ValidationUtil util_valid;
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return LedgerDetailsBean.class.equals(aClass);
	}

	@Override
	public void validate(Object leddetails, Errors errors) {
		// TODO Auto-generated method stub
		LedgerDetailsBean led=(LedgerDetailsBean)leddetails;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"ledgername","ledgername","Ledger Name is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "inventoryvalues","inventoryvalues","Inventroy values is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"name","name","Name is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"address","address","Address is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"state","state","State is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"pincode","pincode","Pan no is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"panno","panno","Pan Number is Reuqired");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"salestax","salestax","Sales Tax is Required");
		
		if(util_valid.isAplhabet(led.getLedgername())){
			
		}else{
			errors.rejectValue("ledgername","ledgername","Ledger Name is not Alphabetic");
		}
		if(util_valid.isAplhabet(led.getName())){
			
		}else{
			errors.rejectValue("name","name","Name is not Alphabetic");
		}
		if(util_valid.isAplhabet(led.getAddress())){
			
		}else{
			errors.rejectValue("address","address","Address is Not Alphabetic");
		}
		if(util_valid.isAplhabet(led.getState())){
			
		}else{
			errors.rejectValue("state","state","State is Not Alphabetic");
		}
		if(util_valid.isNumeric(led.getPincode())){
			
		}else{
			errors.rejectValue("pincode","pincode","Pin Code is Not Numeric");
		}
		if(util_valid.isAlphaNumeric(led.getPanno())){
			
		}else{
			errors.rejectValue("panno","panno","Pan no is Not Numeric");
		}
		if(util_valid.isNumeric(led.getSalestax())){
			
		}else{
			errors.rejectValue("salestax","salestax","Sales Tax No is not Numeric");
		}
	}

}
