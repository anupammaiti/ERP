package com.erp.inventory.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.erp.inventory.bean.PurchaseRequisitionBean;

public class PurchaseRequisitionDAO {

	HibernateTemplate ht;
	private List purchasereport;
	int genId=0;
	
	
	@Autowired
	public void setSessionFactory(SessionFactory session) {
		ht = new HibernateTemplate(session);
	}

	public void createPurchaseRequisition(PurchaseRequisitionBean purchasereq) {
		ht.save(purchasereq);
	}
	@SuppressWarnings("rawtypes")
	@Transactional
	public List viewPurchaseReport(){
		purchasereport=ht.find("from PurchaseRequisitionBean");
		return purchasereport;
	}
	@Transactional
	public int generatePurchaseRequisitionId(){
		purchasereport=ht.find("select COUNT(pr.sno) from PurchaseRequisitionBean pr");
		System.out.println("Purchase Id is:\t"+purchasereport.get(0));
		genId=(Integer)purchasereport.get(0);
		return genId;
	}
}
