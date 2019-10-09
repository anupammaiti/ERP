package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.svs.ensign.resort.bean.StockGroupDetailsBean;
import com.svs.ensign.resort.dao.IN_StockGroupDAO;
@Repository
public class C_StockGroupDAOImpl implements IN_StockGroupDAO {

	private HibernateTemplate ht;
	private boolean insertorupdate=false;
	private List salesorderlist;
	private Session session;
	private long id=0;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		try {
			ht=new HibernateTemplate(sessionfactory);
			session=sessionfactory.openSession();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@Override
	public boolean createStockGroup(StockGroupDetailsBean stockgroup) {
		// TODO Auto-generated method stub
		id=(Long)ht.save(stockgroup);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

}
