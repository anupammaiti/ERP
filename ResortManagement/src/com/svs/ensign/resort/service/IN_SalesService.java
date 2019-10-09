package com.svs.ensign.resort.service;

import java.util.List;

import net.sf.json.JSONObject;

import com.svs.ensign.resort.bean.ApprisialFormBean;
import com.svs.ensign.resort.bean.InvoiceFormBean;
import com.svs.ensign.resort.bean.OrderFormBean;
import com.svs.ensign.resort.bean.PettyCashBean;
import com.svs.ensign.resort.bean.PurchaseOrderBean;
import com.svs.ensign.resort.bean.SalesCallLog;
import com.svs.ensign.resort.bean.SalesCustomerBean;
import com.svs.ensign.resort.bean.SalesManagerTastBean;
import com.svs.ensign.resort.bean.SalesOrderBean;
import com.svs.ensign.resort.bean.TelephoneSalesOderBean;

public interface IN_SalesService {
	
	//Customer
	public boolean createCustomerBySales(SalesCustomerBean salescustomer);
	public JSONObject viewSLCustomersByAdmin();
	public JSONObject viewSLCustomerByManagerID(String username);
	public JSONObject viewSLCustomerByExecuticeID(String username);
	public boolean allottingCustomerToFnManager(SalesCustomerBean slcust,long id);
	public JSONObject viewCustomerById(long id);
	public JSONObject viewSLCustomerListByFnManager(String username);
	public JSONObject viewSLCustomerListByFnExecutor(String ussername);
	public boolean allottedExecutiveToCustomer(SalesCustomerBean slc,long id);
	public JSONObject viewCustomerByFnExecutive(String username);
	public JSONObject viewSLCustomerByID(long id);
	
	//Invoice
	
	//Sales
	public boolean createInvoiceForm(InvoiceFormBean invoiceform);
	public JSONObject viewSLInvoiceByExecutiveID(String username);
	public JSONObject viewSLInvoiceByManagerID(String username);
	public JSONObject viewSLInvoiceByDirectorID(String username);
	public JSONObject viewSLInvoiceByAdmin();
	public JSONObject loadInvoiceGrid();
	
	//Finance
	public JSONObject viewFnInvoiceByExecutive(String username);
	public JSONObject viewFnInvoiceByManager(String username);
	public JSONObject viewFnInvoiceByDirector();
	
	
	//Purhcase Order
	public boolean createPurchaseOrder(PurchaseOrderBean purchaseorder);
	public JSONObject viewPurchaseOrderByExecutive(String username);
	public JSONObject viewPurchaseOrderByManager(String username);
	public JSONObject viewPurchaseOrderByDirector();
	
	//ApprisalForm 
	public boolean createApprisialForm(ApprisialFormBean apprisial);
	public JSONObject viewApprisalFormByExecutive(String username);
	public JSONObject viewApprisalFormBySLManager(String username);
	public JSONObject viewApprisalFormByDirector();
	
	
	//OrderForm
	public boolean createOrderForm(OrderFormBean orderform);
	public JSONObject viewOrderFormByExecutive(String username);
	public JSONObject viewOrderByManager(String username);
	public JSONObject viewOrderByDirector();
	
	//Sales Order
	public boolean createSalesOrder(SalesOrderBean salesoder);
	public JSONObject viewSalesOrderByExecutive(String username);
	public JSONObject viewSalesOrderByManager(String username);
	public JSONObject viewSalesOrderByDirector();
	
	//TelePhoneSalesOrder
	public boolean createTelephoneSalesOrder(TelephoneSalesOderBean telephonesalesorder);
	public JSONObject viewTelephoneSalesOrderByExecutive(String username);
	public JSONObject viewTelephoneSalesOrderByManager(String username);
	public JSONObject viewTelephoneSalesOderByDirector();

	//SalesCallLog
	public boolean createSalesCallLog(SalesCallLog salescalllog);
	public JSONObject viewSalesCallLogByExecutive(String username);
	public JSONObject viewSalesCallLogByManager(String username);
	public JSONObject viewSalesCallLogByDirector();
	
	//PettyCashJournal
	public boolean createPettyCashJournal(PettyCashBean pettycashjournal);
	public JSONObject viewPettyCashJournalByExecutive(String username);
	public JSONObject viewPettyCashJournalByManager(String username);
	public JSONObject viewPettyCashJournalByDirector();
	
	//Manager Task 
	public boolean generateSalesManagerTask(SalesManagerTastBean salesmanagertask);
	public JSONObject viewSalesManagerTaskByAdmin();
}
