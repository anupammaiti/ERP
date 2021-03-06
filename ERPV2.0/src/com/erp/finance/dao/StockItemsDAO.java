package com.erp.finance.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.finance.bean.StockItemsBean;

public class StockItemsDAO {
	
	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}

	public void generateStockItems(StockItemsBean stockitems){
		ht.save(stockitems);
	}
	public List viewStockItems(){
		return ht.find("from StockItemsBean");
	}
}
