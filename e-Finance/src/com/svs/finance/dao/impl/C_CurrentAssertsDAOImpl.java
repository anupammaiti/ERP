package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.CurrentAssertsBean;
import com.svs.finance.dao.IN_CurrentAssertDAO;

public class C_CurrentAssertsDAOImpl implements IN_CurrentAssertDAO {

	private HibernateTemplate ht;
	private Session session;
	private List dailyautoexpenseslist=null;
	private boolean insertorupdate=false; 
	private String isavailablequery="from CurrentAssertsBean cab where cab.ledgername=? and cab.under=? and cab.login_comp=?";
	private String updatecurrentasserts="update CurrentAssertsBean cab set cab.ledgername=?,cab.under=?,cab.balance=? where cab.ledgername=?";
	private List currentassertlist;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	
	@Override
	public boolean createCurrentAsserts(CurrentAssertsBean currentasserts) {
		// TODO Auto-generated method stub
		
		ht.save(currentasserts);
		
		
		return insertorupdate;
	}

	@Override
	public boolean updateCurrentAsserts(String ledgername, String balance,
			String under,String companyname) {
		// TODO Auto-generated method stub
		try{
			Query updatequery=session.createQuery("update CurrentAssertsBean cab set cab.under=:under,cab.balance=:balance where cab.ledgername=:ledgername and cab.login_comp=:compname");
			System.out.println("Amount to Be updated\t"+balance);
			System.out.println("Group Name\t"+under);
			System.out.println("Ledger Name2"+ledgername);
				updatequery.setString("under", under);
				updatequery.setString("balance", balance);
				updatequery.setString("ledgername",ledgername);
				updatequery.setString("compname", companyname);
				int id=updatequery.executeUpdate();
				System.out.println("Updated Success");
				if(id!=0){
					insertorupdate=true;
				}else{
					insertorupdate=false;
				}
		}catch(Exception e){
			e.printStackTrace();
		}
			
			
		return insertorupdate;
	}


	@Override
	public boolean isAvailable(String ledgername,String under,String companyname) {
		// TODO Auto-generated method stub
		System.out.println("Ledger Name\t"+ledgername);
		System.out.println("Under \t"+under);
		System.out.println("Company Name\t"+companyname);
		currentassertlist=ht.find(isavailablequery,ledgername,under,companyname);
		System.out.println("Current Asserts List\t"+currentassertlist.size());
		int currentasserts=0;
		if(currentassertlist.size()!=0){
			System.out.println("Current Assert is Available");
			insertorupdate=true;
		}else{
			insertorupdate=false;
			System.out.println("Current Assert is Not Available");
		}
		return insertorupdate;
	}


	@Override
	public String viewCurrentAssertsAmount(String under, String ledgername) {
		// TODO Auto-generated method stub
		currentassertlist=ht.find("select cab.balance from CurrentAssertsBean cab where cab.under=? and cab.ledgername=?",under,ledgername);
		System.out.println("Current Asserts\t"+currentassertlist.get(0));
		String currentassert=currentassertlist.get(0).toString();
		return currentassert;
	}


	@Override
	public boolean isAvalable(String ledgername,String login_comp) {
		// TODO Auto-generated method stub
		currentassertlist=ht.find("from CurrentAssertsBean cab where cab.ledgername=? and cab.login_comp=?",ledgername,login_comp);
		System.out.println("Current Asserts List\t"+currentassertlist.size());
	
		if(currentassertlist.size()!=0){
			System.out.println("Current Assert is Available");
			insertorupdate=true;
		}else{
			insertorupdate=false;
			System.out.println("Current Assert is Not Available");
		}		
		return insertorupdate;
	}


	@Override
	public String viewCurrentAssetsBalance(String ledgername) {
		// TODO Auto-generated method stub
		String amount=null;
		currentassertlist=ht.find("select cab.balance from CurrentAssertsBean cab where cab.ledgername=?",ledgername);
		if(currentassertlist.size()!=0){
			System.out.println("Balance is\t"+currentassertlist.get(1));
			amount=(String)currentassertlist.get(1);	
		}else{
			amount="0.0";
		}
		
		
		return amount;
	}


	@Override
	public boolean updateCurrentAssets(String amount, String ledgername,String companyname) {
		// TODO Auto-generated method stub
			System.out.println("Amount for the Current Assets");
		try{
			Query updatequery=session.createQuery("update CurrentAssertsBean cab set cab.balance=:balance where cab.ledgername=:ledgername");
				updatequery.setString("balance", amount);
				updatequery.setString("ledgername",ledgername);
				int id=updatequery.executeUpdate();
				System.out.println("Updated Success");
				if(id!=0){
					insertorupdate=true;
				}else{
					insertorupdate=false;
				}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return insertorupdate;
	}
	

	

}
