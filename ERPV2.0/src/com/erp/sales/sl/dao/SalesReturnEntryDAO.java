package com.erp.sales.sl.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.sales.sl.bean.SalesReturnEntryForm;

public class SalesReturnEntryDAO {
	
	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}
	
	public void createSalesReturn(SalesReturnEntryForm salesreturn){
		ht.save(salesreturn);
	}
	
	public List getSalesReturnEntry(){
		return ht.find("from SalesReturnEntryForm");
	}
}
