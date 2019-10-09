package com.svs.finance.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.CompanyPaySlipBean;
import com.svs.finance.dao.IN_CompanyPaySlipDAO;

public class C_CompanyPaySlipDAOImpl implements IN_CompanyPaySlipDAO {

	private HibernateTemplate ht;
	private List closingstocklist=new ArrayList();
	private boolean insertorupdate=false;
	private Session session;
	
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	
	@Override
	public boolean generateCompanyPaySlip(CompanyPaySlipBean companypayslip) {
		// TODO Auto-generated method stub
		long id=(Long)ht.save(companypayslip);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<CompanyPaySlipBean> viewCompanyPaySlipByCollegeName(
			String compname) {
		// TODO Auto-generated method stub
		
		List<CompanyPaySlipBean> lst_comppaylist=ht.find("from CompanyPaySlipBean cpb where cpb.companyname=?",compname);
		
		return lst_comppaylist;
	}

}
