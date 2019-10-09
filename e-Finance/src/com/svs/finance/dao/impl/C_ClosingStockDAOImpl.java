package com.svs.finance.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.ClosingStockBean;
import com.svs.finance.dao.IN_ClosingStockDAO;

public class C_ClosingStockDAOImpl implements IN_ClosingStockDAO {

	private HibernateTemplate ht;
	private List closingstocklist=new ArrayList();
	private boolean insertorupdate=false;
	private Session session;
	
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	
	@Override
	public boolean geneateClosingStock(ClosingStockBean closingstock) {
		// TODO Auto-generated method stub
		ht.save(closingstock);
		
		return insertorupdate;
	}





	@Override
	public boolean isAvilable(String ledgername) {
		// TODO Auto-generated method stub
		closingstocklist=ht.find("from ClosingStockBean csb where csb.stockitem=?",ledgername);
		
		if(closingstocklist.size()!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}


	@Override
	public List viewCloseStockItems(String itemname) {
		// TODO Auto-generated method stub
		//closingstocklist=ht.find("select csb.stockitem, csb.quantity,csb.units,csb.rate,csb.balance from ClosingStockBean csb where csb.stockitem=?",itemname);
		Query viewquery=session.createQuery("select csb.stockitem, csb.quantity,csb.units,csb.rate,csb.balance from ClosingStockBean csb where csb.stockitem=:itemname");
		viewquery.setString("itemname", itemname);
		closingstocklist=viewquery.list();
		System.out.println("Closing Stock List\t"+closingstocklist.get(0));
		return closingstocklist;
	}


	@Override
	public boolean updateClosingStock(String quantity, String rate,
			String balance, String itemname) {
		// TODO Auto-generated method stub
		Query updatequery=session.createQuery("update ClosingStockBean csb set csb.quantity =:quantity ,csb.rate=:crate, csb.balance=:balance where stockitem=:stockitem");
		updatequery.setString("quantity", quantity);
		updatequery.setString("crate",rate);
		updatequery.setString("balance",balance);
		updatequery.setString("stockitem",itemname);
		int id=updatequery.executeUpdate();
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}
	
	

}
