package com.svs.ensign.resort.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.ensign.resort.bean.MeasuresBean;
import com.svs.ensign.resort.validation.util.C_ValidationUtil;

public class C_MesurementValidation implements Validator {

	@Autowired
	C_ValidationUtil util_valid;
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return MeasuresBean.class.equals(aClass);
	}

	@Override
	public void validate(Object mes, Errors errors) {
		// TODO Auto-generated method stub
		MeasuresBean mes1=(MeasuresBean)mes;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"symbol","symbol","Simbol is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"formalname","formalname","Formal is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"numofdec","numofdec","Numeric is Required");
		
		if(util_valid.isAplhabet(mes1.getSymbol())){
			
		}else{
			errors.rejectValue("symbol","symbol","Symbol is Alphabetic");
		}
		if(util_valid.isAplhabet(mes1.getFormalname())){
			
		}else{
			errors.rejectValue("formalname","formalname","Formal Name is not Alphabetic");
		}
		if(util_valid.isAlphaNumeric(mes1.getNumofdec())){
			
		}else{
			errors.rejectValue("numofdec","numofdec","Number is not Alphabetic");
		}
	}

}
