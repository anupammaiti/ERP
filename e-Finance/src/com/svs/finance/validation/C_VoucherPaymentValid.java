package com.svs.finance.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.VocherPaymentBean;
import com.svs.finance.validation.util.C_ValidationUtil;

public class C_VoucherPaymentValid implements Validator {

	@Autowired
	C_ValidationUtil util_valid; 
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return VocherPaymentBean.class.equals(aClass);
	}

	@Override
	public void validate(Object voucherpayment, Errors errors) {
		// TODO Auto-generated method stub
		VocherPaymentBean vpayment=(VocherPaymentBean)voucherpayment;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "amount","amount","Amount is Required");
		if(util_valid.isNumeric(vpayment.getAmount())){
			
		}else{
			errors.rejectValue("amount","amount","Amount is Not Number");
		}
		
	}

}
