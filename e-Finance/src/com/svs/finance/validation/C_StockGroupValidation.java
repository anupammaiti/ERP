package com.svs.finance.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.StockGroupDetailsBean;
import com.svs.finance.validation.util.C_ValidationUtil;

public class C_StockGroupValidation implements Validator {

	@Autowired
	C_ValidationUtil util_valid;
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return StockGroupDetailsBean.class.equals(aClass);
	}

	@Override
	public void validate(Object stockgroup, Errors errors) {
		// TODO Auto-generated method stub
		StockGroupDetailsBean stk=(StockGroupDetailsBean)stockgroup;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"name","name","Name is Required");
		if(util_valid.isAplhabet(stk.getName())){
			
		}else{
			errors.rejectValue("name","name","name is Not Alphabetic");
		}
	}

}
