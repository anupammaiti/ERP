package com.svs.finance.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.CourierRecieptBean;
import com.svs.finance.dao.IN_CourierDAO;

public class C_CorierRecieptDAOImpl implements IN_CourierDAO {

	private HibernateTemplate ht;
	private List<CourierRecieptBean> courierrecieptList;
	private boolean insertorupdate=false;
	private Session session;
	
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	@Override
	public boolean generateCourierReciept(CourierRecieptBean courierreciept) {
		// TODO Auto-generated method stub
		long id=(long)ht.save(courierreciept);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CourierRecieptBean> searchCourierReciept(CourierRecieptBean crb) {
		// TODO Auto-generated method stub
		courierrecieptList=ht.find("from CourierRecieptBean crb where crb.recieptdate=? or crb.ccno=? or crb.ccompany=? or crb.deltby=? ",crb.getRecieptdate(),crb.getCcno(),crb.getCcompany(),crb.getDeltby());
		System.out.println("Courier Reciept List Size\t"+courierrecieptList.size());
		return courierrecieptList;
	}

}
