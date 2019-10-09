package com.svs.finance.validation;

import java.text.NumberFormat;
import java.text.ParseException;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.VatAndTaxBean;

public class C_Validations implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object vatandtax, Errors errors) {
		// TODO Auto-generated method stub
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "vat", "vat","Vat is Required");
		ValidationUtils.rejectIfEmpty(errors, "tax","tax","Tax is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "eduservicetax", "eduservicetax","Tax is Required");
		VatAndTaxBean vattax=(VatAndTaxBean)vatandtax;
		
		try {
			NumberFormat.getInstance().parse(vattax.getVat());
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			errors.rejectValue("vat", "vat","It is not A Number");
			
		}
		
		try {
			NumberFormat.getInstance().parse(vattax.getTax());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			errors.rejectValue("tax","tax","It is not A Number");
		}
		
		try {
			NumberFormat.getInstance().parse(vattax.getEduservicetax());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			errors.rejectValue("eduservicetax", "eduservicetax","It is Not A Number");
		}
		
		if((vattax.getTax().length()>0)&&(vattax.getTax().length()<2)){
			
		}else{
			errors.rejectValue("tax", "tax","Tax length should be 0-2");
		}
		
	}

	
	
}
