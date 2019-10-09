package com.svs.finance.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.UniversityBean;
import com.svs.finance.validation.util.C_ValidationUtil;

public class UniversityValidation implements Validator {

	@Autowired
	C_ValidationUtil util_valid;
	
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return UniversityBean.class.equals(aClass);
	}

	@Override
	public void validate(Object univ, Errors errors) {
		// TODO Auto-generated method stub
		UniversityBean univ1=(UniversityBean)univ;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"universityname", "universityname","University Name Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "course", "course","Course is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"fees", "fees","Fees is Required");
		
		if(util_valid.isAplhabet(univ1.getUniversityname())){
			
		}else{
			errors.rejectValue("universityname","universityname","University is Not Alphabetic");
		}
		
		
		
		if(util_valid.isNumeric(univ1.getFees())){
			
		}else{
			errors.rejectValue("fees", "fee", "Fees is Not Numberic");
		}
		
	}

}
