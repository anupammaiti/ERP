package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.PhoneBillExpencesesBean;
import com.svs.finance.dao.IN_PhoneBillExpensesDAO;

public class C_PhoneBillExpensesDAOImpl implements IN_PhoneBillExpensesDAO {

	private HibernateTemplate ht;
	private Session session;
	private List pcjlist;
	private boolean insertorupdate=false;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	
	@Override
	public boolean generatePhoneBillExpenses(PhoneBillExpencesesBean phonebill) {
		// TODO Auto-generated method stub
		Long id=(Long)ht.save(phonebill);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

}
