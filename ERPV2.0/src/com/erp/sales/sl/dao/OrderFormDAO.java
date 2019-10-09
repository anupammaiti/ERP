package com.erp.sales.sl.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.sales.sl.bean.OrderFormBean;


@Resource(name="OrderFormDAO")
public class OrderFormDAO {

	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}
	
	public void createOrderForm(OrderFormBean orderform){
		ht.save(orderform);
	}
	public List getOrderForm(){
		
		return ht.find("from OrderFormBean");
	}
}
