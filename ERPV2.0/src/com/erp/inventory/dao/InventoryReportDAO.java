package com.erp.inventory.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.inventory.bean.InventoryReportBean;

public class InventoryReportDAO {

	HibernateTemplate ht;
	List inventoryreport;
	
	@Autowired
	public void setSessionFactory(SessionFactory session) {
		ht = new HibernateTemplate(session);
	}

	public void createInventoryReport(InventoryReportBean inventoryreport) {
		ht.save(inventoryreport);
	}
	public List viewInventoryReport(){
		inventoryreport=ht.find("from InventoryReportBean");
		return inventoryreport; 
	}
}
