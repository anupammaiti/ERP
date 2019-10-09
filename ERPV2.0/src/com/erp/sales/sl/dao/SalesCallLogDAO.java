package com.erp.sales.sl.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.sales.sl.bean.SalesCallLog;

public class SalesCallLogDAO {

	HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}
	
	public void createCallLog(SalesCallLog salescalllog){
		ht.save(salescalllog);
	}
	public List getCallLog(){
		return ht.find("from SalesCallLog");
	}
	
}
