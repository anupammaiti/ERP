package com.erp.inventory.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.inventory.bean.PettyCashVocherBean;

public class PettyCashVocherDAO {

	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFactory(SessionFactory session) {
		ht=new HibernateTemplate(session);
	}
	public void generatePettyCashVocher(PettyCashVocherBean pettycashvocher) {
		ht.save(pettycashvocher);
	}
	
}
