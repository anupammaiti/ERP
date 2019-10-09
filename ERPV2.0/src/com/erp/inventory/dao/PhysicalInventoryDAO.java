package com.erp.inventory.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.inventory.bean.PhysicalInventoryCount;

public class PhysicalInventoryDAO {
	
	HibernateTemplate ht;
	private List physicalinventoryreport;
	
	
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}

	public void createPhysicalinventoryCount(PhysicalInventoryCount phyinvcount){
		ht.save(phyinvcount);
	}
	public List viewPhysicalinventory(){
		physicalinventoryreport=ht.find("from PhysicalInventoryCount");
		return physicalinventoryreport;
	}
}
