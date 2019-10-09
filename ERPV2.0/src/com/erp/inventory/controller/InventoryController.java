package com.erp.inventory.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.erp.inventory.bean.InventoryReportBean;
import com.erp.inventory.bean.OutOfStockNoticeBean;
import com.erp.inventory.bean.PettyCastBean;
import com.erp.inventory.bean.PhysicalInventoryCount;
import com.erp.inventory.bean.PurchaseRequisitionBean;
import com.erp.inventory.service.InventoryServiceIN;

@Controller
public class InventoryController {

	@Autowired
	InventoryServiceIN invser;
	
	@RequestMapping(value = "invoice_main.erp", method = RequestMethod.GET)
	public String inventorymain(ModelMap model) {

		return "invoice_main";
	}

	@RequestMapping(value = "purchase_requisition_form.erp", method = RequestMethod.GET)
	public String createPurchaseRequisition(ModelMap model) {
		model.addAttribute(new PurchaseRequisitionBean());
		return "purchase_requisition_form";
	}

	@RequestMapping(value = "spurchase.erp", method = RequestMethod.POST)
	public String createdPurchaseRequisition(
			@ModelAttribute PurchaseRequisitionBean purchaserequisition,
			ModelMap model) {
		invser.createPurchaseRequisition(purchaserequisition);
		return "redirect:purchase_requisition_form.erp";
	}

	@RequestMapping(value="gendpurchaseid.erp",method=RequestMethod.GET)
	public void generatePurchaseID(HttpServletRequest requeset,HttpServletResponse response){
		PrintWriter out;
		int prid=invser.generatePurchaseRequisitionId();
		
		try{
			out=response.getWriter();
			out.print(prid);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		response.setContentType("plian/text");
	}
	
	@RequestMapping(value = "inventory_report.erp", method = RequestMethod.GET)
	public String createInventoryReport(ModelMap model) {
		model.addAttribute(new InventoryReportBean());
		return "inventory_report";
	}

	@RequestMapping(value = "sinrep.erp", method = RequestMethod.POST)
	public String createdInventoryReport(
			@ModelAttribute InventoryReportBean invrep) {
		invser.createInventroyReport(invrep);
		return "redirect:inventory_report.erp";
	}

	@RequestMapping(value = "outofstocknotice.erp", method = RequestMethod.GET)
	public String createOutOfStockNotice(ModelMap model) {
		model.addAttribute(new OutOfStockNoticeBean());
		return "outofstocknotice";
	}

	@RequestMapping(value="soutofstock.erp",method=RequestMethod.POST)
	public String createdOutOfStockNotice(@ModelAttribute OutOfStockNoticeBean oofbean){
		invser.createOutOfStock(oofbean);
		return "redirect:outofstocknotice.erp";
	}
	@RequestMapping(value="physicalinventorycountsheet.erp",method=RequestMethod.GET)
	public String createPhysicalInventoryCount(ModelMap model){
		model.addAttribute(new PhysicalInventoryCount());
		return "physicalinventorycountsheet";
	}
	@RequestMapping(value="sphysicalinventcount.erp",method=RequestMethod.POST)
	public String createdPhysicalInventroyCount(@ModelAttribute PhysicalInventoryCount pinvc){
	invser.createPhysicalInventoryCount(pinvc);
		return "redirect:physicalinventorycountsheet.erp";	
	}
	
	@RequestMapping(value="pettycashjournal.erp",method=RequestMethod.GET)
	public String createPettyCashJournal(ModelMap model){
		model.addAttribute(new PettyCastBean());
		return "pettycashjournal";
	}
	@RequestMapping(value="spettycashjournal.erp",method=RequestMethod.POST)
	public String createdPettyCashJournal(@ModelAttribute PettyCastBean pettybean){
		invser.createPettyCashJournal(pettybean);
		return "redirect:pettycashjournal.erp";
	}
	@RequestMapping(value="invoice_stock_details.erp",method=RequestMethod.GET)
	public String createInvoiceStockDetails(ModelMap model){
		//model.addAttribute(new )
		return "invoice_stock_details";
	}
	
}
