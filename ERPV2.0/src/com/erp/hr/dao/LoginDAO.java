//--------------------
	// LoginDAO.java
//--------------------

/**
 * 
 */
package com.erp.hr.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.hr.bean.LoginBean;

/**
 * @author RAVI
 *
 */
public class LoginDAO {
	
	private HibernateTemplate ht;
	String status=null;
	List loginstatus;
	int status1=0;
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}
	

		public int loginCheck(String username,String password){
		
			
		loginstatus=ht.find("from LoginBean login where login.username=? and login.password=?",username,password);
		status1=loginstatus.size();
			System.out.println("Login Status Size=\t"+loginstatus.size());
			
			return status1;	
	}
	
	public void createLogin(LoginBean login){
		ht.save(login);
	}
	
}
