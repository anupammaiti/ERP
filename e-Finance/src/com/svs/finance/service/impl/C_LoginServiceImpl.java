package com.svs.finance.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.svs.finance.dao.IN_CompanyRegistrationDAO;
import com.svs.finance.dao.IN_LoginDAO;
import com.svs.finance.service.IN_LoginService;

public class C_LoginServiceImpl implements IN_LoginService {
	
	@Autowired
	IN_LoginDAO in_logindao;
	@Autowired 
	IN_CompanyRegistrationDAO in_companyregistrationdao;
	private boolean insertorupdate=false;
	
	@Override
	public boolean loginCheckup(String username, String password) {
		// TODO Auto-generated method stub
		
		return in_logindao.loginCheckUp(username, password);
	}

	@Override
	public List getLoginDetails(String username, String password) {
		// TODO Auto-generated method stub
		
		return in_logindao.loginDetails(username, password);
	}

	@Override
	public boolean updatePassword(String username, String password,
			String companyname) {
		
		// TODO Auto-generated method stub
		
		
		in_companyregistrationdao.updatePassword(username, password, companyname);
		in_logindao.changePassword(username, password, companyname);
		return insertorupdate;
	}

}
