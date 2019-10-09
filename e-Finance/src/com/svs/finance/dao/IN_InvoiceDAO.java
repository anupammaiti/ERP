package com.svs.finance.dao;

import java.util.List;

import com.svs.finance.bean.InvoiceFormBean;

public interface IN_InvoiceDAO {

	public boolean createInvoice(InvoiceFormBean invoice);
	public List viewInvoiceByExecutiveID(String username);
	public List viewInvoiceByManagerID(String username);
	public List viewInvoiceByDirector(String username);
	public List viewInvoiceByAdmin();
	
}
