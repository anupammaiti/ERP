package com.svs.finance.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.MisleniousExpencesesBean;
import com.svs.finance.validation.util.C_ValidationUtil;

public class C_MisleniousExpValid implements Validator {

	@Autowired
	C_ValidationUtil util_validation;
	
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return MisleniousExpencesesBean.class.equals(aClass);
	}

	@Override
	public void validate(Object misexp, Errors errors) {
		// TODO Auto-generated method stub
		MisleniousExpencesesBean misexp1=(MisleniousExpencesesBean)misexp;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phoneno","phoneno","Phone No is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "location", "location","Location is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"approvedby","approvedby","Approved by is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "purpose","purpose","Purpose is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"amount","amount","Amount is Required");
		
		if(util_validation.isNumeric(misexp1.getPhoneno())){
			
		}else{
			errors.rejectValue("phoneno","phoneno", "Phone no is Not Numeric");
		}
		if(util_validation.getMobileNo(misexp1.getPhoneno())){
			
		}else{
			errors.rejectValue("phoneno","phoneno","Enter 10 digit Phone No");
		}
		if(util_validation.isAplhabet(misexp1.getLocation())){
			
		}else{
			errors.rejectValue("location","location","Location is Not Alphabetic");
		}
		if(util_validation.isAplhabet(misexp1.getApprovedby())){
			
		}else{
			errors.rejectValue("approvedby","approvedby","Approved By is Not Alphabetic");
		}
		if(util_validation.isAplhabet(misexp1.getPurpose())){
			
		}else{
			errors.rejectValue("purpose","purpose","Purpose Of is Not Alphabetic");
		}
		if(util_validation.isNumeric(misexp1.getAmount())){
			
		}else{
			errors.rejectValue("amount","amount","Amount is not Numeric");
		}
		
	}

}
