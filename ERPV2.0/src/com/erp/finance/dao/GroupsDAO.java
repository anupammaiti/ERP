package com.erp.finance.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.finance.bean.Groups;

public class GroupsDAO {
	
	private HibernateTemplate ht;
	boolean status=false;
	
	
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}

	public void generateGroups(Groups groups){
		ht.save(groups);
	}
	
	public List getGroups(){
	return	ht.find("from Groups");
	}
	
	public boolean getGroupsByName(String gname){
		List ll;
		ll=ht.find("from Groups gr where gr.groupname=?",gname);
		if(ll.size()==0){
			status=true;
		}else{
			status=false;
		}
			
		return status;
	}
}
