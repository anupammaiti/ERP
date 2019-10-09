package com.erp.inventory.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.erp.inventory.bean.InPurchaseReturnBean;
import com.erp.inventory.bean.PurchaseEntryFormBean;
import com.erp.inventory.dao.PurchaseEntryFormDAO;
import com.erp.inventory.dao.PurchaseReturnDAO;

public class InvoiceService implements InvoiceServiceIN {

	@Autowired
	PurchaseEntryFormDAO purchaseentrydao;
	@Autowired
	PurchaseReturnDAO purchasereturndao;
	
	@Override
	public void createPurchaseEntryForm(
			PurchaseEntryFormBean purchaserequisition) {
		// TODO Auto-generated method stub
		purchaseentrydao.createPurchaseEntryForm(purchaserequisition);

	}

	@Override
	public void createPurchaseReturnForm(InPurchaseReturnBean inreturn) {
		// TODO Auto-generated method stub
		System.out.println("purchase reenter Form");
		purchasereturndao.createPurchaseReturn(inreturn);
	}

	@Override
	public List viewPurchaseEntryForm() {
		// TODO Auto-generated method stub
		
		return purchaseentrydao.viewPurchaseEntryReport();
	}

	@Override
	public List viewPurchaseReturn() {
		// TODO Auto-generated method stub
		return purchasereturndao.viewPurchaseReturnReport();
	}

	@Override
	public List viewPurchaseEntry() {
		// TODO Auto-generated method stub
		
		return purchaseentrydao.viewPurchaseEntryName();
	}

}
