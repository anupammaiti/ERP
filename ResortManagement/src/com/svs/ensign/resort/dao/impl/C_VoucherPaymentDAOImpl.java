package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.ensign.resort.bean.VocherPaymentBean;
import com.svs.ensign.resort.dao.IN_VoucherPaymentDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;

public class C_VoucherPaymentDAOImpl implements IN_VoucherPaymentDAO {

	private HibernateTemplate ht;
	private List vocherPaymentList;
	private boolean insertorupdate;
	private String viewsnoquery="select MAX(vpb.sno) from VocherPaymentBean vpb";
	/**
	 * 
	 * @param sessionfactory
	 * Autowired the SessionFactory Class to C_LoginDAOImpl.java class by using HibernateTemplate Class.
	 */
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory) {
		ht=new HibernateTemplate(sessionfactory);
	}
	
	
	
	@Override
	public boolean generateVoucherPayment(VocherPaymentBean voucherpayment) {
		// TODO Auto-generated method stub
		Long id=(Long)ht.save(voucherpayment);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}



	@Override
	public String viewVoucherPaymentSno() {
		// TODO Auto-generated method stub
		vocherPaymentList=ht.find(viewsnoquery);
                C_Util_Misleneous.convBeanToJSNArray(vocherPaymentList);
		//System.out.println("Payment Sno\t"+li.get(1));
		return null;
	}

	
	
}
