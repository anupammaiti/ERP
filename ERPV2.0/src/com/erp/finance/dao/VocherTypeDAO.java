package com.erp.finance.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.finance.bean.VocherDetailsBean;

public class VocherTypeDAO {
	
	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}
	
	public void generateVocherType(VocherDetailsBean vochertype){
		ht.save(vochertype);
	}
	
	public List getVocherTypes(){
		
		return ht.find("from VocherDetailsBean");
	}
}
