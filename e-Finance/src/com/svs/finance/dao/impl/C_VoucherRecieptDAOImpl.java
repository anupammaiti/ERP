package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.VoucherRecieptBean;
import com.svs.finance.dao.IN_VoucherRecieptDAO;

public class C_VoucherRecieptDAOImpl implements IN_VoucherRecieptDAO {

	private HibernateTemplate ht;
	private Session session;
	private List dailyautoexpenseslist=null;
	private boolean insertorupdate=false; 
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory) {
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	@Override
	public boolean createVoucherReciept(VoucherRecieptBean voucherrecipt) {
		// TODO Auto-generated method stub
		long id=(Long)ht.save(voucherrecipt);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

}
