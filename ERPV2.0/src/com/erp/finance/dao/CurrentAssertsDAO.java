package com.erp.finance.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.finance.bean.CurrentAssertsBean;

public class CurrentAssertsDAO {
	
	private HibernateTemplate ht;
	private Session session1;
	private boolean status;
	private double amount;
	private List ll; 
	
	@Autowired
	public void setSessionFactory(SessionFactory session) {
		ht=new HibernateTemplate(session);
		session1=session.openSession();
	}

	public void generateCurrentAsserts(CurrentAssertsBean currentasserts) {
		ht.save(currentasserts);
	}
	
	public void updateCurrentAsserts(String ledgname,String balance) {
		
		Query query=session1.createQuery("update CurrentAssertsBean set balance=:balance where ledgername=:ledname");
		query.setParameter("balance",balance );
		query.setParameter("ledname", ledgname);
		int updateornot=query.executeUpdate();
		System.out.println("Update Status"+updateornot);
		//ht.update("update CurrentAssertsBean set balance=? where ledgname=? ", balance,ledgname);
		
	}
	public boolean viewByLedgerName(String ledgername) {
		ll=ht.find("select ca.ledgername from CurrentAssertsBean ca where ca.ledgername=?",ledgername);
		if(ll.size()==0) {
			
		}else {
			
		}
		return status;
	}
	
	@SuppressWarnings("unchecked")
	public Double getAmountByLedgerName(String ledgername) {
		System.out.println("Ledger Name:"+ledgername);
		List<String> amount1;
		String amount2=null;
		amount1=ht.find("select cab.balance from CurrentAssertsBean cab where cab.under=?",ledgername);
	
		
		System.out.println("Size of Amount List:\t"+amount1.size());
		for(int i=0;i<amount1.size();i++) {
			amount2=amount1.get(i);
		}
		
		/*for (Object value : amount1) {
		  array[index] = (String) value;
		  index++;
		}*/
		
		//amount=Double.parseDouble(array[0]);
		System.out.println("Final Amount is:"+amount2);
		return amount;
	}
	
}
