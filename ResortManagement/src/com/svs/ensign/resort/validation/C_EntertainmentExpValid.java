package com.svs.ensign.resort.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.ensign.resort.bean.EntertainmentExpencesesBean;
import com.svs.ensign.resort.validation.util.C_ValidationUtil;

public class C_EntertainmentExpValid implements Validator {

	@Autowired
	C_ValidationUtil util_validation;
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return EntertainmentExpencesesBean.class.equals(aClass);
	}

	@Override
	public void validate(Object entexp, Errors errors) {
		// TODO Auto-generated method stub
		EntertainmentExpencesesBean enterexp=(EntertainmentExpencesesBean)entexp;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"phoneno", "phoneno", "Phone No is Required");
		ValidationUtils.rejectIfEmpty(errors, "location", "location","Location is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "approvedby","approvedby", "Approved By is Required");
		
		if(util_validation.isNumeric(enterexp.getPhoneno())){
			
		}else{
			errors.rejectValue("phoneno","phoneno","Phone No is Not Numeric");
		}
		if(util_validation.getMobileNo(enterexp.getPhoneno())){
			
		}else{
			errors.rejectValue("phoneno","phoneno","Enter 10 Digit Phone No");
		}
		if(util_validation.isAplhabet(enterexp.getLocation())){
			
		}else{
			errors.rejectValue("location","location","Location is Not Alphabetic");
		}
		if(util_validation.isAplhabet(enterexp.getApprovedby())){
			
		}else{
			errors.rejectValue("approvedby","approvedby","Approved by is Not Alphabetic");
		}
		
	}

}
