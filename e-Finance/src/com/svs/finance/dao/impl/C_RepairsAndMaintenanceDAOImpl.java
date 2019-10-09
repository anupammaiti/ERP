package com.svs.finance.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.RepairMaintenenceBean;
import com.svs.finance.dao.IN_RepairsAndMaintenanceDAO;

public class C_RepairsAndMaintenanceDAOImpl implements
		IN_RepairsAndMaintenanceDAO {

	private HibernateTemplate ht;
	private List closingstocklist=new ArrayList();
	private boolean insertorupdate=false;
	private Session session;
	
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	
	@Override
	public boolean generateRepairsAndMaintenance(
			RepairMaintenenceBean repairmaintenance) {
		// TODO Auto-generated method stub
		long id=(long)ht.save(repairmaintenance);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

}
