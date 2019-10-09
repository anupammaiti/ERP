package com.erp.finance.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.finance.bean.CashDisbursmentJournalBean;

public class CashDisburmentJournalDAO {

	private HibernateTemplate ht;
	
	@Autowired
	public void setSessionFacotry(SessionFactory session) {
		ht=new HibernateTemplate(session);
	}
	public void generateCashDisbursmentJournal(CashDisbursmentJournalBean cashdisbursmentjournal) {
		ht.save(cashdisbursmentjournal);
	}
}
