package com.erp.finance.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.finance.bean.FoodExcepensesBean;

public class FoodExpensesDAO {
	
	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session) {
		ht=new HibernateTemplate(session);
	}

	public void generateFoodExpenses(FoodExcepensesBean foodexpenses) {
		ht.save(foodexpenses);
	}
}
