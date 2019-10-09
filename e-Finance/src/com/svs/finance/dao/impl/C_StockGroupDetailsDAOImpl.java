package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.StockGroupBean;
import com.svs.finance.dao.IN_StockGroup;

public class C_StockGroupDetailsDAOImpl implements IN_StockGroup {

	private HibernateTemplate ht;
	private List apprisiallist;
	private boolean insertorupdate=false;
	private Session session;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	@Override
	public boolean generateStockGroup(StockGroupBean stockgroup) {
		// TODO Auto-generated method stub
		long id=(long)ht.save(stockgroup);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

}
