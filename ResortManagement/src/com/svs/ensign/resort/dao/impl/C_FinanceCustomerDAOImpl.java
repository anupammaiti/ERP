package com.svs.ensign.resort.dao.impl;

import java.util.List;

import net.sf.json.JSONObject;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.FinanceCustomerBean;
import com.svs.ensign.resort.dao.IN_FinanceCustomerDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;

@Repository
public class C_FinanceCustomerDAOImpl implements IN_FinanceCustomerDAO {

	private HibernateTemplate ht;
	private Session session;
	private List financecustomer;
	private boolean insertorupdate;
	private JSONObject respObj=new JSONObject();
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	
	@Override
	public boolean createFinanceCustomer(FinanceCustomerBean fincust) {
		// TODO Auto-generated method stub
		try {
			long id=(Long)ht.save(fincust);
			if(id!=0){
				insertorupdate=false;
			}
			else{
				insertorupdate=true;
			}
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return insertorupdate;
	}

	@Transactional
	@Override
	public JSONObject viewCustomerByExecutiveID(String username) {
		// TODO Auto-generated method stub
		financecustomer=ht.find("from FinanceCustomerBean fncb where fncb.deltby=?",username);
		//System.out.println("Customer List Size"+financecustomer.size());
               respObj= C_Util_Misleneous.convBeanToJSNArray(financecustomer);
		return respObj;
	}

	@Transactional
	@Override
	public JSONObject viewCustomerInstallmentsByAdmin() {
		// TODO Auto-generated method stub
		financecustomer=ht.find("from FinanceCustomerBean");
		//System.out.println("Customer Installments JSONObject Size"+financecustomer.size());
                C_Util_Misleneous.convBeanToJSNArray(financecustomer);
		return respObj;
	}
	
	@Transactional
	@Override
	public JSONObject viewCustomerInstallmentsByManagerID(String username) {
		// TODO Auto-generated method stub
		financecustomer=ht.find("from FinanceCustomerBean fcb where fcb.manager=?",username);
                C_Util_Misleneous.convBeanToJSNArray(financecustomer);
		return respObj;
	}


	@Override
	public boolean isAvailable(String custid, String status,String deltby) {
		// TODO Auto-generated method stub
		//System.out.println("Custid"+custid);
		//System.out.println("Status"+status);
		//System.out.println("Deltby"+deltby);
		
		//financecustomer=ht.find("select fcb.remainingamount from FinanceCustomerBean fcb where fcb.deltby=? and fcb.status=? and fcb.custid=?",deltby,status,custid);
		
		Query displayquery=session.createQuery("select fcb.remainingamount from FinanceCustomerBean fcb where fcb.deltby=:deltby and fcb.status=:status and fcb.custid=:custid");
		displayquery.setString("deltby", deltby);
		displayquery.setString("status", status);
		displayquery.setString("custid", custid);
		financecustomer=displayquery.list();
		//System.out.println("Finance Customer Size\t"+financecustomer.size());
		
		if(financecustomer.size()!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		//System.out.println("Insertorupdate\t"+insertorupdate);
		return insertorupdate;
	}


	@Override
	public JSONObject viewCustomerInstallment(String custid, String status,
			String deltby) {
		// TODO Auto-generated method stub
		
		Query displayquery=session.createQuery("select fcb.remainingamount from FinanceCustomerBean fcb where fcb.deltby=:deltby and fcb.status=:status and fcb.custid=:custid");
		displayquery.setString("deltby", deltby);
		displayquery.setString("status", status);
		displayquery.setString("custid", custid);
		financecustomer=displayquery.list();
		//System.out.println("Finance Customer Size\t"+financecustomer.size());
		
		/*financecustomer1.put("totalamount", financecustomer.get(1).toString());
			financecustomer1.put("totalinstallments", financecustomer.get(2).toString());
			financecustomer1.put("installmentpaid",financecustomer.get(3).toString());
			financecustomer1.put("remainingamount", financecustomer.get(4).toString());*/
		respObj=C_Util_Misleneous.convBeanToJSNArray(financecustomer);
		return respObj;
	}


	@Override
	public JSONObject viewCustomerByCustomerId(long username) {
		// TODO Auto-generated method stub
		financecustomer=ht.find("from FinanceCustomerBean fcb where fcb.id=?",username);
		//System.out.println("Finance Customer JSONObject\t"+financecustomer.size());
		C_Util_Misleneous.convBeanToJSNArray(financecustomer);
		return respObj;
	}


	@Override
	public boolean updateCustomerInstallment(String custid,
			String remainamount, String paidinstallment,String status) {
		// TODO Auto-generated method stub
		
		Query updatequery=session.createQuery("update FinanceCustomerBean fcb set fcb.remainingamount=:remainamount,fcb.installmentspaid=:instpaid,fcb.status=:status where custid=:custid");
		updatequery.setString("remainamount", remainamount);
		updatequery.setString("instpaid",paidinstallment);
		updatequery.setString("status", status);
		updatequery.setString("custid",custid);
		int i=updatequery.executeUpdate();
		
		if(i!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}


	@Override
	public boolean updateCustomerInstallmentStatus(String custid, String status) {
		// TODO Auto-generated method stub
		Query updatequery=session.createQuery("update FinanceCustomerBean fcb set fcb.status=:status where custid=:custid");
		updatequery.setString("status", status);
		updatequery.setString("custid",custid);
		int i=updatequery.executeUpdate();
		
		if(i!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

}
