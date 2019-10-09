package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.svs.finance.bean.AutoExpencesesTravelBean;
import com.svs.finance.dao.IN_DailyAutoExpensesTravelDAO;
@Repository
public class C_DailyAutoExpensesTravelDAOImpl implements
		IN_DailyAutoExpensesTravelDAO {

	private HibernateTemplate ht;
	private Session session;
	private List dailyautoexpenseslist=null;
	private boolean insertorupdate=false; 
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	@Override
	public boolean createDailyAutoExpenses(AutoExpencesesTravelBean autoexpenses) {
		// TODO Auto-generated method stub
		long id=(Long)ht.save(autoexpenses);
		if(id!=0){
			insertorupdate=true;
		}
		else{
			insertorupdate=false;
		}
		
		return insertorupdate;
	}
	

}
