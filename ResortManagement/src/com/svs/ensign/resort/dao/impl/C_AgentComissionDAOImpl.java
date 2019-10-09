package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.svs.ensign.resort.bean.AgentComissionBean;
import com.svs.ensign.resort.dao.IN_AgentComissionDAO;

@Repository
public class C_AgentComissionDAOImpl implements IN_AgentComissionDAO {
	private HibernateTemplate ht;
	private List apprisiallist;
	private boolean insertorupdate=false;
	private Session session;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	@Override
	public boolean createAgentComission(AgentComissionBean agentcomission) {
		// TODO Auto-generated method stub
		
		long id=(long)ht.save(agentcomission);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return false;
	}

}
