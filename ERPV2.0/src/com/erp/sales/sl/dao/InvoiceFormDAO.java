package com.erp.sales.sl.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.sales.sl.bean.InvoiceFormBean;

public class InvoiceFormDAO {
	
	HibernateTemplate ht;
	List invoicereportlist;
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}

	public void createInvoiceForm(InvoiceFormBean invoicebean){
		ht.save(invoicebean);
	}
	
	public List getInvoiceReport(){
		invoicereportlist=ht.find("from InvoiceFormBean");
		return invoicereportlist;
	}
}
