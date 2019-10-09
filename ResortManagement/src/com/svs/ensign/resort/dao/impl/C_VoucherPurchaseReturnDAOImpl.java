package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.svs.ensign.resort.bean.VocherPurchaseReturnBean;
import com.svs.ensign.resort.dao.IN_VoucherPurchaseReturnsDAO;
@Repository
public class C_VoucherPurchaseReturnDAOImpl implements IN_VoucherPurchaseReturnsDAO {

	private HibernateTemplate ht;
	private Session session;
	private List dailyautoexpenseslist=null;
	private boolean insertorupdate=false; 
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	@Override
	public boolean generatePurchaseReturn(
			VocherPurchaseReturnBean purchasereturn) {
		// TODO Auto-generated method stub
		long id=(long)ht.save(purchasereturn);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

}
