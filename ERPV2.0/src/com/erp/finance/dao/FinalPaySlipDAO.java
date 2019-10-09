package com.erp.finance.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.finance.bean.FinalPaySlipBean;

public class FinalPaySlipDAO {
	
	private HibernateTemplate ht;
	
	
	@Autowired
	public void setSessionFactory(SessionFactory session) {
		ht=new HibernateTemplate(session);
	}

	public void generateFialPaySlip(FinalPaySlipBean fialpayslip) {
		ht.save(fialpayslip);
	}
	
	public List getFinalPaySlip() {
	return ht.find("from FinalPaySlipBean");	
	}
}
