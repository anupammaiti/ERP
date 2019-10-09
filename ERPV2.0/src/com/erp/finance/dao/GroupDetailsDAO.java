package com.erp.finance.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.finance.bean.GroupDetailsBean;

public class GroupDetailsDAO {
	
	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}
	
	public void generateGroups(GroupDetailsBean groupdetails){
		ht.save(groupdetails);
	}
	public List getGroups(){
		return ht.find("from GroupDetailsBean");
	}
	
	
}
