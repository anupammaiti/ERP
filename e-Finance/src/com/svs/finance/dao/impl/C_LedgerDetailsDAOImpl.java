package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.svs.finance.bean.LedgerDetailsBean;
import com.svs.finance.dao.IN_LedgerDetailsDAO;
@Repository
public class C_LedgerDetailsDAOImpl implements IN_LedgerDetailsDAO {

	private HibernateTemplate ht;
	private Session session;
	private boolean insertorupdate=false;
	private List ledgerdetailslist;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	@Override
	public boolean createLedgerDetails(LedgerDetailsBean ledgerdetails) {
		// TODO Auto-generated method stub
		long id=(Long)ht.save(ledgerdetails);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

	@Override
	public boolean viewLedgerDetailsByParentGroup(String under) {
		// TODO Auto-generated method stub
		
		return false;
		
	}

	@Override
	public String viewUnderByUsingLedgerName(String ledgername) {
		// TODO Auto-generated method stub
		ledgerdetailslist=ht.find("select ldb.under from LedgerDetailsBean ldb where ldb.ledgername=?",ledgername);
		String under=ledgerdetailslist.get(0).toString();
		System.out.println("Under Name\t"+under);
		return under;
	}

}
