package com.svs.finance.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.PostageExpBean;

public class C_PostageExpValid implements Validator {

	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return PostageExpBean.class.equals(aClass);
	}

	@Override
	public void validate(Object postexp1, Errors errors) {
		// TODO Auto-generated method stub
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"approvedby","approvedby","Approved By is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"to_name","to_name","To Name is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"address","address","Address is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"typeofpost","typeofpost","Post type is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"rate","rate","Rate is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"totalamount","totalamount","Total Amount is Required");
		
	}

}
