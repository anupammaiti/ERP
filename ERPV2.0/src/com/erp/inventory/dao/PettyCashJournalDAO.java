package com.erp.inventory.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.inventory.bean.PettyCastBean;

public class PettyCashJournalDAO {

	private HibernateTemplate ht;
	private List pettycashjournal;
	@Autowired
	public void setSessionFactory(SessionFactory session){
	ht=new HibernateTemplate(session);	
	}
	public void createPettyCashJournal(PettyCastBean pettycash){
		ht.save(pettycash);
	}
	public List viewPettyCashJournal(){
		pettycashjournal=ht.find("from PettyCastBean");
		return pettycashjournal;
	}
}

