package com.svs.finance.validation;

import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.EmployeeBean;

public class C_EmployeeValid implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object employ, Errors errors) {
		// TODO Auto-generated method stub
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstname", "firstname","First Name is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastname", "lastname", "Last Name is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "mobileno", "mobileno","Mobile No is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username","username", "User Name is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"qualification","qualification", "Qualification is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"dateofbirth","dateofbirth", "Date Of Birth is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "dateofjoining", "dateofjoining","Date Of Joing is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "emailid","emailid", "E-mail is Required");
		
		EmployeeBean emp1=(EmployeeBean)employ;
		
		try {
			NumberFormat.getInstance().parse(emp1.getMobileno());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			errors.rejectValue("mobileno", "mobileno","Mobile is to be Number");}
		
		//Email Id
		Pattern p1 = Pattern.compile(".+@.+\\.[a-z]+");
		Pattern p2=Pattern.compile(".+@.+\\.[a-z]+");
        Matcher m = p1.matcher(emp1.getEmailid());
        Matcher m1=	p2.matcher(emp1.getUsername());
        //check  whether any match is found 
        boolean userid=m1.matches();
        boolean matchFound = m.matches();

        if (!matchFound)
        {
                errors.rejectValue("emailid","emailid" ," invalid e-mail");
        }
        
        if(!userid){
        	errors.rejectValue("username","username","Invalid User Mail id");
        }
        
		//Mobile No
		if((emp1.getMobileno().length()==10)){
			
		}else{
			errors.rejectValue("mobileno","mobileno", "10 Digit Mobile Number");
		}
		
		
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	    //To make strict date format validation
	    formatter.setLenient(false);
	    Date parsedDate = null;
	    try {
	        parsedDate = formatter.parse(emp1.getDateofbirth());
	        //System.out.println("++validated DATE TIME ++"+formatter.format(parsedDate));

	    } catch (ParseException e) {
	        //Handle exception
	    	errors.rejectValue("dateofbirth", "dateofbirth", "Date Format should be yyyy-MM-dd");
	    }
	    
	    try {
	        parsedDate = formatter.parse(emp1.getDateofjoining());
	        //System.out.println("++validated DATE TIME ++"+formatter.format(parsedDate));

	    } catch (ParseException e) {
	        //Handle exception
	    	errors.rejectValue("dateofjoining", "dateofjoining", "Date Format should be yyyy-MM-dd");
	    }
		
		
		
		
		
	}

}
