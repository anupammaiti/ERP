package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.HotelExpensesBean;
import com.svs.finance.dao.IN_HotelExpDAO;

public class C_HotelExpDAOImpl implements IN_HotelExpDAO {

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
	public boolean generateHotelExp(HotelExpensesBean hotelexp) {
		// TODO Auto-generated method stub
		Long id=(Long)ht.save(hotelexp);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return false;
	}

}
