package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.finance.bean.InvoiceFormBean;
import com.svs.finance.dao.IN_InvoiceDAO;
@Repository
public class C_InvoiceDAOImpl implements IN_InvoiceDAO {

	private HibernateTemplate ht;
	private boolean insertorupdate=false;
	private List invoicelist;
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
	}
	
	@Override
	public boolean createInvoice(InvoiceFormBean invoice) {
		// TODO Auto-generated method stub
		long id=0;
		id=(Long)ht.save(invoice);
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
	public List viewInvoiceByExecutiveID(String username) {
		// TODO Auto-generated method stub
		invoicelist=ht.find("from InvoiceFormBean infb where deltby=?",username);
		System.out.println("Invoice Details"+invoicelist.size());
		return invoicelist;
	}
	@Transactional
	@Override
	public List viewInvoiceByManagerID(String username) {
		// TODO Auto-generated method stub
		invoicelist=ht.find("from InvoiceFormBean ifb where ifb.manager=?",username);
		System.out.println("Invoice Details:"+invoicelist.size());
		return invoicelist;
	}
	@Transactional
	@Override
	public List viewInvoiceByDirector(String username) {
		// TODO Auto-generated method stub
		invoicelist=ht.find("from InvoiceFormBean");
		return invoicelist;
		
	}
	@Transactional
	@Override
	public List viewInvoiceByAdmin() {
		// TODO Auto-generated method stub
		invoicelist=ht.find("from InvoiceFormBean");
		return invoicelist;
	}

}
