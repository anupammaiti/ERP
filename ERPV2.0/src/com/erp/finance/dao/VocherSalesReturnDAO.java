package com.erp.finance.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.finance.bean.VocherSalesReturnBean;

public class VocherSalesReturnDAO {

	private HibernateTemplate ht;

	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}

	public void generateVocherSalesReturn(VocherSalesReturnBean salesreturn){
		ht.save(salesreturn);
	}
}
