package com.erp.sales.sl.service;

import java.util.List;

import com.erp.sales.sl.bean.ApprisialFormBean;
import com.erp.sales.sl.bean.InvoiceFormBean;
import com.erp.sales.sl.bean.InvoiceWorkPerformBean;
import com.erp.sales.sl.bean.OrderFormBean;
import com.erp.sales.sl.bean.PurchaseOrderBean;
import com.erp.sales.sl.bean.SalesCallLog;
import com.erp.sales.sl.bean.SalesEntryFormBean;
import com.erp.sales.sl.bean.SalesOrderBean;
import com.erp.sales.sl.bean.SalesReturnEntryForm;
import com.erp.sales.sl.bean.TelephoneSalesOderBean;

public interface SlServiceIN {
	
	
	
	public void createInvoiceForm(InvoiceFormBean invform);
	public void createAppritialForm(ApprisialFormBean apprisialform);
	public void createOrderForm(OrderFormBean orderform);
	public void createInvoiceWorkPerformed(InvoiceWorkPerformBean invoiceworkperformed);
	public void createPurchaseOder(PurchaseOrderBean purchaseorder);
	public void createSalesOder(SalesOrderBean salesorder);
	public void createTelephoneSalesOder(TelephoneSalesOderBean telephonesalesorder);
	public void createSalesCallLog(SalesCallLog salescalllog);
	public void createPettyCashJournal();
	
	public List getInvoiceReport();
	public List getAppritialFormReport();
	public List getOrderFormReport();
	public List getInvoiceWorkPerformedReport();
	public List getPurchaseOrderReport();
	public List getSalesOrderReport();
	public List getTelephoneSalesOrderReport();
	public List getSalesCallLogReport();
	public List getPettyCashJournal();
	
	
	
	public void createSalesEntryForm(SalesEntryFormBean salesentry);
	public void createSalesReturnEntryForm(SalesReturnEntryForm salesreturnentry);
	
	public List getSalesEntryReport();
	public List getSalesReturnEntryReport();
}
