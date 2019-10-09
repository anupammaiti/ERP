package com.erp.sales.sl.dao;



import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.sales.sl.bean.PurchaseOrderBean;


public class PurchaseOrderDAO {

	HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}

	
	public void createPurchaseOrder(PurchaseOrderBean purchaseorder){
		System.out.println("Sales Order DAO");
		ht.save(purchaseorder);
	}
}
