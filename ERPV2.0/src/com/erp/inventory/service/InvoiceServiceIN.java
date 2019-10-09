package com.erp.inventory.service;

import java.util.List;

import com.erp.inventory.bean.InPurchaseReturnBean;
import com.erp.inventory.bean.PurchaseEntryFormBean;

public interface InvoiceServiceIN {
	
	
	
	public void createPurchaseEntryForm(PurchaseEntryFormBean purchaserequisition);
	public void createPurchaseReturnForm(InPurchaseReturnBean inreturn);
	public List viewPurchaseEntryForm();
	public List viewPurchaseReturn();
	public List viewPurchaseEntry();

}
