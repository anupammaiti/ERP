package com.svs.ensign.resort.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.ensign.resort.bean.InternetExpBean;
import com.svs.ensign.resort.validation.util.C_ValidationUtil;

public class C_InternetExpValid implements Validator {

	@Autowired
	C_ValidationUtil util_validation;
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return InternetExpBean.class.equals(aClass);
	}

	@Override
	public void validate(Object intexp, Errors errors) {
		// TODO Auto-generated method stub
		InternetExpBean interexp=(InternetExpBean)intexp;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"apporvedby","apporvedby","Apporved By is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "companyname","companyname","Company Name is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "package1","package1","Package is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rate","rate","Rate is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "installments","installments","Installment is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "amount","amount", "Amount is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "paymentplan","paymentplan", "Payment Plan is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "mobileno","mobileno","Mobile No is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phoneno","phoneno","Land Line is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"complientno","complientno","Complient No is Required");
		
		if(util_validation.isAplhabet(interexp.getApporvedby())){
			
		}else{
			errors.rejectValue("apporvedby","apporvedby","Approved By is Not Alphabet");
		}
		if(util_validation.isAplhabet(interexp.getCompanyname())){
			
		}else{
			errors.rejectValue("package1","package1","Package is not Alphabet");
		}
		if(util_validation.isNumeric(interexp.getRate())){
			
		}else{
			errors.rejectValue("rate","rate", "Rate is Not Numeric");
			
		}
		if(util_validation.isNumeric(interexp.getInstallments())){
			
		}else{
			errors.rejectValue("installments","installments","Installment is not Numeric");
		}
		if(util_validation.isNumeric(interexp.getAmount())){
			
		}else{
			errors.rejectValue("amount","amount","Amount is not Numeric");
		}
		if(util_validation.isAlphaNumeric(interexp.getPaymentplan())){
			
		}else{
			errors.rejectValue("paymentplan", "paymentplan", "Payment Plan is not Alpha Numeric");
		}
		if(util_validation.isNumeric(interexp.getPhoneno())){
			
		}else{
			errors.rejectValue("phoneno","phoneno","Phone no is not Numeric");
		}
		if(util_validation.isNumeric(interexp.getMobileno())){
			
		}else{
			errors.rejectValue("mobileno","mobileno","Mobile No is not Numeric");
		}
		if(util_validation.getMobileNo(interexp.getMobileno())){
			
		}else{
			errors.rejectValue("mobileno","mobileno","Enter 10 Digit Mobile No");
		}
		/*if(util_validation.isLandLine(interexp.getPhoneno())){
			
		}else{
			errors.rejectValue("phoneno","phoneno","Phone No to be [0-7]-[5-10] in Range");
		}*/
	}

}
