package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.VocherSalesReturnBean;
import com.svs.finance.dao.IN_VoucherSalesReturnDAO;

public class C_VoucherSalesReturnDAOImpl implements IN_VoucherSalesReturnDAO {

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
	public boolean generateSalesReturn(
			VocherSalesReturnBean vouchersalesreturn) {
		// TODO Auto-generated method stub
		long id=(long)ht.save(vouchersalesreturn);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		
		return insertorupdate;
	}

}
