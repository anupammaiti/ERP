package com.svs.finance.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.VoucherRecieptBean;
import com.svs.finance.validation.util.C_ValidationUtil;

public class VoucherReciept implements Validator {

	@Autowired
	C_ValidationUtil util_valid; 
	
	@Override
	public boolean supports(Class  aClass) {
		// TODO Auto-generated method stub
		return VoucherRecieptBean.class.equals(aClass);
	}

	@Override
	public void validate(Object voucherrecipt, Errors errors) {
		// TODO Auto-generated method stub
		VoucherRecieptBean vchrec=(VoucherRecieptBean)voucherrecipt;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "amount","amount","Amount is Required");
		if(util_valid.isNumeric(vchrec.getAmount())){
			
		}else{
			errors.rejectValue("amount","amount","Amount is Not Number");
		}
		
	}

}
