//-------------------------
//LoginController.java
//-------------------------

/**
 * 
 */

package com.erp.hr.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.erp.hr.bean.LoginBean;
import com.erp.hr.service.LoginService;

/**
 * @author RAVI
 * 
 */
@Controller
public class LoginController {

	@Autowired
	private LoginService loginservice;

	 int status=0;
	
	@RequestMapping(value = "login.erp", method = RequestMethod.GET)
	public String getLogin(ModelMap model) {
		System.out.println("Login Controller");
		model.addAttribute(new LoginBean());
		return "login";
	}

	@RequestMapping(value = "logout.erp", method = RequestMethod.GET)
	public String checkLogout(ModelMap model) {
		return "logout";
	}

	@RequestMapping(value = "loginSuccess.erp", method = RequestMethod.POST)
	public String getLoginCheck(@ModelAttribute LoginBean loginbean,
			ModelMap model, HttpServletRequest request) {
		HttpSession httpsession=request.getSession();
		String username = null;
		String password = null;
		String status = null;
		username = request.getParameter("username");
		password = request.getParameter("password");
		
		System.out.println("Login Checkup" + username);

		if ((username.equals("hr_Admin")) && (password.equals("hr_Admin"))) {
			httpsession.setAttribute("uname", username);
			httpsession.setAttribute("pswd",password);
			status = "hr_admin_main";
		} else if ((username.equals("hr_pranam"))
				&& (password.equals("hr_pranam"))) {
			httpsession.setAttribute("uname", username);
			httpsession.setAttribute("pswd",password);
			status = "Home";
		} else if ((username.equals("in_pranam"))
				&& (password.equals("in_pranam"))) {
			httpsession.setAttribute("uname", username);
			httpsession.setAttribute("pswd",password);
			status = "invoice_main";
		} else if ((username.equals("in_admin"))
				&& (password.equals("in_admin"))) {
			httpsession.setAttribute("uname", username);
			httpsession.setAttribute("pswd",password);
			status = "in_admin";
			System.out.println("In Admin");
		} else if ((username.equals("invoice")) && (password.equals("invoice"))) {
			httpsession.setAttribute("uname", username);
			httpsession.setAttribute("pswd",password);
			status = "invoice";
			System.out.println("Invoice ");
		} else if ((username.equals("invoice_admin"))
				&& (password.equals("invoice_admin"))) {
			httpsession.setAttribute("uname", username);
			httpsession.setAttribute("pswd",password);
			status = "invoice_admin";
			System.out.println("Invoice Admin");
		} else if ((username.equals("sl_pranam"))
				&& (password.equals("sl_pranam"))) {
			httpsession.setAttribute("uname", username);
			httpsession.setAttribute("pswd",password);
			status = "sl_main";
			System.out.println("sl_pranam");
		} else if ((username.equals("sl_admin"))
				&& (password.equals("sl_admin"))) {
			httpsession.setAttribute("uname", username);
			httpsession.setAttribute("pswd",password);
			status = "sl_admin";
			System.out.println("sl_admin");
		} else if ((username.equals("sales")) && (password.equals("sales"))) {
			httpsession.setAttribute("uname", username);
			httpsession.setAttribute("pswd",password);
			status = "sales_main";
			System.out.println("sales");
		} else if ((username.equals("sales_admin"))
				&& (password.equals("sales_admin"))) {
			httpsession.setAttribute("uname", username);
			httpsession.setAttribute("pswd",password);
			status = "sales_admin";
			System.out.println("sales_admin");
		} else if ((username.equals("fn_pranam"))
				&& (password.equals("fn_pranam"))) {
			httpsession.setAttribute("uname", username);
			httpsession.setAttribute("pswd",password);
			status = "finance_main";
			System.out.println("fn_pranam");
		} else if ((username.equals("fn_admin"))
				&& (password.equals("fn_admin"))) {
			httpsession.setAttribute("uname", username);
			httpsession.setAttribute("pswd",password);
			status = "fn_admin";
			System.out.println("fn_admin");
		} else if ((username.equals("admin_account"))
				&& (password.equals("admin_account"))) {
			httpsession.setAttribute("uname", username);
			httpsession.setAttribute("pswd",password);
			status = "admin_account";
			System.out.println("admin_account");
		} else if ((username.equals("Admin")) && (password.equals("Admin"))) {
			System.out.println("Admin");
			httpsession.setAttribute("uname", username);
			httpsession.setAttribute("pswd",password);
			status = "Admin";
		} else {
			status = "login";
		}
		return status;
	}

	@RequestMapping(value = "in_admin_main.erp", method = RequestMethod.GET)
	public String createin_main(ModelMap model) {
		return "in_admin";
	}

