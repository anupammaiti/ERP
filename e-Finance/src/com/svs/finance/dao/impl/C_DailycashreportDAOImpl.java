package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.DailycashreportBean;
import com.svs.finance.dao.IN_DailycashreportDAO;

public class C_DailycashreportDAOImpl implements
		IN_DailycashreportDAO {
	
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
	public boolean generateDailycashreport(
			DailycashreportBean dailycashreportBean) {
		// TODO Auto-generated method stub
		long id=(long)ht.save(dailycashreportBean);
		if(id!=0)
		{
			insertorupdate=true;
		}
		else
		{
			insertorupdate=false;
		}
		return insertorupdate;
	}
	}

	
	
