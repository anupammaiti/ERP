package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.LoginBean;
import com.svs.ensign.resort.dao.IN_LoginDAO;
import com.svs.ensign.resort.util.AppTrack;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;


/**
 * C_LoginDAOImpl.java
 * 
 * @author RaviKiran, Feb 3, 2014
 * 
 * This Class Contains Operations on tl_login table.
 * 
 */
@Repository
public class C_LoginDAOImpl implements IN_LoginDAO {

	private HibernateTemplate ht;
	private List loginstatuslist;
	private Session session;
	private boolean insertorupdate=false;
	JSONObject respObj = new JSONObject();
	/**
	 * 
	 * @param sessionfactory
	 * Autowired the SessionFactory Class to C_LoginDAOImpl.java class by using HibernateTemplate Class.
	 */
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory) {
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	/**
	 * Creating the LoginBean Data to DataBase.
	 */
	@Override
	public void createLogin(LoginBean loginbean) {
		// TODO Auto-generated method stub
			ht.save(loginbean);
	}
	/**
	 *@param username getting the username from login Screen.
	 *@param password getting the password from login Screen.
	 * Sending the status of the Login. 
	 * 
	 */
	@Transactional	
	@Override
	public JSONObject checkLogin(String username, String password) {
		// TODO Auto-generated method stub
                AppTrack.info("Login for username"+username+"Password is"+password);
		loginstatuslist=ht.find("select lb.department from LoginBean lb where lb.username=? and lb.password=?", username, password);
                AppTrack.info("Result for login "+loginstatuslist);
                respObj=C_Util_Misleneous.convBeanToJSNArray(loginstatuslist);
		return respObj;
	}

	/**
	 * @param userName name of the user.
	 * @param oldPassword old password.
	 * @param newPassword newPassword.
	 *  To modify the password according to user convinent.
	 */
	@Override
	public boolean edingLogin(String userName, String oldPassword,
			String newPassword) {
		// TODO Auto-generated method stub
		//System.out.println("Change Password in DAO");
		//ht.update("update LoginBean lb set lb.password=? where lb.username=?",password,username );
		Query updatequery=session.createQuery("update LoginBean lb set lb.password=:password where lb.username=:username");
		updatequery.setString("password", newPassword);
		updatequery.setString("username",userName);
		int updated=updatequery.executeUpdate();
		//System.out.println("Query Updated"+updated);
		if(updated!=0){
			insertorupdate=true;
		}
		else{
			insertorupdate=false;
		}
		return insertorupdate;
	}
	@Transactional
	@Override
	public boolean passwordCheck(String username, String password) {
		// TODO Auto-generated method stub
		boolean passwordcheck=false;
		loginstatuslist=ht.find("from LoginBean lb where lb.username=? and lb.password=?",username,password);
                C_Util_Misleneous.convBeanToJSNArray(loginstatuslist);
		if(loginstatuslist.size()!=0){
			passwordcheck=true;
		}
		else{
			passwordcheck=false;
		}
		return passwordcheck;
	}

	
}
