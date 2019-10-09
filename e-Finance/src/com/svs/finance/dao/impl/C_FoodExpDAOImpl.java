package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.FoodExcepensesBean;
import com.svs.finance.dao.IN_FoodExpDAO;

public class C_FoodExpDAOImpl implements IN_FoodExpDAO {

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
	public boolean generateFoodExp(FoodExcepensesBean foodexp) {
		// TODO Auto-generated method stub
		long id=(Long)ht.save(foodexp);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

}
