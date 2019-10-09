package com.erp.finance.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.finance.bean.VocherPurchaseBean;

public class VocherPurchaseDAO {
	
	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}

	public void generateVocherPurchase(VocherPurchaseBean vocherpurchase){
		ht.save(vocherpurchase);
	}
}
