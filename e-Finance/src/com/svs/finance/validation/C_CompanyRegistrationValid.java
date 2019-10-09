package com.svs.finance.validation;

import java.text.NumberFormat;
import java.text.ParseException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.CompanyRegistrationBean;
import com.svs.finance.validation.util.C_ValidationUtil;

public class C_CompanyRegistrationValid implements Validator {

	@Autowired
	C_ValidationUtil util_valid;
	
	
	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object companyRegistrationBean, Errors error) {
		// TODO Auto-generated method stub
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "companyname", "companyname.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "username","username", "UserName is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "mobileno","mobileno","Mobile No is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "landline","landline", "Land Line is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "email","email", "Email is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "password", "password","Password is Required");
		
		CompanyRegistrationBean crb=(CompanyRegistrationBean)companyRegistrationBean;

		
		//Mobile No Number Or Not.
		System.out.println("mobile No \t"+crb.getMobileno());
			if(util_valid.isNumeric(crb.getMobileno())){
				
			}else{
				error.rejectValue("mobileno","mobileno", "Please enter Numbers");
			}
		
		
		
		
		//Mobile No Number length
		if(util_valid.getMobileNo(crb.getMobileno())){
			
		}else{
			error.rejectValue("mobileno","mobileno", "Enter 10 Digit Mobile No");
		}
			
		//Land Line Number.
		 
	 
	      if (util_valid.isLandLine(crb.getLandline())) {
	    	  //System.out.println("Phone Number Valid");
	    	  
	      }
	      else
	      {
	    	  //System.out.println("Phone Number must be in the form XXX-XXXXXXX");
	    	  error.rejectValue("landline","landline","Land Line Number must be in  the form (XXX-XXXXXXXX)");
	      }
		
	    //Email Id
			Pattern p1 = Pattern.compile(".+@.+\\.[a-z]+");
			Pattern p2=Pattern.compile(".+@.+\\.[a-z]+");
	        Matcher m = p1.matcher(crb.getEmail());
	        Matcher m1=	p2.matcher(crb.getUsername());
	        //check  whether any match is found 
	        boolean userid=m1.matches();
	        boolean matchFound = m.matches();

	        if (!matchFound)
	        {
	                error.rejectValue("email","email" ," invalid e-mail");
	        }
	        
	        if(!userid){
	        	error.rejectValue("username","username","Invalid User Mail id");
	        }
		
		
	}

}
