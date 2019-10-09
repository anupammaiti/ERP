package com.erp.sales.sl.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.sales.sl.bean.TelephoneSalesOderBean;

public class TelephoneSalesOrderDAO {
	
	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}
	
	public void createTelephoneSalesOrder(TelephoneSalesOderBean telephonesalesorder){
		ht.save(telephonesalesorder);
	}
	public List getTelephoneOrderReport(){
		return ht.find("from TelephoneSalesOderBean");
	}
}
