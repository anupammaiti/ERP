package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.VocherPurchaseBean;
import com.svs.finance.dao.IN_VoucherPurchasesDAO;

public class C_VoucherPurchasesDAOImpl implements IN_VoucherPurchasesDAO {
	
	private HibernateTemplate ht;
	private List grouplist;
	private boolean insertorupdate=false;
	private Session session;
	
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	
	@Override
	public boolean generateVoucherPurchases(VocherPurchaseBean voucherpurchases) {
		// TODO Auto-generated method stub
			try{
					
				long id=(long)ht.save(voucherpurchases);
				if(id!=0){
					insertorupdate=true;
				}else{
					insertorupdate=false;
				}
				}catch(Exception ex){
					ex.printStackTrace();
				}
		
		return insertorupdate;
	}

}
