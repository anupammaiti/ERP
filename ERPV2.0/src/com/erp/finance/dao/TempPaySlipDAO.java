package com.erp.finance.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.finance.bean.TempPaySlipBean;



public class TempPaySlipDAO {

	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session) {
		ht=new HibernateTemplate(session);
	}
	public void generateTempPaySlip(TempPaySlipBean temppayslip) {
		ht.save(temppayslip);
	}
	public List getTempPaySlip() {
		return ht.find("from TempPaySlipBean");
	}
	
}
