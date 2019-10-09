package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.Groups;
import com.svs.finance.dao.IN_GroupsDAO;

public class C_GroupDAOImpl implements IN_GroupsDAO {

	private HibernateTemplate ht;
	private List grouplist;
	private boolean insertorupdate=false;
	private Session session;
	private String checkdata="from Groups gp where gp.groupname=?";

	
	
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	
	
	@Override
	public boolean generateGroups(Groups groups) {
		// TODO Auto-generated method stub
		try{
		Long id=(Long)ht.save(groups);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public boolean isAvailable(String groups) {
		// TODO Auto-generated method stub
		
		grouplist=ht.find(checkdata,groups);
		System.out.println("Group Details\t"+grouplist.size());
		if(grouplist.size()!=0){
			insertorupdate= true;
		}else{
			insertorupdate= false;
		}
		return insertorupdate;
	}





}
