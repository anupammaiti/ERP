package com.svs.finance.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.CompanyRegistrationBean;
import com.svs.finance.dao.IN_CompanyRegistrationDAO;

public class C_CompanyRegistrationDAOImpl implements IN_CompanyRegistrationDAO {
	private HibernateTemplate ht;
	private List companylist=new ArrayList();
	private boolean insertorupdate=false;
	private Session session;
	
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	
	@Override
	public boolean generateCompany(CompanyRegistrationBean companyregistration) {
		// TODO Auto-generated method stub
		long id=(long)ht.save(companyregistration);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}


	@Override
	public boolean viewCompanyIsAvailable(String username, String companyname) {
		// TODO Auto-generated method stub
		companylist=ht.find("from CompanyRegistrationBean compreg where compreg.username=? and compreg.companyname=? ",username,companyname);
		if(companylist.size()!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}


	@Override
	public boolean updateCompanyLogoPath(String companyname, String path,String filename) {
		// TODO Auto-generated method stub
		Query updatequery=session.createQuery("update CompanyRegistrationBean crb set crb.logopath=:logopath,crb.logoname=:logoname where crb.companyname=:companyname");
		updatequery.setString("logopath", path);
		updatequery.setString("companyname", companyname);
		updatequery.setString("logoname", filename);
		int id=updatequery.executeUpdate();
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}


	@Override
	public boolean updatePassword(String username, String password,
			String companyname) {
		// TODO Auto-generated method stub
		Query updatequery=session.createQuery("update CompanyRegistrationBean crb set crb.password=:password where crb.username=:username and crb.companyname=:companyname");
		updatequery.setString("password", password);
		updatequery.setString("username", username);
		updatequery.setString("companyname",companyname);
		long id=updatequery.executeUpdate();
		if(id!=0)
		{
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		
		return insertorupdate;
	}


	@Override
	public String viewImageByCompanyName(String companyname) {
		// TODO Auto-generated method stub
		companylist=ht.find("select crb.logoname from CompanyRegistrationBean crb where crb.companyname=?",companyname);
		System.out.println("Company Name\t"+companylist.get(0));
		String imagename=(String)companylist.get(0);
		System.out.println("CompanynList size\t"+companylist.size());
		return imagename;
	}

}
