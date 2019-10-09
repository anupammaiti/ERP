package com.erp.finance.dao;


import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.finance.bean.CompanyPaySlipBean;

public class CompanyPaySlipDAO {
	
	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session) {
		ht=new HibernateTemplate(session);
	}

	public void createCompanyPaySlip(CompanyPaySlipBean companypayslip) {
		ht.save(companypayslip);
	}
	
	public List getCompanyPaySlip() {
		return ht.find("from CompanyPaySlipBean");
	}
	
	
}
