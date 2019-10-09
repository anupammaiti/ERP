package com.svs.ensign.resort.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.svs.ensign.resort.bean.CashdisbursementsjournalBean;
import com.svs.ensign.resort.validation.util.C_ValidationUtil;

public class C_CashDistributionJournalValidation implements Validator {

	@Autowired
	C_ValidationUtil util_valid;
	
	@Override
	public boolean supports(Class aClass) {
		// TODO Auto-generated method stub
		return CashdisbursementsjournalBean.class.equals(aClass);
	}

	@Override
	public void validate(Object cdjournal, Errors errors) {
		// TODO Auto-generated method stub

		CashdisbursementsjournalBean cdjb=(CashdisbursementsjournalBean)cdjournal;
		
		
	}

}
