package com.erp.finance.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.finance.bean.StockGroupBean;

public class StockGroupDAO {
	
	private HibernateTemplate ht;
	List ll;
	
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}

	public void generateStockGroup(StockGroupBean stockgroup){
		ht.save(stockgroup);
	}
	public List viewStockGroups(){
		ll=ht.find("from StockGroupBean");
		return ll;
	}
}
