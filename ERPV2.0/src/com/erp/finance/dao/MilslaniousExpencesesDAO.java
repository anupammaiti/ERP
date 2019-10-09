package com.erp.finance.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.finance.bean.MisleniousExpencesesBean;

public class MilslaniousExpencesesDAO {

	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session) {
		ht=new HibernateTemplate(session);
	}
	
	public void generateMislaniousExpenceses(MisleniousExpencesesBean mislaniousexpenceses) {
		ht.save(mislaniousexpenceses);
		
	}
}