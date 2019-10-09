package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.MisleniousExpencesesBean;
import com.svs.finance.dao.IN_MisleneousExpDAO;

public class C_MisleneousExpDAOImpl implements IN_MisleneousExpDAO {

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
	public boolean generateMisleneousExp(MisleniousExpencesesBean misleniousexp) {
		// TODO Auto-generated method stub
		try{
			id=(Long)ht.save(misleniousexp);
			if(id!=0){
				insertorupdate=true;
				
			}else{
				insertorupdate=false;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return insertorupdate;
	}

}
