package com.svs.ensign.resort.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.ensign.resort.bean.OfficeExp;
import com.svs.ensign.resort.validation.util.C_ValidationUtil;

public class C_OfficeExpValid implements Validator {

	@Autowired
	C_ValidationUtil util_valid;
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return OfficeExp.class.equals(aClass);
	}

	@Override
	public void validate(Object offexp, Errors errors) {
		// TODO Auto-generated method stub
		OfficeExp ofexp=(OfficeExp)offexp;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"approvedby","approvedby","Approved By is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "itemname","itemname","Item Name is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "quantity","quantity","Quantity is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "amountperitem","amountperitem","Item Amount is Required ");
		
		if(util_valid.isAplhabet(ofexp.getApprovedby())){
			
		}else{
			errors.rejectValue("approvedby","approvedby","Approved By is Not Alphabetic");
		}
		if(util_valid.isAplhabet(ofexp.getItemname())){
			
		}else{
			errors.rejectValue("itemname","itemname","Item Name is not Alphabetic");
		}
		if(util_valid.isNumeric(ofexp.getQuantity())){
			
		}else{
			errors.rejectValue("quantity","quantity","Quantity is Not Numeric");
		}
		if(util_valid.isNumeric(ofexp.getAmountperitem())){
			
		}else{
			errors.rejectValue("amountperitem","amountperitem","Amount Per Item is not Numeric");
		}
	}

}
