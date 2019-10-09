package com.svs.finance.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.LoginBean;
import com.svs.finance.dao.IN_LoginDAO;

public class C_LoginDAOImpl implements IN_LoginDAO {

	private HibernateTemplate ht;
	private List loginlist=new ArrayList();
	private boolean insertorupdate=false;
	private Session session;
	private HashMap hmp=new HashMap();
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	@Override
	public boolean save(LoginBean loginbean) {
		// TODO Auto-generated method stub
		long id=(Long)ht.save(loginbean);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

	@Override
	public boolean loginCheckUp(String username, String password) {
		// TODO Auto-generated method stub
		String companyname=null;
		loginlist=ht.find("select lb.companyname from LoginBean lb where lb.username=? and lb.password=?",username,password);
		if(loginlist.size()!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		
		return insertorupdate;
	}

	@Override
	public List loginDetails(String username, String password) {
		// TODO Auto-generated method stub
		LoginBean login =new LoginBean();
		String comp=null;
		String a[]=new String[5];
		@SuppressWarnings("unchecked")
		List<LoginBean> loginList=ht.find("from LoginBean lb where lb.username=? and lb.password=?",username,password);
		if(loginList.size()!=0){
		
		//System.out.println("Companyname\t"+loginList.get(0).getCompanyname());
		//System.out.println("Designation\t"+loginList.get(0).getDesignation());
			//System.out.println("Designation"+loginlist.get(1));
		}
		
		
		
		System.out.println("Login Bean \t"+loginList.get(0).getCompanyname());
		return loginList;
	}

	@Override
	public boolean changePassword(String username, String password,
			String companyname) {
		// TODO Auto-generated method stub
		try{
			Query updatequery=session.createQuery("update LoginBean lb set lb.password=:password where lb.username=:username and lb.companyname=:companyname");
			updatequery.setString("password",password);
			updatequery.setString("username",username);
			updatequery.setString("companyname",companyname);
			long id=updatequery.executeUpdate();
			if(id!=0){
				insertorupdate=true;
				
			}else{
				insertorupdate=false;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return insertorupdate;
	}
	
	

}
