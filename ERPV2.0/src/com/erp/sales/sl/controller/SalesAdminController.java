package com.erp.sales.sl.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import com.erp.sales.sl.service.SlServiceIN;


@Controller
public class SalesAdminController {

	@Autowired
	SlServiceIN slaesservice;
	
	@RequestMapping(value="sales_invoice_report.erp",method=RequestMethod.GET)
	public ModelAndView createInvoiceReport(HttpServletRequest request,HttpServletResponse response){
		request.setAttribute("InvoiceReportList", slaesservice.getInvoiceReport());
		return new ModelAndView("sales_invoice_report");
	}
	@RequestMapping(value="appricial_form_report.erp",method=RequestMethod.GET)
	public ModelAndView getAppricialReport(HttpServletRequest request,HttpServletResponse response){
		request.setAttribute("AppricialFormList",slaesservice.getAppritialFormReport());
		return new ModelAndView ("appricial_form_report");
	}
	@RequestMapping(value="orderform_report.erp",method=RequestMethod.GET)
	public ModelAndView getOderFormReport(HttpServletRequest request,HttpServletResponse response){
		request.setAttribute("orderformlist", slaesservice.getOrderFormReport());
		return new ModelAndView("orderform_report");
	}
	@RequestMapping(value="telephone_sales_order_report.erp",method=RequestMethod.GET)
	public ModelAndView getTelephoneSalesOrderReport(HttpServletRequest request,HttpServletResponse response){
		request.setAttribute("telorderlist", slaesservice.getTelephoneSalesOrderReport());
		return new ModelAndView("telephone_sales_order_report");
	}
	@RequestMapping(value="sales_call_log_report.erp",method=RequestMethod.GET)
	public ModelAndView getSalesCallLogReport(HttpServletRequest request,HttpServletResponse response){
		request.setAttribute("salescalllog", slaesservice.getSalesCallLogReport());
		return new ModelAndView("sales_call_log_report");
	}
	@RequestMapping(value="sales_petty_cash_journal_report.erp",method=RequestMethod.GET)
	public ModelAndView getPettyCashJournalReport(HttpServletRequest request,HttpServletResponse response){
		request.setAttribute("pettycashlist", slaesservice.getPettyCashJournal());
		return new ModelAndView("petty_cash_journal_report");
	}
	@RequestMapping(value="sales_entry_form_report.erp",method=RequestMethod.GET)
	public ModelAndView getSalesEntryReport(HttpServletRequest request,HttpServletResponse response){
		request.setAttribute("salesentrylist", slaesservice.getSalesEntryReport());
		return new ModelAndView("sales_entry_form_report");
	}
	@RequestMapping(value="sales_re_entry_report.erp",method=RequestMethod.GET)
	public ModelAndView getSalesReEntryReport(HttpServletRequest request,HttpServletResponse response){
		request.setAttribute("salesreturnlist", slaesservice.getSalesReturnEntryReport());
		return new ModelAndView("sales_re_entry_report");
	}
}
