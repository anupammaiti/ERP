package com.svs.finance.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.svs.finance.bean.StudentBean;

public class StudentValidation implements Validator {

	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return StudentBean.class.equals(aClass);
	}

	@Override
	public void validate(Object stud, Errors errors) {
		// TODO Auto-generated method stub
		StudentBean stbean=(StudentBean)stud;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "entrollno","entrollno","entrollno is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "name","Name is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"fatherName", "fatherName","Father Name is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"motherName","motherName","Mother Name is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"phoneno", "phoneno","Phone Number is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "email","Email is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sem1", "sem1","Semi 1 is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sem2","sem2","Semister 2 is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sem3", "sem3","Semister 3 is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sem4", "sem4","Semister 4 is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"sem5", "sem5","Semister 5 is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sem6","sem6","Semister 6 is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "sem7", "sem7","Semister 7 is Required");
		
	}

}
