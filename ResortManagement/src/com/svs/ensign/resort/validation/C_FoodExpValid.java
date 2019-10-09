package com.svs.ensign.resort.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.ensign.resort.bean.FoodExcepensesBean;
import com.svs.ensign.resort.validation.util.C_ValidationUtil;

public class C_FoodExpValid implements Validator {

	@Autowired
	C_ValidationUtil util_valid;
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return FoodExcepensesBean.class.equals(aClass);
	}

	@Override
	public void validate(Object foodexp, Errors errors) {
		// TODO Auto-generated method stub
		FoodExcepensesBean feb=(FoodExcepensesBean)foodexp;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phoneno", "phoneno","Phone Number is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"location", "location","Location is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "approvedby","approvedby", "Approved By is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "amountdue","amountdue","Amout is Required");
	
		if(util_valid.isNumeric(feb.getPhoneno())){
			
		}else{
			errors.rejectValue("phoneno", "phoneno","Phone No is Not Numeric");
		}
		
		if(util_valid.isAplhabet(feb.getLocation())){
			
		}else{
			errors.rejectValue("location","location","Location is Not Alphabetic");
		}
		if(util_valid.isAplhabet(feb.getApprovedby())){
			
		}else{
			errors.rejectValue("approvedby", "approvedby", "Approved By is Not Alphabetic");
		}
		if(util_valid.isNumeric(feb.getAmountdue())){
			
		}else{
			errors.rejectValue("amountdue", "amountdue", "Amout is Not Number");
		}
	}

}
