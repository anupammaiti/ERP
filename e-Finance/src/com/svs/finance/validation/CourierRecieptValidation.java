package com.svs.finance.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.CourierRecieptBean;

public class CourierRecieptValidation implements Validator {

	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return CourierRecieptBean.class.equals(aClass);
	}

	@Override
	public void validate(Object courierReciept, Errors errors) {
		// TODO Auto-generated method stub
		CourierRecieptBean courierreciept=(CourierRecieptBean)courierReciept;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "formtype", "formtype","Form Type is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "dcforeligibility","dcforeligibility","Document For Eligibility is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"misleneous", "misleneous","Misleneous is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "weightofcourier","weightofcourier", "Weight Of Courier");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "paymentmode", "paymentmode","Payment is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"ccno", "ccno","Courier Consugating No is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "ccompany", "ccompany","Courier Company is Required");
		
		

	}

}
