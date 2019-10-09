package com.erp.finance.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.finance.bean.EntertainmentExpencesesBean;

public class EntertainmentExpencesesDAO {

	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session) {
		ht=new HibernateTemplate(session);
	}
	public void generateEntertainmentExpenceses(EntertainmentExpencesesBean entertainmentexpenceses) {
		ht.save(entertainmentexpenceses);
	}
}
