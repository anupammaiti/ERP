package com.svs.finance.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.NonTradingExpencesesBean;
import com.svs.finance.validation.util.C_ValidationUtil;

public class C_NonTradingExpValid implements Validator {

	@Autowired
	C_ValidationUtil util_validation;
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return NonTradingExpencesesBean.class.equals(aClass);
	}

	@Override
	public void validate(Object nontrexp, Errors errors) {
		// TODO Auto-generated method stub
		
		NonTradingExpencesesBean nrexp=(NonTradingExpencesesBean)nontrexp;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"phoneno","phoneno","Phone No is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"location","location","Location is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "approvedby","approvedby", "Approved By is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"itemname","itemname", "Item Name is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"quantity", "quantity","Quantity is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"amount","amount","Amount is Required");
		
		if(util_validation.isNumeric(nrexp.getPhoneno())){
			
		}else{
			errors.rejectValue("phoneno","phoneno","Phone No is not Number");
		}
		if(util_validation.isAplhabet(nrexp.getLocation())){
			
		}else{
			errors.rejectValue("location","location","Location is Not Alphabet");
		}
		if(util_validation.isAplhabet(nrexp.getApprovedby())){
			
		}else{
			errors.rejectValue("approvedby","approvedby","Approved By is Not Alphabet");
		}
		if(util_validation.isAplhabet(nrexp.getItemname())){
			
		}else{
			errors.rejectValue("itemname","itemname","Item Name is Not Alphabet");
		}
		if(util_validation.isNumeric(nrexp.getQuantity())){
			
		}else{
			errors.rejectValue("quantity","quantity","Quantity is not Quantity");
		}
		if(util_validation.isNumeric(nrexp.getAmount())){
			
		}else{
			errors.rejectValue("amount","amount","Amount is not Numeric");
		}
	}

}
