package com.svs.finance.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.FinalPaySlipBean;
import com.svs.finance.dao.IN_FinalPaySlipDAO;

public class C_FinalPaySlipDAO implements IN_FinalPaySlipDAO {

	
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
	public boolean generateFinalPaySlip(FinalPaySlipBean finalpayslip) {
		// TODO Auto-generated method stub
		long id=(long)ht.save(finalpayslip);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

}
