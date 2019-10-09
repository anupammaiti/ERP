package com.svs.finance.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.AdvertisementExpenses;
import com.svs.finance.validation.util.C_ValidationUtil;

public class C_AdvertisementsValid implements Validator {

	@Autowired
	C_ValidationUtil util_valid;
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return AdvertisementExpenses.class.equals(aClass);
	}

	@Override
	public void validate(Object advexp, Errors errors) {
		AdvertisementExpenses advexp1=(AdvertisementExpenses)advexp;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"companyname","companyname","Company Name is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "onissues","onissues","OnIssues is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"typeofaddress","typeofaddress","Advertisement is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "noofseconds","noofseconds","No Of Seconds is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"mobileno","mobileno","Mobile No is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "landno","landno", "Land Line No is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"amount","amount","Amout is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"approvedby","approvedby","Approved By is Required");
		if(util_valid.isAplhabet(advexp1.getCompanyname())){
			
		}else{
			errors.rejectValue("companyname","companyname","Company Name is Not Alphabetic");
		}
		if(util_valid.isAplhabet(advexp1.getOnissues())){
			
		}else{
			errors.rejectValue("onissues","onissues","On issues is Not Alphabetic");
		}
		if(util_valid.isAplhabet(advexp1.getTypeofaddress())){
			
		}else{
			errors.rejectValue("typeofaddress","typeofaddress","Type Of Advertisement");
		}
		if(util_valid.isNumeric(advexp1.getNoofseconds())){
			
		}else{
			errors.rejectValue("noofseconds","noofseconds","No of Seconds is not Numeric");
		}
		if(util_valid.isNumeric(advexp1.getMobileno())){
			
		}else{
			errors.rejectValue("mobileno","mobileno","Mobile No is not Numeric");
		}
		if(util_valid.isNumeric(advexp1.getLandno())){
			
		}else{
			errors.rejectValue("landno","landno","Land Line is not Numeric");
		}
		if(util_valid.isNumeric(advexp1.getAmount())){
			
		}else{
			errors.rejectValue("amount","amount","Amount is not Numeric");
		}
		if(util_valid.isAplhabet(advexp1.getApprovedby())){
			
		}else{
			errors.rejectValue("approvedby","approvedby","Approved By is not Alphabetic");
		}
	}

}
