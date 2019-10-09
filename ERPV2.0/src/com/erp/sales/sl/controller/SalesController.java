package com.erp.sales.sl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.erp.inventory.bean.PettyCastBean;
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
import com.erp.sales.sl.service.SlServiceIN;

@Controller
public class SalesController {

	@Autowired
	SlServiceIN slservice;
	
	
	@RequestMapping(value="invoice_form.erp",method=RequestMethod.GET)
	public String createInvoice(ModelMap model){
		model.addAttribute(new InvoiceFormBean());
		return "invoice_form";
	}
	@RequestMapping(value="sinvoice.erp",method=RequestMethod.POST)
	public String createdInvoiceForm(@ModelAttribute InvoiceFormBean invoiceform,ModelMap model){
		slservice.createInvoiceForm(invoiceform);
		return "redirect:invoice_form.erp";
	}
	@RequestMapping(value="apprisial_form.erp",method=RequestMethod.GET)
	public String createApprisialForm(ModelMap model){
		model.addAttribute(new ApprisialFormBean());
		return "apprisial_form";
	}
	@RequestMapping(value="sapprisial_form.erp",method=RequestMethod.POST)
	public String createdApprisialForm(@ModelAttribute ApprisialFormBean apprisialform,ModelMap model){
		slservice.createAppritialForm(apprisialform);
		return "redirect:apprisial_form.erp";
	}
	@RequestMapping(value="orderform.erp",method=RequestMethod.GET)
	public String createOrderForm(ModelMap model){
		model.addAttribute(new OrderFormBean());
		return "orderform";
	}
	@RequestMapping(value="sorderform.erp",method=RequestMethod.POST)
	public String createdOrderForm(@ModelAttribute OrderFormBean oderform,ModelMap model){
		slservice.createOrderForm(oderform);
		return "redirect:orderform.erp";
	}
	@RequestMapping(value="invoice_work_performed.erp",method=RequestMethod.GET)
	public String createInvoiceWorkPerformed(ModelMap model){
		model.addAttribute(new InvoiceWorkPerformBean());
		return "invoice_work_performed";
	}
	@RequestMapping(value="sinvoice_work_performed.erp",method=RequestMethod.POST)
	public String createdInvoiceWorkPerformed(@ModelAttribute InvoiceWorkPerformBean invoiceworkperformed,ModelMap model){
		slservice.createInvoiceWorkPerformed(invoiceworkperformed);	
		return "redirect:invoice_work_performed.erp";
	}
	
	@RequestMapping(value="purchase_order.erp",method=RequestMethod.GET)
	public String  createPurchaseOrder(ModelMap model){
		model.addAttribute(new PurchaseOrderBean());
		return "purchase_order";
	}
	
	@RequestMapping(value="spurchase_order.erp",method=RequestMethod.POST)
	public String createdPurchaseOrder(@ModelAttribute PurchaseOrderBean purchaseorder){
		System.out.println("Controller");
		
		slservice.createPurchaseOder(purchaseorder);
		return "redirect:purchase_order.erp";
	}
	
	
	@RequestMapping(value="telephone_sales_order.erp",method=RequestMethod.GET)
	public String createTelephoneSalesOrder(ModelMap model){
		
		model.addAttribute(new TelephoneSalesOderBean());
		return "telephone_sales_order";
	}
	
	@RequestMapping(value="stelephone_sales_order.erp",method=RequestMethod.POST)
	public String createdTelephoneSalesOrder(@ModelAttribute TelephoneSalesOderBean telephonesales,ModelMap model){
		
		slservice.createTelephoneSalesOder(telephonesales);
		return "redirect:telephone_sales_order.erp";
	}
	
	@RequestMapping(value="sales_order.erp",method=RequestMethod.GET)
	public String createSalesOrder(ModelMap model){
		model.addAttribute(new SalesOrderBean());
		return "sales_order";
		
	}
	@RequestMapping(value="ssales_order.erp",method=RequestMethod.POST)
	public String createdSalesOrder(@ModelAttribute SalesOrderBean salesoder){
		
		slservice.createSalesOder(salesoder);
		return "redirect:sales_order.erp";
		
	}
	@RequestMapping(value="sales_call_log.erp",method=RequestMethod.GET)
	public String createSalesCallLog(ModelMap model){
		model.addAttribute(new SalesCallLog());
		return "sales_call_log";
	}
	@RequestMapping(value="ssales_call_log.erp",method=RequestMethod.POST)
	public String createdSalesCallLog(@ModelAttribute SalesCallLog saleslog){
		slservice.createSalesCallLog(saleslog);
		return "redirect:sales_call_log.erp";
	}
	@RequestMapping(value="sl_pettycashjournal.erp",method=RequestMethod.GET)
	public String createSalesPettyCashJournal(ModelMap model){
		model.addAttribute(new PettyCastBean());
		return "sL_pettycashjournal";
	}
	
	@RequestMapping(value="ssl_pettycashjournal.erp",method=RequestMethod.POST)
	public String createdSalesPettyCashJournal(@ModelAttribute PettyCastBean pettycash) {
		return "redirect:sl_pettycashjournal.erp";
	}
	
	
	@RequestMapping(value="sales_entry_form.erp",method=RequestMethod.GET)
	public String createSalesEntry(ModelMap model){
		model.addAttribute(new SalesEntryFormBean());
		return "sales_entry_form";
	}
	@RequestMapping(value="ssales_entry_form.erp",method=RequestMethod.POST)
	public String createdSalesEntry(@ModelAttribute SalesEntryFormBean salesentryform){
		slservice.createSalesEntryForm(salesentryform);
		return "redirect:sales_entry_form.erp";
	}
	
	@RequestMapping(value="sales_return_entry.erp",method=RequestMethod.GET)
	public String createSalesReturnEntry(ModelMap model){
		model.addAttribute(new SalesEntryFormBean());
		return "sales_return_entry";
	}
	@RequestMapping(value="ssales_return_entry.erp",method=RequestMethod.POST)
	public String createdSalesReturnEntry(@ModelAttribute SalesReturnEntryForm salesreturn){
		slservice.createSalesReturnEntryForm(salesreturn);
		return "redirect:sales_return_entry.erp";
	}
}
