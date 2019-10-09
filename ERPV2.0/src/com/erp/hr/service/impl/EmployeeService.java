package com.erp.hr.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.erp.hr.bean.EmployeeBean;
import com.erp.hr.bean.LoginBean;
import com.erp.hr.dao.EmployeeDAO;
import com.erp.hr.dao.LoginDAO;

public class EmployeeService {

	@Autowired
	EmployeeDAO empdao;
	@Autowired
	LoginDAO logindao;
	
	LoginBean login=new LoginBean();
	
	public void createEmployee(EmployeeBean empbean){
		
		System.out.println("Username"+empbean.getUsername());
		System.out.println("Password"+empbean.getPassword());
		
		login.setUsername(empbean.getUsername());
		login.setPassword(empbean.getPassword());
		empdao.createEmployee(empbean);
		logindao.createLogin(login);
		
	}
	
	
}
