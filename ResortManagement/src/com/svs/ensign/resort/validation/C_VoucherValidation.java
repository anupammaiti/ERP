package com.svs.ensign.resort.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.ensign.resort.bean.VocherDetailsBean;
import com.svs.ensign.resort.validation.util.C_ValidationUtil;

public class C_VoucherValidation implements Validator {
	@Autowired
	C_ValidationUtil util_valid;
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return VocherDetailsBean.class.equals(aClass);
	}

	@Override
	public void validate(Object voucher, Errors errors) {
		// TODO Auto-generated method stub
		VocherDetailsBean vchb=(VocherDetailsBean)voucher;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"name","name","Voucher Name is Required");
	if(util_valid.isAplhabet(vchb.getName())){
		
	}else{
		errors.rejectValue("name","name","Voucher Name is not Alphabetic");
	}
	}

}