	@RequestMapping(value = "invoice.erp", method = RequestMethod.GET)
	public String createinvoice_main(ModelMap model) {
		return "invoice";
	}

	@RequestMapping(value = "invoice_admin.erp", method = RequestMethod.GET)
	public String createinvoice_admin_main(ModelMap model) {
		return "invoice_admin";
	}

	@RequestMapping(value = "sl_main.erp", method = RequestMethod.GET)
	public String createsales_main(ModelMap model) {
		return "sl_main";
	}

	@RequestMapping(value = "sl_admin.erp", method = RequestMethod.GET)
	public String createslAdmin(ModelMap model) {
		return "sl_admin";
	}

	@RequestMapping(value = "sales_main.erp", method = RequestMethod.GET)
	public String createsales(ModelMap model) {
		return "sales_main";
	}
	

	@RequestMapping(value = "sales_admin.erp", method = RequestMethod.GET)
	public String createsalesAdmin(ModelMap model) {
		return "sales_admin";

	}

	@RequestMapping(value = "fn_main.erp", method = RequestMethod.GET)
	public String createFinance(ModelMap model) {
		return "finance_main";
	}

	@RequestMapping(value = "fn_account_main.erp", method = RequestMethod.GET)
	public String createFinanceAccount(ModelMap model) {
		return "admin_account";
	}

	@RequestMapping(value = "admin.erp", method = RequestMethod.GET)
	public String createAdmin(ModelMap model) {
		return "Admin";
	}
	
	@RequestMapping(value="loginchecked.erp",method=RequestMethod.POST)
	public String checkLoginStatus(@ModelAttribute LoginBean loginbean,HttpServletRequest request,ModelMap model){
		int status=0;
		String username=null;
		String password=null;
		String loginstatus=null;
		String ustarts=null;
		
		
		username=request.getParameter("username");
		password=request.getParameter("password");
		HttpSession httpsession=request.getSession();
		ustarts=username.substring(0,3);
		System.out.println("Sub String is:"+ustarts);
		status=loginservice.loginCheck(username, password);
		System.out.println("Status");
		if(status==1){
			
			switch(ustarts){
					case "hr_":{
								if(username.equals("hr_admin")){
									httpsession.setAttribute("uname", username);
									httpsession.setAttribute("pswd",password);
									loginstatus="hr_admin_main";
								}
								else
								{
								httpsession.setAttribute("uname", username);
								httpsession.setAttribute("pswd",password);
								loginstatus="Home";
								}
									break;
								}
					case "in_":{
								if(username.equals("in_admin")){
									httpsession.setAttribute("uname", username);
									httpsession.setAttribute("pswd",password);
									loginstatus="in_admin";
								}
								else{
								httpsession.setAttribute("uname", username);
								httpsession.setAttribute("pswd",password);
								loginstatus="invoice_main";
								}
								break;
								}
					case "sl_":{
								if(username.equals("sl_admin")){
									httpsession.setAttribute("uname", username);
									httpsession.setAttribute("pswd",password);
									loginstatus="sales_main";
								}else
								{
								httpsession.setAttribute("uname", username);
								httpsession.setAttribute("pswd",password);
								loginstatus="sl_main";
								}
								break;
					}
					case "inv":{
							if(username.equals("invoice_admin"))
							{httpsession.setAttribute("uname", username);
							httpsession.setAttribute("pswd",password);
								loginstatus="invoice_admin";
							}else{
						httpsession.setAttribute("uname", username);
						httpsession.setAttribute("pswd",password);
							loginstatus="invoice";
							}
								break;
					}
					case "sal":{
						if(username.equals("sales_admin")){
							httpsession.setAttribute("uname", username);
							httpsession.setAttribute("pswd",password);
							loginstatus="sales_admin";
						}
						else{
						httpsession.setAttribute("uname", username);
						httpsession.setAttribute("pswd",password);
								loginstatus="sales_main";
							}
								break;
					}
					case "fn_":{
						if(username.equals("fn_admin")){
							httpsession.setAttribute("uname", username);
							httpsession.setAttribute("pswd",password);
							loginstatus="fn_admin";
						}else
						{
						httpsession.setAttribute("uname", username);
						httpsession.setAttribute("pswd",password);
								loginstatus="finance_main";
						}
								break;
					}
					case "adm":
								{httpsession.setAttribute("uname", username);
								httpsession.setAttribute("pswd",password);
									loginstatus="admin_account";
									break;
								}
					case "Adm":
								{
									httpsession.setAttribute("uname", username);
									httpsession.setAttribute("pswd",password);
									loginstatus="Admin";	
									break;
								}
					default:	{
						loginstatus="login";
						break;
					}
			}
		}else{
			loginstatus="login";
		}
			
		return loginstatus;
	}
	
}
