package com.svs.finance.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.VocherJournalBean;
import com.svs.finance.validation.util.C_ValidationUtil;

public class C_VoucherJournalValid implements Validator {

	@Autowired
	C_ValidationUtil util_valid; 
	
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return VocherJournalBean.class.equals(aClass);
	}

	@Override
	public void validate(Object voucherJournal, Errors errors) {
		// TODO Auto-generated method stub
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"quantity","quantity","Quantity is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"rate","rate","Rate is Required");
		VocherJournalBean vjournal=(VocherJournalBean)voucherJournal;
		if(util_valid.isNumeric(vjournal.getAmount())){
			
		}else{
			errors.rejectValue("quantity","quantity","Quantity is Not Number");
			
		}
		if(util_valid.isNumeric(vjournal.getQuantity())){
			
		}else{
			errors.rejectValue("rate","rete","Rate is Not Number");
		}
	}

}
