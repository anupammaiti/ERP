package com.svs.finance.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.HotelExpensesBean;
import com.svs.finance.validation.util.C_ValidationUtil;

public class C_HotelExpValid implements Validator {

	@Autowired
	C_ValidationUtil util_valid;
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return HotelExpensesBean.class.equals(aClass);
	}

	@Override
	public void validate(Object hotel, Errors errors) {
		// TODO Auto-generated method stub
		HotelExpensesBean hotelexp=(HotelExpensesBean)hotel;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phoneno","phoneno", "Mobile No is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"location","location", "Location is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "approvedby", "approvedby", "Approved By is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "noofdays","noofdays", "Number Of Days is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "hotelname","hotelname", "Hotel Name is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "hotellocation","hotellocation", "Hotel Location is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"amountperday", "amountperday","Amount Per Day is Required");
		
		if(util_valid.isNumeric(hotelexp.getPhoneno())){
			
		}else{
			errors.rejectValue("phoneno", "phoneno", "Phone no is not Number");
		}
		if(util_valid.getMobileNo(hotelexp.getPhoneno())){
			
		}else{
			
			errors.rejectValue("phoneno","phoneno","Enter 10 Digits Phone No");
		}
		if(util_valid.isAplhabet(hotelexp.getLocation())){
			
		}else{
			errors.rejectValue("location","location","Location is Not Alphabet");
		}
		if(util_valid.isAplhabet(hotelexp.getApprovedby())){
			
		}else{
			errors.rejectValue("approvedby", "approvedby", "Approved By is Not Alphabet");
		}
		if(util_valid.isNumeric(hotelexp.getNoofdays())){
			
		}else{
			errors.rejectValue("noofdays","noofdays","No Of Days is not Number");
		}
		if(util_valid.isAplhabet(hotelexp.getHotelname())){
			
		}else{
			errors.rejectValue("hotelname","hotelname","Hotel Name is Not Alphabet");
		}
		if(util_valid.isAplhabet(hotelexp.getHotellocation())){
			
		}else{
			errors.rejectValue("hotellocation","hotellocation","Hotel Location is Not Alphabet");
		}
		if(util_valid.isNumeric(hotelexp.getAmountperday())){
			
		}else{
			errors.rejectValue("amountperday","amountperday","Amount Per Day is Not Numeric");
		}
		
	}

}
