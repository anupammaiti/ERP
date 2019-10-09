package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.SalesCustomerBean;
import com.svs.ensign.resort.dao.IN_SalesCustomerDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;
@Repository
public class C_SalesCustomerDAOImpl implements IN_SalesCustomerDAO {

	private HibernateTemplate ht;
	private Session session;
	private boolean insertorupdate=false;
	private List salescustomer;
        JSONObject respObj=new JSONObject();
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	
	@Override
	public boolean createSalesCustomer(SalesCustomerBean salescustomerbean) {
		// TODO Auto-generated method stub
		long id=0;
		id=(Long)ht.save(salescustomerbean);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

	@Transactional
	@Override
	public JSONObject viewSLCustomerByAdmin() {
		// TODO Auto-generated method stub
		salescustomer=ht.find("from SalesCustomerBean");
                respObj=C_Util_Misleneous.convBeanToJSNArray(salescustomer);
		return respObj;
	}

	@Transactional
	@Override
	public JSONObject viewSLCustomerByManagerID(String username) {
		// TODO Auto-generated method stub
		salescustomer=ht.find("from SalesCustomerBean scb where scb.manager=?",username);
               respObj= C_Util_Misleneous.convBeanToJSNArray(salescustomer);
		return respObj;
	}
	@Transactional
	@Override
	public JSONObject viewSLCustomerByExecutiveID(String username) {
		// TODO Auto-generated method stub
		salescustomer=ht.find("from SalesCustomerBean scb where scb.executive=?",username);
                respObj=C_Util_Misleneous.convBeanToJSNArray(salescustomer);
		//System.out.println("Sales Size\t"+salescustomer.size());
		return respObj;
	}

	
	@Override
	public boolean allottingCustomerToFnManager(long custid,
			String department, String fnmanager) {
		// TODO Auto-generated method stub
		Query updatequery=session.createQuery("update SalesCustomerBean slcb set slcb.depart1=:department, slcb.fnmanager=:manager where slcb.sno=:custid");
		updatequery.setString("department", department);
		updatequery.setString("manager", fnmanager);
		updatequery.setLong("custid", custid);
		int id=updatequery.executeUpdate();
		//System.out.println("Update Status"+id);
		if(id!=0){
			insertorupdate=true;
		}
		else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

	@Transactional
	@Override
	public JSONObject viewSLCustomerByID(long id) {
		// TODO Auto-generated method stub
		salescustomer=ht.find("from SalesCustomerBean slcust where slcust.sno=?",id);
                respObj=C_Util_Misleneous.convBeanToJSNArray(salescustomer);
		//System.out.println("Sales CustList Size\t"+salescustomer.size());
		return respObj;
	}

	@Transactional
	@Override
	public JSONObject viewSLCustomerByFnManager(String username) {
		// TODO Auto-generated method stub
		salescustomer=ht.find("from SalesCustomerBean slc where slc.fnmanager=?",username);
                respObj=C_Util_Misleneous.convBeanToJSNArray(salescustomer);
		//System.out.println("Sales Customer"+salescustomer.size());
		return respObj;
	}

	@Transactional
	@Override
	public JSONObject viewSLCustomerByFnExecutor(String username) {
		// TODO Auto-generated method stub
		salescustomer=ht.find("from SalesCustomerBean sc where sc.fnexecutive=?",username);
		//System.out.println("Sales Executive Size"+salescustomer.size());
                respObj=C_Util_Misleneous.convBeanToJSNArray(salescustomer);
		return respObj;
	}

	
	@Override
	public boolean allottingExecutiveToCustomer(long id, String fnexecutive) {
		// TODO Auto-generated method stub
		Query updatequery=session.createQuery("update SalesCustomerBean slc set slc.fnexecutive=:fnexecutive where slc.sno=:id");
		updatequery.setString("fnexecutive", fnexecutive);
		updatequery.setLong("id", id);
		int id1=updatequery.executeUpdate();
		if(id1!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return false;
	}

	@Transactional
	@Override
	public JSONObject viewCustomerByFnExecutive(String username) {
		// TODO Auto-generated method stub
		salescustomer=ht.find("from SalesCustomerBean scb where scb.fnexecutive=?",username);
                respObj=C_Util_Misleneous.convBeanToJSNArray(salescustomer);
		//System.out.println("Sales Size\t"+salescustomer.size());
		return respObj;
	}

}
