package com.svs.finance.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.VocherTypeBean;
import com.svs.finance.dao.IN_VoucherTypeDAO;

public class C_VoucherTypeDAOImpl implements IN_VoucherTypeDAO {
	private HibernateTemplate ht;
	private List voucherlist=new ArrayList();
	private boolean insertorupdate=false;
	private Session session;
	
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	
	@Override
	public boolean generateVoucherType(VocherTypeBean vouchertype) {
		// TODO Auto-generated method stub
		long id=(long)ht.save(vouchertype);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}


	@Override
	public boolean isAvailable(String vouchername) {
		// TODO Auto-generated method stub
		voucherlist=ht.find("from VocherTypeBean vtb where vtb.vouchertype=?",vouchername);
		if(voucherlist.size()!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		
		return insertorupdate;
	}

	
	
	
}
