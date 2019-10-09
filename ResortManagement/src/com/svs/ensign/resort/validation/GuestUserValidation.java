package com.svs.ensign.resort.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.ensign.resort.cms.bean.GuestUserBean;

@Configuration
@PropertySource("message_en_US.properties")
public class GuestUserValidation implements Validator {

	
	@Autowired
	C_Validations util_valid;
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return GuestUserBean.class.equals(aClass);
	}

	@Override
	public void validate(Object guest, Errors errors) {
		// TODO Auto-generated method stub
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"guest_name","guest_name","username.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"guest_last_name","guest_last_name","1.02");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"mobileno","mobileno","1.02");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"email","email0","1.02");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"reqforcall","reqforcall","1.02");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"reqforquote","reqforquote","1.02");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"reqforvisit","reqforvisit","1.02");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "facing_villa","facing_villa","1.02");
		
		
		
		
	}

}
