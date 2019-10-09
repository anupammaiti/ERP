package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.OrderFormBean;
import com.svs.ensign.resort.dao.IN_OrderFormDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;
@Repository
public class C_OrderFormDAOImpl implements IN_OrderFormDAO {

	private HibernateTemplate ht;
	private List orderformlist;
	private boolean insertorupdate;
	private Session session;
	JSONObject respObj=new JSONObject();
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	@Override
	public boolean createOrderForm(OrderFormBean orderform) {
		// TODO Auto-generated method stub
		long id=(Long)ht.save(orderform);
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
	public JSONObject viewOrderFormByExecutive(String username) {
		// TODO Auto-generated method stub
		orderformlist=ht.find("from OrderFormBean ofb where ofb.deltby=?",username);
                respObj=C_Util_Misleneous.convBeanToJSNArray(orderformlist);
		//System.out.println("Order Form Size"+orderformlist.size());
		return respObj;
	}
	@Transactional
	@Override
	public JSONObject viewOrderFormByManager(String username) {
		// TODO Auto-generated method stub
		orderformlist=ht.find("from OrderFormBean ofb where ofb.manager=?",username);
		//System.out.println("OrderForm Size \t"+orderformlist.size());
                 respObj=C_Util_Misleneous.convBeanToJSNArray(orderformlist);
		return respObj;
	}

	@Override
	public JSONObject viewOrderFormByDirector() {
		// TODO Auto-generated method stub
		orderformlist=ht.find("from OrderFormBean");
                respObj= C_Util_Misleneous.convBeanToJSNArray(orderformlist);
		//System.out.println("OrderFormListSize By Director"+orderformlist.size());
		return respObj;
	}

}
