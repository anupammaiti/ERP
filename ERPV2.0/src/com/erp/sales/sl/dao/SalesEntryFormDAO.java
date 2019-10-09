package com.erp.sales.sl.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.sales.sl.bean.SalesEntryFormBean;

public class SalesEntryFormDAO {
	
	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}
	
	public void createSalesEntryForm(SalesEntryFormBean salesentry){
		ht.save(salesentry);
	}
	
	public List getSalesEntryForm(){
		return ht.find("from SalesEntryFormBean");
	}
}
