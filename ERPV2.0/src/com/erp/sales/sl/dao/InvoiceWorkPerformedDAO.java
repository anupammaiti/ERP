package com.erp.sales.sl.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.sales.sl.bean.InvoiceWorkPerformBean;

@Resource
public class InvoiceWorkPerformedDAO {

	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}
	public void createInvoiceWorkPerformed(InvoiceWorkPerformBean invoiceworkperformed){
		ht.save(invoiceworkperformed);
	}
}
