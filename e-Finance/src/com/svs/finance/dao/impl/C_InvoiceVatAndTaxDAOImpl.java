package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.VatAndTaxBean;
import com.svs.finance.dao.IN_InvoiceVatAndTaxDAO;

public class C_InvoiceVatAndTaxDAOImpl implements IN_InvoiceVatAndTaxDAO {

	private HibernateTemplate ht;
	private Session session;
	private boolean insertorupdate=false;
	private List invoicevatlist;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	@Override
	public boolean geneateInvoiceVatAndTax(VatAndTaxBean vatandtax) {
		// TODO Auto-generated method stub
	long id=(long)ht.save(vatandtax);
	if(id!=0){
		insertorupdate=true;
	}else{
		insertorupdate=false;
	}
		return insertorupdate;
	}

	@Override
	public List viewVatByCompanyName(String companyname) {
		// TODO Auto-generated method stub
		System.out.println("Company Name DAO\t"+companyname);
		invoicevatlist=ht.find("from VatAndTaxBean vat where vat.companyname=?",companyname);
		System.out.println("Invoice Vat List\t"+invoicevatlist.size());
		return invoicevatlist;
	}

	@Override
	public boolean updateVatByCompanyName(String companyname, String vat,
			String tax, String edutax) {
		// TODO Auto-generated method stub
		Query updatequery=session.createQuery("update VatAndTaxBean vat set vat.vat=:vat,vat.tax=:tax,vat.eduservicetax=:edutax where companyname=:compname");
		updatequery.setString("vat", vat);
		updatequery.setString("tax",tax);
		updatequery.setString("edutax", edutax);
		updatequery.setString("compname", companyname);
		int id=updatequery.executeUpdate();
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		
		return insertorupdate;
	}

}
