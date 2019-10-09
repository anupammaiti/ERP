package com.erp.inventory.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import com.erp.inventory.bean.InPurchaseReturnBean;
import com.erp.inventory.bean.PurchaseEntryFormBean;
import com.erp.inventory.service.InvoiceServiceIN;

@Controller
public class InvoiceController {

	@Autowired
	InvoiceServiceIN invoiceservice;
	
	
	@RequestMapping(value="purchaseentryform.erp",method=RequestMethod.GET)
	public String createPurchaseEntryForm(ModelMap model){
		model.addAttribute(new PurchaseEntryFormBean());
		return "purchaseentryform";
	}
	@RequestMapping(value="spurchaseentryform.erp",method=RequestMethod.POST)
	public String createdPurchaseEntryForm(@ModelAttribute PurchaseEntryFormBean purchaseentryform){
		System.out.println("Babu tappu");
		invoiceservice.createPurchaseEntryForm(purchaseentryform);
		return "redirect:purchaseentryform.erp";
	}
	@RequestMapping(value="purchasereturnform.erp",method=RequestMethod.GET)
	public String createPurchaseReturnForm(ModelMap model){
		model.addAttribute(new InPurchaseReturnBean());
		return "purchasereturnform";
	}
	@RequestMapping(value="spurchasereturnform.erp",method=RequestMethod.POST)
	public String createdPurchaseReturnForm(@ModelAttribute InPurchaseReturnBean purchasereturn,ModelMap model){
		System.out.println("purchase reenter Form");
		invoiceservice.createPurchaseReturnForm(purchasereturn);
		
		return "redirect:purchasereturnform.erp";		
	}
	@RequestMapping(value="viewpurchaseentryname.erp",method=RequestMethod.GET)
	public void viewPurcherEntryName(HttpServletRequest request,HttpServletResponse response) {
		PrintWriter out;
		List ll;

		try {
			out=response.getWriter();
			ll=invoiceservice.viewPurchaseEntry();
			System.out.println("Size of List"+ll.size());
			if(ll.size()==0)
			{
				
			}else
			{
				for(int i=0;i<ll.size();i++) {
					System.out.println("Hai!!!!!!");
					out.print("<option>"+ll.get(i)+"</option>");
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		response.setContentType("plain/text");
	}
	
	@RequestMapping(value="purchase_entry_report.erp",method=RequestMethod.GET)
	public ModelAndView viewPurchaseEntryReport(HttpServletRequest request,HttpServletResponse response){
		request.setAttribute("purchaseentrylist",invoiceservice.viewPurchaseEntryForm());
		return new ModelAndView ("purchase_entry_report");
	}

	@RequestMapping(value="purchase_return_entry_report.erp",method=RequestMethod.GET)
	public ModelAndView viewPurchaseReturnReport(HttpServletRequest request,HttpServletResponse response){
		request.setAttribute("purchasereturnentrylist",invoiceservice.viewPurchaseReturn());
		return new ModelAndView ("purchase_return_entry_report");
	}
}
