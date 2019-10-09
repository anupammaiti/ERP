package com.svs.finance.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;



import com.svs.finance.bean.AutoExpencesesTravelBean;
import com.svs.finance.validation.util.C_ValidationUtil;

public class C_AutoTraveExpVali implements Validator {

	@Autowired
	C_ValidationUtil util_validation;
	
	
	@Override
	public boolean supports(Class<?> aClass) {
		// TODO Auto-generated method stub
		return AutoExpencesesTravelBean.class.equals(aClass);
	}

	@Override
	public void validate(Object travelexp, Errors errors) {
		// TODO Auto-generated method stub
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "completedby","completedby", "Completed by is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"location","location", "Location is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"auditedby","auditedby","Audited By is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address","address", "Address is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "purposeoftrip","purposeoftrip", "Purpose Of Trip is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "city", "city","City is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"approvedby", "approvedby","Approved By is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "state","state", "State is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "zipno","zipno", "Zip No is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phoneno","phoneno", "Phone No is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "date2","date2", "Date is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "travelfrom","travelfrom", "Travel From is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "odometerstart","odometerstart", "Odometer Start is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "odometerend","odometerend", "Odometer End is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rate","rate","Rate is Required");

		AutoExpencesesTravelBean travelexp1=(AutoExpencesesTravelBean)travelexp;
		
		
		//Is Alphabet Or Not.
		if(util_validation.isAplhabet(travelexp1.getCompletedby())){
			
		}else{
			errors.rejectValue("completedby", "completedby","Completed by is not a Alphabet");
		}
	if(util_validation.isAplhabet(travelexp1.getLocation())){
		
	}else{
		errors.rejectValue("location", "location","Location is not Alphabet");
	}
	if(util_validation.isAplhabet(travelexp1.getAuditedby())){
		
	}else{
		errors.rejectValue("auditedby", "auditedby", "Auditedby is Not Alphabet");
	}
	if(util_validation.isAplhabet(travelexp1.getAddress())){
		
	}else{
		errors.rejectValue("address", "address", "address");
	}
	if(util_validation.isAplhabet(travelexp1.getTravelfrom())){
		
	}else{
		errors.rejectValue("purposeoftrip", "purposeoftrip","Purpose Of Trip is Not Alphabet");
	}
	if(util_validation.isAplhabet(travelexp1.getCity())){
		
	}else{
		errors.rejectValue("city", "city", "City is not Alphabet");
	}
	if(util_validation.isAplhabet(travelexp1.getApprovedby())){
	
	}else{
		
	errors.rejectValue("approvedby", "approvedby", "Approvedby is Not Alphabet");
	}
	if(util_validation.isAplhabet(travelexp1.getState())){
		
	}else{
		errors.rejectValue("state", "state", "State is Not Alphabet");
	}
	if(util_validation.isNumeric(travelexp1.getZipno())){
		
	}else{
		errors.rejectValue("zipno", "zipno", "Zip No is Not Number");
	}
	if(util_validation.isNumeric(travelexp1.getPhoneno())){
		
	}else{
		errors.rejectValue("phoneno", "phoneno", "Phone No is Not Number");
	}
	if(util_validation.isAplhabet(travelexp1.getTravelfrom())){
		
	}else{
		errors.rejectValue("travelfrom", "travelfrom", "Travel From In Not Alphabet");
	}
	if(util_validation.isNumeric(travelexp1.getOdometerstart())){
		
	}else{
		errors.rejectValue("odometerstart", "odometerstart", "Odo Meter Start is Not Number");
	}
	if(util_validation.isNumeric(travelexp1.getRate())){
		
	}else{
		errors.rejectValue("rate", "rate", "Rate is Not Number");
	}
 }

}
