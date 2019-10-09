package com.erp.sales.sl.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.sales.sl.bean.ApprisialFormBean;


@Resource(name="ApprisialFormDAO")
public class ApprisialFormDAO {
	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}

	public void createApprisialForm(ApprisialFormBean apprisialform){
		ht.save(apprisialform);
	}
	
	public List getApprisialForm(){
		return ht.find("from ApprisialFormBean");
	}
}
