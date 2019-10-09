package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.EntertainmentExpencesesBean;
import com.svs.finance.dao.IN_EntertainmentExpDAO;

public class C_EntertainmentExpDAOImpl implements IN_EntertainmentExpDAO {

	private HibernateTemplate ht;
	private Session session;
	private boolean insertorupdate=false;
	private List entertainmentexplist;
	private long id=0;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		try{
			 ht = new HibernateTemplate(sessionfactory);
			 session=sessionfactory.openSession();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	
	@Override
	public boolean generateEntertainmentExp(
			EntertainmentExpencesesBean entertainmentexp) {
		// TODO Auto-generated method stub
				ht.save(entertainmentexp);
		if(id!=0){
			insertorupdate=true;
			
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

}
