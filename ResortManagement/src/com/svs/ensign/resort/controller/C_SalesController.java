package com.svs.ensign.resort.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
import com.svs.ensign.resort.cms.service.IN_CustormerService;
import com.svs.ensign.resort.service.IN_SalesService;
import com.svs.ensign.resort.util.C_Util_Date;
import net.sf.json.JSONObject;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class C_SalesController {

	@Autowired
	IN_SalesService in_salesservice;
	@Autowired
	IN_CustormerService in_customerservice;
	@Autowired
	C_Util_Date util_date;
	private boolean insertorupdate=false;
	@Value("${resort.success}")String successmsg;
	@Value("${resort.update}")String updatesuccess;
	JSONObject respObj=new JSONObject();
	@RequestMapping(value="sl_customer.res",method={RequestMethod.GET,RequestMethod.POST})
	public String createCustomerBySalesExcecutive(ModelMap model,HttpServletRequest request,@RequestParam(value="id")long id){
		
		//request.setAttribute("", arg1);
		request.setAttribute("customerlist", in_customerservice.viewCustomerById(id));
		model.addAttribute(new SalesCustomerBean());
		return "sl_customer_creation";
	}
	@RequestMapping(value="sl_saved_customer.res",method={RequestMethod.GET,RequestMethod.POST})
	public String createdCustomerBySales(@ModelAttribute SalesCustomerBean slcus,HttpServletRequest request){
		insertorupdate=in_salesservice.createCustomerBySales(slcus);
		if(insertorupdate){
			request.getSession().setAttribute("successmsg", successmsg);
					}
		else{
			
		}
		return "redirect:view_customer_by_sales_executive.res";
	}
	@RequestMapping(value="sl_view_customer_by_admin.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewCustomerBySalesAdmin(ModelMap model,HttpServletRequest request){
			request.setAttribute("slcustomerlist",in_salesservice.viewSLCustomersByAdmin());
		return "sl_view_customer_by_admin";
	}
	
	@RequestMapping(value="sl_view_customer_by_manager.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewCustomerBySalesManager(ModelMap model,HttpServletRequest request){
		String username=(String)request.getSession().getAttribute("username");
			request.setAttribute("slcustomerlist",in_salesservice.viewSLCustomerByManagerID(username));
		return "sl_view_customer_by_sl_manager";
	}
	@RequestMapping(value="sl_view_customer_by_executive.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewCustomerBySalesExecutive(ModelMap model,HttpServletRequest request){
		String username=(String)request.getSession().getAttribute("username");
			request.setAttribute("slcustomerlist",in_salesservice.viewSLCustomerByExecuticeID(username));
		return "sl_view_customer_by_sales_executive";
	}
	@RequestMapping(value="sl_view_customer_by_director.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewCustomerBySalesDirector(ModelMap model,HttpServletRequest request){
			request.setAttribute("slcustomerlist",in_salesservice.viewSLCustomersByAdmin());
		return "sl_view_customer_by_sl_director";
	}
	
	@RequestMapping(value="sl_view_customer_by_fn_director.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewCustomerByFinanceDirector(ModelMap model,HttpServletRequest request){
		return "cust_view_customer_by_admin";
	}
	@RequestMapping(value="sl_view_customer_by_fn_directorGrid.res",method={RequestMethod.GET,RequestMethod.POST})
	public @ResponseBody String viewCustomerByFinanceDirectorGrid(ModelMap model,HttpServletRequest request){
			
		try {
                    
			respObj=in_salesservice.viewSLCustomersByAdmin();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		return respObj.toString();
	}
	@RequestMapping(value="sl_view_customer_by_fn_manager.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewCustomerByFinanceManager(ModelMap model,HttpServletRequest request,@RequestParam("id")long id){
			
		try {
			model.addAttribute(new SalesCustomerBean());
			request.setAttribute("slcustomerlist",in_salesservice.viewCustomerById(id));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		return "cust_allot_finance_manager_to_customer";
	}
	@RequestMapping(value="allot_customer_to_fn_manager.res",method={RequestMethod.GET,RequestMethod.POST})
	public String allotCustomerToFinanceManager(@ModelAttribute SalesCustomerBean slcust,ModelMap model,HttpServletRequest request){
			
		try {
			long id=Long.parseLong(request.getParameter("id"));
				//System.out.println("Customer Id\t"+id);
				
			insertorupdate=in_salesservice.allottingCustomerToFnManager(slcust,id);
			if(insertorupdate){
				request.getSession().setAttribute("allottedmsg", "Allotted Successfully");
			}else{
				
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		return "redirect:sl_view_customer_by_fn_director.res";
	}
	
	@RequestMapping(value="view_customer_by_finance_manager.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewCustomerByFinanceManager(ModelMap model,HttpServletRequest request) {

		try {
			String username=request.getSession().getAttribute("username").toString();
			request.setAttribute("slcustbyfnmanagerlist",in_salesservice.viewSLCustomerListByFnManager(username));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return "view_customer_by_fn_manager";
	}
	
	@RequestMapping(value="allot_executor_to_customer_by_manager.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewSLCustomerByID(ModelMap model,HttpServletRequest request,@RequestParam("id")long id) {

		try {
			model.addAttribute(new SalesCustomerBean());
			request.setAttribute("slcustomerlist",in_salesservice.viewCustomerById(id));
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return "sl_customer_allot_fn_executer_by_manager";
	}

	@RequestMapping(value="allotted_executor_to_customer.res",method={RequestMethod.GET,RequestMethod.POST})
	public String  allottingCustomerToExecutive(@ModelAttribute SalesCustomerBean slcust,HttpServletRequest request){
		long id=Long.parseLong(request.getParameter("id"));
		in_salesservice.allottedExecutiveToCustomer(slcust, id);
		return "redirect:view_customer_by_finance_manager.res";
	}
	
	
	
	@RequestMapping(value="view_customer_by_finance_executive.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewCustomerByFinanceExecutor(ModelMap model,HttpServletRequest request) {

		try {
			String username=request.getSession().getAttribute("username").toString();
			//System.out.println("Username is\t"+username);
			request.setAttribute("slcustbyexc", in_salesservice.viewCustomerByFnExecutive(username));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return "sl_view_allotted_customer_by_fn_executive";
	}
	
	@RequestMapping(value="view_alloted_customer_by_finance_director.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewAllotedCustomerByFinanceDirector(ModelMap model,HttpServletRequest request) {

		try {
			String username=request.getSession().getAttribute("username").toString();
			//System.out.println("Username is\t"+username);
			request.setAttribute("slcustbydirector",in_salesservice.viewSLCustomersByAdmin());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return "sl_view_alloted_customer_by_fn_director";
	}

	@RequestMapping(value="view_alloted_customer_by_finance_admin.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewAllotedCustomerByAdmin(ModelMap model,HttpServletRequest request) {

		try {
			String username=request.getSession().getAttribute("username").toString();
			//System.out.println("Username is\t"+username);
			request.setAttribute("slcustbyexc", in_salesservice.viewCustomerByFnExecutive(username));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return "view_customer_by_fn_manager";
	}
	
	
//##########################################################################################################
	
	//Sales Invoice
	@RequestMapping(value="sl_invoice.res",method={RequestMethod.GET,RequestMethod.POST})
	public String salesInvoice(ModelMap model,HttpServletRequest request){
			model.addAttribute(new InvoiceFormBean());
		return "sl_create_invoice";
	}
	@RequestMapping(value="sl_saved_invoice.res",method={RequestMethod.GET,RequestMethod.POST})
	public String createdInvoice(@ModelAttribute InvoiceFormBean invoice,HttpServletRequest request){
		invoice.setManager(request.getParameter("manager"));
		invoice.setDeltby(request.getParameter("deltby"));
		insertorupdate=in_salesservice.createInvoiceForm(invoice);
		
		if(insertorupdate){
			request.getSession().setAttribute("successmsg", successmsg);
					}
		else{
			
		}
		return "redirect:sl_invoice.res";
	}	
	
	//Display Invoice Data by SL Executives.
	@RequestMapping(value="sl_view_invoice_by_executive.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewInvoiceByExcecutive(ModelMap model,HttpServletRequest request){
		
		model.addAttribute(new InvoiceFormBean());
		
		return "sl_view_invoice_by_sl_executive";
	}	
	
	//Display Invoice Data by SL Manager.
	@RequestMapping(value="sl_view_invoice_by_manager.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewInvoiceByManager(ModelMap model,HttpServletRequest request){
		String username=(String)request.getSession().getAttribute("username");
		//System.out.println("User Name is"+username);
		request.setAttribute("slinvoicelist",in_salesservice.viewSLInvoiceByManagerID(username));
		return "sl_view_invoice_by_sl_manager";
	}	
	//Display Invoice Data by SL Director.
		@RequestMapping(value="sl_view_invoice_by_director.res",method={RequestMethod.GET,RequestMethod.POST})
		public String viewInvoiceByDirector(ModelMap model,HttpServletRequest request){
			String username=(String)request.getSession().getAttribute("username");
			//System.out.println("User Name is"+username);
			request.setAttribute("slinvoicelist",in_salesservice.viewSLInvoiceByDirectorID(username));
			return "sl_view_invoice_by_sl_director";
		}	
		//Display Invoice to Admin.
		@RequestMapping(value="sl_view_invoice_by_admin.res",method={RequestMethod.GET,RequestMethod.POST})
		public String viewInvoiceByAdmin(ModelMap model,HttpServletRequest request){
			String username=(String)request.getSession().getAttribute("username");
			//System.out.println("User Name is"+username);
			request.setAttribute("slinvoicelist",in_salesservice.viewSLInvoiceByAdmin());
			return "sl_view_invoice_by_admin";
		}
	
		@RequestMapping(value="sl_invoiceGrid.res",method={RequestMethod.GET,RequestMethod.POST})
		public String loadInvoiceGrid(HttpServletRequest request,ModelMap model){
//			tl_sl_invoice
			
			return "sl_invoiceGrid";
		}
		//Appraisal Form
		@RequestMapping(value="sl_appraisal_form.res",method={RequestMethod.GET,RequestMethod.POST})
		public String createAppraisalForm(ModelMap model){
			model.addAttribute(new ApprisialFormBean());
			return "sl_appraisal_form";
		}
		@RequestMapping(value="save_sl_appraisal_form.res",method={RequestMethod.GET,RequestMethod.POST})
		public String createdAppraisalForm(@ModelAttribute ApprisialFormBean apprisialform,HttpServletRequest request){
			
			insertorupdate=in_salesservice.createApprisialForm(apprisialform);
			if(insertorupdate){
				request.getSession().setAttribute("successmsg",successmsg);
			}
			else{
				
			}
			return "sl_appraisal_form";
		}
		@RequestMapping(value="sl_view_apprisial_form_by_executive.res",method={RequestMethod.GET,RequestMethod.POST})
		public String viewApprisalFormBySLExecutive(HttpServletRequest request){
			try {
				String username=request.getSession().getAttribute("username").toString();
				request.setAttribute("salesapprisailList", in_salesservice.viewApprisalFormByExecutive(username));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "sl_view_apprisial_form_by_executive";
		}
		
		@RequestMapping(value="sl_view_apprisial_form_by_manager.res",method={RequestMethod.GET,RequestMethod.POST})
		public String viewApprisalFormBySLManager(HttpServletRequest request){
			try {
				String username=request.getSession().getAttribute("username").toString();
				request.setAttribute("salesapprisailbyMgrList", in_salesservice.viewApprisalFormBySLManager(username));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "sl_view_apprisalform_by_manager";
		}
		@RequestMapping(value="sl_view_apprisalform_by_director.res",method={RequestMethod.GET,RequestMethod.POST})
		public String viewApprisailListByDirector(HttpServletRequest request){
			request.setAttribute("slapprisialbydirector",in_salesservice.viewApprisalFormByDirector());
			return "sl_view_apprisal_form_by_director";
		}
		
		@RequestMapping(value="sl_view_apprisalform_by_admin.res",method={RequestMethod.GET,RequestMethod.POST})
		public String viewApprisailListByAdmin(HttpServletRequest request){
			request.setAttribute("slapprisialbydirector",in_salesservice.viewApprisalFormByDirector());
			return "sl_view_apprisalform_by_admin";
		}
	
	
	//Sales Purchase Order Form
	@RequestMapping(value="sl_purchase_order.res",method={RequestMethod.GET,RequestMethod.POST})
	public String salesPurchaseOrder(ModelMap model,HttpServletRequest request){
			model.addAttribute(new PurchaseOrderBean());
		return "sl_purchase_order_form";
		}

	@RequestMapping(value="sl_saved_purchase_order.res",method={RequestMethod.GET,RequestMethod.POST})
	public String createdPurchaseOrder(@ModelAttribute PurchaseOrderBean purchaseorder,HttpServletRequest request){
		
		insertorupdate=in_salesservice.createPurchaseOrder(purchaseorder);
		
		if(insertorupdate){
			request.getSession().setAttribute("successmsg", successmsg);
					}
		else{
			
		}
		return "redirect:sl_purchase_order.res";
	}
	//Purchase Order By Executive
	@RequestMapping(value="sl_purchase_order_by_executive.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewPurchaseOrderByExecutive(HttpServletRequest request){
		try {
			String username=request.getSession().getAttribute("username").toString();
			request.setAttribute("purchaseorderlist",in_salesservice.viewPurchaseOrderByExecutive(username) );
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "sl_view_purchase_order_by_executive";
	}
	//Purchase Order By Manager
	@RequestMapping(value="sl_purchase_order_by_manager.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewPurchaseOrderByManager(HttpServletRequest request){
		try {
			String username=request.getSession().getAttribute("username").toString();
			request.setAttribute("pobyManagerlist",in_salesservice.viewPurchaseOrderByManager(username));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "sl_view_purchase_order_by_manager";
	}
	//Purchase Order By Director	
	@RequestMapping(value="sl_purchase_order_by_director.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewPurchaseOrderByDirector(HttpServletRequest request){
		try {
			//String username=request.getSession().getAttribute("username").toString();
			request.setAttribute("pobyDirectorlist",in_salesservice.viewPurchaseOrderByDirector());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "sl_view_purchase_order_by_director";
	}
	
	@RequestMapping(value="sl_view_purchase_order_by_admin.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewPurchaseOrderByAdmin(HttpServletRequest request){
		try {
			//String username=request.getSession().getAttribute("username").toString();
			request.setAttribute("pobyadminlist",in_salesservice.viewPurchaseOrderByDirector());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "sl_view_purchase_order_by_admin";
	}
	/*Order Form*/
	@RequestMapping(value="sl_order.res",method={RequestMethod.GET,RequestMethod.POST})
	public String createOrder(ModelMap model,HttpServletRequest request){
			model.addAttribute(new OrderFormBean());
		return "sl_orderform";
		}
	@RequestMapping(value="save_sl_order.res",method={RequestMethod.GET,RequestMethod.POST})
	public String createdSLOrder(@ModelAttribute OrderFormBean orderform,HttpServletRequest request){
		
		try {
			orderform.setGendate(util_date.generateDate());
			insertorupdate=in_salesservice.createOrderForm(orderform);
			request.getSession().setAttribute("successmsg", successmsg);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:sl_order.res";
	}
	
	//
	@RequestMapping(value="sl_view_orderform_by_executive.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewOrderFormByExecutive(ModelMap model,HttpServletRequest request){
			try {
				String username=request.getSession().getAttribute("username").toString();
				request.setAttribute("slorderbyexecutiveList", in_salesservice.viewOrderFormByExecutive(username));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "sl_view_order_by_executive";
		}
	
	//
	@RequestMapping(value="sl_view_orderform_by_manager.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewOrderFormByManager(ModelMap model,HttpServletRequest request){
			try {
				String username=request.getSession().getAttribute("username").toString();
				//System.out.println("Username\t"+username);
				request.setAttribute("slorderbyManagerList", in_salesservice.viewOrderByManager(username));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "sl_view_order_form_by_manager";
		}
	//
	@RequestMapping(value="sl_view_orderform_by_director.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewOrderFormByDirector(ModelMap model,HttpServletRequest request){
			try {
				String username=request.getSession().getAttribute("username").toString();
				//System.out.println("Username\t"+username);
				request.setAttribute("slorderbyDirectorList", in_salesservice.viewOrderByDirector());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "sl_view_order_by_director";
		}
	@RequestMapping(value="sl_view_orderform_by_admin.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewOrderFormByAdmin(ModelMap model,HttpServletRequest request){
			try {
				
				request.setAttribute("slorderbyadmin", in_salesservice.viewOrderByDirector());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "sl_view_order_form_by_admin";
		}
	
	/*Sales Order*/
	@RequestMapping(value="sl_sales_order_form.res",method={RequestMethod.GET,RequestMethod.POST})
	public String createSalesOrder(ModelMap model){
		model.addAttribute(new SalesOrderBean());
		return "sl_sales_order_form";
	}
	@RequestMapping(value="saved_sl_sales_order.res",method={RequestMethod.GET,RequestMethod.POST})
	public String savedSalesOrder(@ModelAttribute SalesOrderBean salesorder,HttpServletRequest request){

		insertorupdate=in_salesservice.createSalesOrder(salesorder);
		if(insertorupdate){
			request.getSession().setAttribute("successmsg",successmsg);
		}
		return "redirect:sl_sales_order_form.res";
	}
	
	//Sales Oder By Executive
	@RequestMapping(value="sl_view_sales_order_by_executive.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewSalesOrderByExecutive(String username,HttpServletRequest request){
		
		try {
			String username1=request.getSession().getAttribute("username").toString();
			request.setAttribute("salesorderlist",in_salesservice.viewSalesOrderByExecutive(username1));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "sl_view_sales_order_by_executive";
	}
	//Sales Order By Manager
	@RequestMapping(value="sl_view_sales_order_by_manager.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewSalesOrderByManager(String username,HttpServletRequest request){
		
		try {
			 username=request.getSession().getAttribute("username").toString();
			request.setAttribute("salesorderbymanagerlist",in_salesservice.viewSalesOrderByManager(username));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "sl_view_sales_order_by_manager";
	}
	//Sales Order By Director
	@RequestMapping(value="sl_view_sales_order_by_director.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewSalesOrderByDirector(String username,HttpServletRequest request){
		
		try {
			 username=request.getSession().getAttribute("username").toString();
			request.setAttribute("salesorderbydirectorlist",in_salesservice.viewSalesOrderByDirector());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "sl_view_sales_order_by_director";
	}
	//Sales Order By Admin.
	@RequestMapping(value="sl_view_sales_order_by_admin.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewSalesOrderByAdmin(String username,HttpServletRequest request){
		
		try {
			 
			request.setAttribute("salesorderbydirectorlist",in_salesservice.viewSalesOrderByDirector());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "sl_view_sales_order_by_admin";
	}
	
	/*Telephone Sales Order*/
	@RequestMapping(value="sl_telephone_sales_order.res",method={RequestMethod.GET,RequestMethod.POST})
	public String createTelephoneSalesOrder(ModelMap model){
		model.addAttribute(new TelephoneSalesOderBean());
		return "sl_telephone_sales_order";
	}
	@RequestMapping(value="save_sl_telephone_sales_order.res",method={RequestMethod.GET,RequestMethod.POST})
	public String createdTelephoneSalesOrder(@ModelAttribute TelephoneSalesOderBean telephonesalesorder,HttpServletRequest request){
		
		try {
			insertorupdate=in_salesservice.createTelephoneSalesOrder(telephonesalesorder);
			if(insertorupdate){
				request.getSession().setAttribute("successmsg",successmsg);
			}else{
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:sl_telephone_sales_order.res";
	}
	
	@RequestMapping(value="sl_view_telephone_sales_order_by_executive.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewTelephoneSalesOrder(HttpServletRequest request){
		String username=request.getSession().getAttribute("username").toString();
		request.setAttribute("telephonesalesorderbyexecutive", in_salesservice.viewTelephoneSalesOrderByExecutive(username));
		return "sl_view_telephone_sales_order_by_executive";
	}
	
	@RequestMapping(value="sl_view_telephone_sales_order_by_manager.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewTelephoneSalesOrderByManager(HttpServletRequest request){
		String username=request.getSession().getAttribute("username").toString();
		request.setAttribute("telephonesalesorderbymanager", in_salesservice.viewTelephoneSalesOrderByManager(username));
		return "sl_view_telephone_sales_order_by_manager";
	}
	
	@RequestMapping(value="sl_view_telephone_sales_order_by_director.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewTelephoneSalesOrderByDirector(HttpServletRequest request){
		
		request.setAttribute("telephonesalesorderbydirector", in_salesservice.viewTelephoneSalesOderByDirector());
		return "sl_view_telephone_sales_order_by_director";
	}
	//Telephone Sales Order By Admin.
	@RequestMapping(value="sl_view_telephone_sales_order_by_admin.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewTelephoneSalesOrderByAdmin(HttpServletRequest request){
		
		request.setAttribute("telslorderbyadmin", in_salesservice.viewTelephoneSalesOderByDirector());
		return "sl_view_telephone_sales_order_by_admin";
	}
	
	/*Sales Call Log*/
	@RequestMapping(value="sl_sales_call_log.res",method={RequestMethod.GET,RequestMethod.POST})
	public String createSalesCallLog(ModelMap model){
			model.addAttribute(new SalesCallLog());
		return "sl_sales_call_log";
	}
	@RequestMapping(value="save_sl_sales_call_log.res",method={RequestMethod.GET,RequestMethod.POST})
	public String saveSalesCallLog(@ModelAttribute SalesCallLog salescalllog,HttpServletRequest request){
		insertorupdate=in_salesservice.createSalesCallLog(salescalllog);
		if(insertorupdate){
			request.getSession().setAttribute("successmsg", successmsg);
		}else{
			
		}
		return "redirect:sl_sales_call_log.res";
	}
	
	@RequestMapping(value="sl_view_sales_call_log_by_executive.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewSalesCallLogByExecutive(HttpServletRequest request){
		try {
			String username=(String)request.getSession().getAttribute("username");
			request.setAttribute("salescallloglist", in_salesservice.viewSalesCallLogByExecutive(username));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "sl_view_call_log_by_executive";
	}
	
	@RequestMapping(value="sl_view_sales_call_log_by_manager.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewSalesCallLogByManager(HttpServletRequest request){
		try {
			String username=(String)request.getSession().getAttribute("username");
			request.setAttribute("slcllbmng", in_salesservice.viewSalesCallLogByManager(username));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "sl_view_sales_call_log_by_manager";
	}
	@RequestMapping(value="sl_view_sales_call_log_by_director.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewSalesCallLogByDirector(HttpServletRequest request){
		try {
			String username=(String)request.getSession().getAttribute("username");
			request.setAttribute("slcllndir", in_salesservice.viewSalesCallLogByDirector());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "sl_view_sales_call_log_by_director";
	}
	//Sales Call Log By Admin
	@RequestMapping(value="sl_view_sales_call_log_by_admin.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewSalesCallLogByAdmin(HttpServletRequest request){
		try {
			
			request.setAttribute("slcllndir", in_salesservice.viewSalesCallLogByDirector());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "sl_view_sales_call_log_by_admin";
	}
	
	/*Petty Cash Journal*/
	@RequestMapping(value="sl_petty_cash_journal.res",method={RequestMethod.GET,RequestMethod.POST})
	public String createPettyCashJournal(ModelMap model){
		model.addAttribute(new PettyCashBean());
		return "sl_petty_cash_journal";
	}
	
	@RequestMapping(value="save_sl_petty_cash_journal.res",method={RequestMethod.GET,RequestMethod.POST})
	public String savePettyCashJournal(@ModelAttribute PettyCashBean pettycashbean,HttpServletRequest request){
		insertorupdate=in_salesservice.createPettyCashJournal(pettycashbean);
		if(insertorupdate){
			request.getSession().setAttribute("successmsg", successmsg);
		}else{
			
		}
		return "redirect:sl_petty_cash_journal.res";
	}
	
	@RequestMapping(value="sl_view_petty_cash_journal_by_executive.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewPettyCashJournalByExecutive(HttpServletRequest request){
		try {
			String username=(String)request.getSession().getAttribute("username");
			request.setAttribute("slpetjbexe", in_salesservice.viewPettyCashJournalByExecutive(username));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "sl_view_petty_cash_by_executive";
	}
	
	@RequestMapping(value="sl_view_petty_cash_journal_by_manager.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewPettyCashJournalByManager(HttpServletRequest request){
		try {
			String username=(String)request.getSession().getAttribute("username");
			request.setAttribute("slpetjbmgr", in_salesservice.viewPettyCashJournalByManager(username));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "sl_view_petty_cash_journal_by_manager";
	}
	
	@RequestMapping(value="sl_view_petty_cash_journal_by_director.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewPettyCashJournalByDirector(HttpServletRequest request){
		try {
			
			request.setAttribute("slpetjbdir", in_salesservice.viewPettyCashJournalByDirector());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "sl_view_petty_cash_journal_by_director";
	}
	
	@RequestMapping(value="sl_view_petty_cash_journal_by_admin.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewPettyCashJournalByAdmin(HttpServletRequest request){
		try {
			
			request.setAttribute("slpetjbdir", in_salesservice.viewPettyCashJournalByDirector());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "sl_view_petty_cash_journal_by_admin";
	}
	
	
	
	
	//Manager Task List.
	
	@RequestMapping(value="sl_manager_task_form.res",method={RequestMethod.GET,RequestMethod.POST})
	public String generateSalesManagerTaskForm(ModelMap model){
		model.addAttribute(new SalesManagerTastBean());
		return "sl_manager_task_form";
	}
	@RequestMapping(value="save_sl_manager_task_form.res",method={RequestMethod.GET,RequestMethod.POST})
	public String generatedSalesManagerTaskForm(@ModelAttribute SalesManagerTastBean salesmanagerbean){
		in_salesservice.generateSalesManagerTask(salesmanagerbean);
		return "redirect:sl_manager_task_form.res";
	}
	@RequestMapping(value="sl_manager_task_by_admin.res",method={RequestMethod.GET,RequestMethod.POST})
	public String generatedSalesManagerTaskByAdmin(HttpServletRequest request,ModelMap model){
		model.addAttribute(new SalesManagerTastBean());
		//request.getSession().setAttribute("SLManagerAdmin",salesmanagertaskservice.viewSalesManagerTaskByAdmin());
		return "sl_manager_task_by_admin";
	}
	@RequestMapping(value="sl_manager_daily_task.res",method={RequestMethod.GET,RequestMethod.POST})
	public String salesManagerTask(ModelMap model){
		model.addAttribute(new SalesManagerTastBean());
		return "sl_manager_daily_task";
	}	
	
	
	
}

