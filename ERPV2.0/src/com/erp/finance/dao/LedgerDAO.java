package com.erp.finance.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.finance.bean.LedgerBean;

public class LedgerDAO {
	
	private HibernateTemplate ht;
	private boolean status=false;
	private Session session1;
	
	@Autowired
	public void setSessionFactory(SessionFactory session) {
		ht=new HibernateTemplate(session);
		
	}
	
	public void generateLedger(LedgerBean ledger) {
		ht.save(ledger);
	}
	
	@SuppressWarnings("rawtypes")
	public List viewLedger() {
		return ht.find("from LedgerBean");
	}
	
	public String viewByLedgerName(String ledgername) {
		System.out.println("Ledger Name:\t"+ledgername);
		List ledgerlist;
		String under=null;
		ledgerlist=ht.find("select under from LedgerBean led where led.ledgername=?",ledgername);
		System.out.println("Size of Ledger List"+ledgerlist.size());
		
		if(ledgerlist.size()==0)
		{
			status=true;
		}
		else
		{
			status=false;
			String[] array = new String[ledgerlist.size()];
			int index = 0;
			for (Object value : ledgerlist) {
			  array[index] = (String) value;
			  index++;
			}
			
			under=array[0];
			System.out.println("String is"+under);
		}
		System.out.println("Ledger Under Name is:"+under);
		return under;
	}

}
