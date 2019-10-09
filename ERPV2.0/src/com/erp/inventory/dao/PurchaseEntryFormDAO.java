package com.erp.inventory.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.inventory.bean.PurchaseEntryFormBean;

public class PurchaseEntryFormDAO {

	private HibernateTemplate ht;
	private List purchaseentrylist;
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}
	
	public void createPurchaseEntryForm(PurchaseEntryFormBean purchaseentrybean){
		ht.save(purchaseentrybean);
	}
	public List viewPurchaseEntryReport(){
		purchaseentrylist=ht.find("from PurchaseEntryFormBean");
		return purchaseentrylist;
	}
	public List viewPurchaseEntryName() {
		return purchaseentrylist=ht.find("select peb.nameofitem from PurchaseEntryFormBean peb");
	}
}
