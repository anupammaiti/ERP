package com.svs.ensign.resort.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.ensign.resort.bean.PhoneBillExpencesesBean;
import com.svs.ensign.resort.validation.util.C_ValidationUtil;

public class C_PhoneBillExpValid implements Validator {
	@Autowired
	C_ValidationUtil util_validation;
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		
		return PhoneBillExpencesesBean.class.equals(aClass);
	}

	@Override
	public void validate(Object phonebillexp, Errors errors) {
		// TODO Auto-generated method stub
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"phoneno", "phoneno", "Phone No is Required");
		ValidationUtils.rejectIfEmpty(errors, "location", "location","Location is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "approvedby","approvedby", "Approved By is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "amountdue", "amountdue", "Amount Due is Required");
		
		PhoneBillExpencesesBean pbexp=(PhoneBillExpencesesBean)phonebillexp;
		if(util_validation.isNumeric(pbexp.getPhoneno())){
			
		}else{
			errors.rejectValue("phoneno", "phoneno","Phone No is Numeric");
		}
		if(util_validation.getMobileNo(pbexp.getPhoneno())){
			
		}else{
			errors.rejectValue("phoneno", "phoneno", "Enter 10 digits Phone No");
		}
		if(util_validation.isAplhabet(pbexp.getLocation())){
			
		}else{
			errors.rejectValue("location", "location","Location is Not Alphabetic");
		}
		if(util_validation.isAplhabet(pbexp.getApprovedby())){
			
		}else{
			errors.rejectValue("approvedby", "approvedby", "Approved By is Not Alphabetic");
		}
		if(util_validation.isNumeric(pbexp.getAmountdue())){
			
		}else{
			errors.rejectValue("amountdue", "amountdue","Amount Due is Not Numeric");
		}
	}

}
