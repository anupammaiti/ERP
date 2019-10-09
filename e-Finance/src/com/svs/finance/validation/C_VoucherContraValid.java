package com.svs.finance.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.VocherContraBean;
import com.svs.finance.validation.util.C_ValidationUtil;

public class C_VoucherContraValid implements Validator {

	@Autowired
	C_ValidationUtil util_valid; 
	
	@Override
	public boolean supports(Class  aClass) {
		// TODO Auto-generated method stub
		return VocherContraBean.class.equals(aClass);
	}

	@Override
	public void validate(Object vouchercontra, Errors errors) {
		// TODO Auto-generated method stub
		VocherContraBean vouchercontra1=(VocherContraBean)vouchercontra;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"ammount","ammount","Amount is Required");
		if(util_valid.isNumeric(vouchercontra1.getAmmount())){
			
		}else{
			errors.rejectValue("ammount","ammount","Amount is Not Numeric");
		}
		
		
	}

}
