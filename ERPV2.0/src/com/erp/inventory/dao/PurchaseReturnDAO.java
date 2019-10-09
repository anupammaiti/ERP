package com.erp.inventory.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.inventory.bean.InPurchaseReturnBean;

public class PurchaseReturnDAO {
	
	private HibernateTemplate ht;
	
	@Autowired
	private void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
		
	}

	public void createPurchaseReturn(InPurchaseReturnBean purchasereturn){
		System.out.println("purchase reenter Form");
		ht.save(purchasereturn);
	}
	public List viewPurchaseReturnReport(){
		return ht.find("from InPurchaseReturnBean");
	}
}
