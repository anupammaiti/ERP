package com.svs.finance.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.StockItemBean;
import com.svs.finance.validation.util.C_ValidationUtil;

public class C_StockItemValid implements Validator {

	@Autowired
	C_ValidationUtil util_valid;
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return StockItemBean.class.equals(aClass);
	}

	@Override
	public void validate(Object sitem, Errors errors) {
		// TODO Auto-generated method stub
		StockItemBean stitem=(StockItemBean)sitem;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"name","name","Name is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"rateofduty","rateofduty","Rate of Duty is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"trafficclassification","trafficclassification","Traffic Classification is Required");
		if(util_valid.isAplhabet(stitem.getName())){
			
		}else{
			errors.rejectValue("name","name","Name is not Alphabetic");
		}
		if(util_valid.isNumeric(stitem.getRateofduty())){
			
		}else{
			errors.rejectValue("rateofduty","rateofduty","Rate of Duty is not Alphabetic");
		}
		if(util_valid.isNumeric(stitem.getTrafficclassification())){
			
		}else{
			errors.rejectValue("trafficclassification","trafficclassification","Traffic Classification is not Alphabetic");
		}
		
	}

}
