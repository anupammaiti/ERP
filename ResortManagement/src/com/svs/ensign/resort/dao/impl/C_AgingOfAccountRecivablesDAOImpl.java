package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.svs.ensign.resort.bean.AggingaccountreceivableBean;
import com.svs.ensign.resort.dao.IN_AgingOfAccountRecivableDAO;
@Repository
public class C_AgingOfAccountRecivablesDAOImpl implements
		IN_AgingOfAccountRecivableDAO {

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
	public boolean generateAgingOfAccountRecivable(
			AggingaccountreceivableBean agingaccountreceivable) {
		// TODO Auto-generated method stub
		
		return false;
	}

}
