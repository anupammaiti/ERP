package com.erp.sales.sl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
import com.erp.sales.sl.dao.ApprisialFormDAO;
import com.erp.sales.sl.dao.InvoiceFormDAO;
import com.erp.sales.sl.dao.InvoiceWorkPerformedDAO;
import com.erp.sales.sl.dao.OrderFormDAO;
import com.erp.sales.sl.dao.PurchaseOrderDAO;
import com.erp.sales.sl.dao.SalesCallLogDAO;
import com.erp.sales.sl.dao.SalesEntryFormDAO;
import com.erp.sales.sl.dao.SalesOrderDAO;
import com.erp.sales.sl.dao.SalesReturnEntryDAO;
import com.erp.sales.sl.dao.TelephoneSalesOrderDAO;
import com.erp.util.DateUtil;

@Service("SlService")
public class SlService implements SlServiceIN {

	@Autowired
	DateUtil dateutil;
	
	@Autowired
	InvoiceFormDAO  invoicedao;
	@Autowired
	OrderFormDAO orderformdao;
	@Autowired
	ApprisialFormDAO apprisialformdao;
	@Autowired
	InvoiceWorkPerformedDAO invoiceworkperformeddao;
	@Autowired
	PurchaseOrderDAO purchaseorderdao;
	@Autowired
	SalesCallLogDAO salescalllogdao;
	@Autowired
	TelephoneSalesOrderDAO telephonesalesorderdao;
	@Autowired
	SalesEntryFormDAO salesentrydao;
	@Autowired
	SalesReturnEntryDAO salesreturndao;
	@Autowired
	SalesOrderDAO salesorderdao;
	
	
	List orderformlist;
	
	
	
	@Override
	public void createInvoiceForm(InvoiceFormBean invform) {
		// TODO Auto-generated method stub
		invform.setInputdate(dateutil.generateDate());
		
		invoicedao.createInvoiceForm(invform);
	}

	@Override
	public void createAppritialForm(ApprisialFormBean apprisialform) {
		// TODO Auto-generated method stub
		apprisialform.setToday(dateutil.generateDate());
		apprisialformdao.createApprisialForm(apprisialform);
	}

	@Override
	public void createOrderForm(OrderFormBean orderform) {
		// TODO Auto-generated method stub
		orderform.setGendate(dateutil.generateDate());
		orderformdao.createOrderForm(orderform);
	}

	@Override
	public void createInvoiceWorkPerformed(InvoiceWorkPerformBean invoiceworkperformed) {
		// TODO Auto-generated method stub
		invoiceworkperformed.setGendate(dateutil.generateDate());
		invoiceworkperformeddao.createInvoiceWorkPerformed(invoiceworkperformed);
	}

	@Override
	public void createPurchaseOder(PurchaseOrderBean purchaseorder) {
		// TODO Auto-generated method stub
		System.out.println("Sales Order");
		purchaseorderdao.createPurchaseOrder(purchaseorder);
	}


	@Override
	public void createTelephoneSalesOder(TelephoneSalesOderBean telephonesalesorder) {
		// TODO Auto-generated method stub
		System.out.println("Telephone Service");
		telephonesalesorderdao.createTelephoneSalesOrder(telephonesalesorder);
	}

	@Override
	public void createSalesCallLog(SalesCallLog salescalllog) {
		// TODO Auto-generated method stub
		salescalllogdao.createCallLog(salescalllog);
	}

	@Override
	public void createPettyCashJournal() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void createSalesEntryForm(SalesEntryFormBean salesentry) {
		// TODO Auto-generated method stub
		salesentrydao.createSalesEntryForm(salesentry);
	}

	@Override
	public void createSalesReturnEntryForm(SalesReturnEntryForm salesreturnentry) {
		// TODO Auto-generated method stub
		salesreturndao.createSalesReturn(salesreturnentry);		
	}

	@Override
	public List getInvoiceReport() {
		// TODO Auto-generated method stub
		return invoicedao.getInvoiceReport();
	}

	@Override
	public List getAppritialFormReport() {
		// TODO Auto-generated method stub
		return apprisialformdao.getApprisialForm();
	}

	@Override
	public List getOrderFormReport() {
		// TODO Auto-generated method stub
		return orderformdao.getOrderForm();
	}

	@Override
	public List getInvoiceWorkPerformedReport() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getPurchaseOrderReport() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getSalesOrderReport() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getTelephoneSalesOrderReport() {
		// TODO Auto-generated method stub
		return telephonesalesorderdao.getTelephoneOrderReport();
	}

	@Override
	public List getSalesCallLogReport() {
		// TODO Auto-generated method stub
		return salescalllogdao.getCallLog();
	}

	@Override
	public List getPettyCashJournal() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getSalesEntryReport() {
		// TODO Auto-generated method stub
		return salesentrydao.getSalesEntryForm();
	}

	@Override
	public List getSalesReturnEntryReport() {
		// TODO Auto-generated method stub
		return salesreturndao.getSalesReturnEntry();
	}

	@Override
	public void createSalesOder(SalesOrderBean salesorder) {
		// TODO Auto-generated method stub
		salesorderdao.createSalesOrder(salesorder);
	}
	

}
