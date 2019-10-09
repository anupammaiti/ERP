package com.erp.finance.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.finance.bean.MeasuresBean;

public class MeasurmentDAO {
	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}
	public void generateMesurment(MeasuresBean unitmeasurment){
	ht.save(unitmeasurment);
	}
	
	public List viewMesurment(){
		return ht.find("from MeasuresBean");
	}
}
