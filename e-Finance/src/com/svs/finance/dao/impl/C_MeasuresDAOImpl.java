package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.MeasuresBean;
import com.svs.finance.dao.IN_MeasuresDAO;

public class C_MeasuresDAOImpl implements IN_MeasuresDAO {

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
	public boolean generateMesuresUnit(MeasuresBean measuresbean) {
		// TODO Auto-generated method stub
		id=(Long)ht.save(measuresbean);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

}
