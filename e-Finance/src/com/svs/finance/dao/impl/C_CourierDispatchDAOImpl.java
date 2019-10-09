package com.svs.finance.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.CourierDispatchDetailsBean;
import com.svs.finance.dao.IN_CourierDispathDAO;

public class C_CourierDispatchDAOImpl implements IN_CourierDispathDAO {

	private HibernateTemplate ht;
	private List<CourierDispatchDetailsBean> cddbList;
	private boolean insertorupdate=false;
	private Session session;
	
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	
	@Override
	public boolean generateCourierDispath(
			CourierDispatchDetailsBean courierdispath) {
		// TODO Auto-generated method stub
		long id=(long)ht.save(courierdispath);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}


	@Override
	public List<CourierDispatchDetailsBean> searchCourierDispath(CourierDispatchDetailsBean cddb) {
		// TODO Auto-generated method stub
		cddbList=ht.find("from CourierDispatchDetailsBean cddb where cddb.paymentmode=? or cddb.displatchmode=? or cddb.byhand=?",cddb.getPaymentmode(),cddb.getDisplatchmode(),cddb.getByhand());
		System.out.println("Courier Dispath Details List Size"+cddbList.size());
		return cddbList;
	}

}
