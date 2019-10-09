package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.VocherJournalBean;
import com.svs.finance.dao.IN_VoucherJournalDAO;

public class C_VoucherJournalDAOImpl implements IN_VoucherJournalDAO {

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
	public boolean createVoucherJournal(VocherJournalBean voucherjournal) {
		// TODO Auto-generated method stub
		id=(Long)ht.save(voucherjournal);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}
	

}
