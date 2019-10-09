package com.svs.finance.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.RepairMaintenenceBean;
import com.svs.finance.validation.util.C_ValidationUtil;

public class C_RepairAndMaintenanceValid implements Validator {

	@Autowired
	C_ValidationUtil util_valid;
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return RepairMaintenenceBean.class.equals(aClass);
	}

	@Override
	public void validate(Object repexp1, Errors errors) {
		// TODO Auto-generated method stub
		RepairMaintenenceBean repexp=(RepairMaintenenceBean)repexp1;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"approvedby","approvedby","Approved By is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"itemname","itemname","Item Name is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"quantity","quantity","Quantity is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"amount","amount","Amount is Required");
		
		if(util_valid.isAplhabet(repexp.getApprovedby())){
			
		}else{
			errors.rejectValue("approvedby","approvedby","Approved By is not Alphabetic");
		}
		if(util_valid.isAplhabet(repexp.getItemname())){
			
		}else{
			errors.rejectValue("itemname","itemname","Item Name is not Alphabetic");
		}
		if(util_valid.isNumeric(repexp.getQuantity())){
			
		}else{
			errors.rejectValue("quantity","quantity","Quantity is not Numeric");
		}
		if(util_valid.isNumeric(repexp.getAmount())){
			
		}else{
			errors.rejectValue("amount","amount","Amount is not Numeric");
		}
	}

}
