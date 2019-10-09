package com.erp.inventory.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import com.erp.inventory.bean.InventoryReportBean;
import com.erp.inventory.dao.PurchaseRequisitionDAO;
import com.erp.inventory.service.InventoryServiceIN;


@Controller
public class InvoiceAdminController {

	@Autowired
	InventoryServiceIN invserv;

	@Autowired 
	PurchaseRequisitionDAO purreqdao;
	 List purchaselist;
	 List  invenList;
	 List outofstocklist;

	 @RequestMapping(value="purchase_requisition_report.erp",method=RequestMethod.GET)
	public ModelAndView viewPurchaseRequisitionReport(HttpServletRequest request,HttpServletResponse response){
		
		purchaselist=purreqdao.viewPurchaseReport();
		request.setAttribute("purList", purchaselist);
			
		return new ModelAndView("purchase_requisition_report");
	}
	
	@RequestMapping(value="inventory_report2.erp",method=RequestMethod.GET)
	public ModelAndView viewInventoryReport(HttpServletRequest request,HttpServletResponse response){
		request.setAttribute("InvenList",invserv.InventoryReport());
		return new ModelAndView("inventory_report2");
	}
	
	@RequestMapping(value="outofstockreport.erp",method=RequestMethod.GET)
	public ModelAndView viewOutOfStockReport(HttpServletRequest request,HttpServletResponse response){
		request.setAttribute("outofstocklist",invserv.OutOfStockReport());
		return new ModelAndView ("outofstockreport");
	}
	
	@RequestMapping(value="physical_inventroy_count_report.erp",method=RequestMethod.GET)
	public ModelAndView viewPhysicalInventCountReport(HttpServletRequest request,HttpServletResponse response){
		request.setAttribute("physicalinvenlist",invserv.PhysicalInventoryCount());
		return new ModelAndView ("physical_inventroy_count_report");
	}
	@RequestMapping(value="petty_cash_journal_report.erp",method=RequestMethod.GET)
	public ModelAndView viewPettyCashJournalReport(HttpServletRequest request,HttpServletResponse response){
		request.setAttribute("pettycashjournallist",invserv.PettyCashJournal());
		return new ModelAndView ("petty_cash_journal_report");
	}
	
	@RequestMapping(value="stock_details_report.erp",method=RequestMethod.GET)
	public ModelAndView viewStockDetailsReport(HttpServletRequest request,HttpServletResponse response){
		
		return new ModelAndView ("stock_details_report");
	}
	
	
	
}
