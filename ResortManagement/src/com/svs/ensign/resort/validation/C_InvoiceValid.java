package com.svs.ensign.resort.validation;

import java.text.NumberFormat;
import java.text.ParseException;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.ensign.resort.bean.InvoiceFormBean;

public class C_InvoiceValid implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object invoice, Errors errors) {
		// TODO Auto-generated method stub
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"srlno","srlno", "SrNo is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name","name", "Name is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "unitprice","unitprice", "Unit Price is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "quantity","quantity", "Quantity is Required");
		
		InvoiceFormBean inv=(InvoiceFormBean)invoice;
		
		try {
			NumberFormat.getInstance().parse(inv.getSrlno());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
		errors.rejectValue("", "","");
		}
		

	}

}
