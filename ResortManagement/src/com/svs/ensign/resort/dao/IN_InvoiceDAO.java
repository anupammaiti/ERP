package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.InvoiceFormBean;
import net.sf.json.JSONObject;

public interface IN_InvoiceDAO {

	public boolean createInvoice(InvoiceFormBean invoice);
	public JSONObject viewInvoiceByExecutiveID(String username);
	public JSONObject viewInvoiceByManagerID(String username);
	public JSONObject viewInvoiceByDirector(String username);
	public JSONObject viewInvoiceByAdmin();
	
}
