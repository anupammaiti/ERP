package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.NonTradingExpencesesBean;
import com.svs.finance.dao.IN_NonTradingExpDAO;

public class C_NonTradingExpDAOImpl implements IN_NonTradingExpDAO {

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
	public boolean generateNonTradingExp(NonTradingExpencesesBean nontradingexp) {
		// TODO Auto-generated method stub
		long id=(long)ht.save(nontradingexp);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

}
