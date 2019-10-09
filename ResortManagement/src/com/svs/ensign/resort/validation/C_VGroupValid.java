package com.svs.ensign.resort.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.ensign.resort.bean.GroupDetailsBean;
import com.svs.ensign.resort.validation.util.C_ValidationUtil;

public class C_VGroupValid implements Validator {

	@Autowired
	C_ValidationUtil util_valid;
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return GroupDetailsBean.class.equals(aClass);
	}

	@Override
	public void validate(Object groups, Errors errors) {
		// TODO Auto-generated method stub
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"name","name","Group Name is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"natureofgroup","natureofgroup","Nature Of Group is Required");
		GroupDetailsBean group=(GroupDetailsBean)groups;
		if(util_valid.isAplhabet(group.getName())){
			
		}else{
			errors.rejectValue("name","name","Group Name is not Alphabetic");
		}
		
	}

}
