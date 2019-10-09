package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.CashreceiptsjournalBean;
import com.svs.finance.dao.IN_CashreceiptsjournalDAO;

public class C_CashreceiptsjournalDAOImpl implements
		IN_CashreceiptsjournalDAO {
	
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
	public boolean generatecashreceiptsjournal(
			CashreceiptsjournalBean cashreceiptsjournalBean) {
		// TODO Auto-generated method stub
		long id=(long)ht.save(cashreceiptsjournalBean);
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

