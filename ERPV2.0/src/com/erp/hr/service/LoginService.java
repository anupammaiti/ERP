//-----------------------
//LoginService.java
//-----------------------

/**
 * 
 */
package com.erp.hr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.erp.hr.dao.LoginDAO;

/**
 * @author RAVI
 */
public class LoginService {

	@Autowired
	private LoginDAO logindao;
	String status=null;
	List loginstatus;
	int status1=0;
public int loginCheck(String username,String password){
		
		System.out.println("Login Service");
				
		status1=logindao.loginCheck(username,password);
		return status1;
	}
}
