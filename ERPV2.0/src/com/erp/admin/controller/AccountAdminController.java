package com.erp.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * @author Ravi Kiran
 * @version 2.0
 */
@Controller
public class AccountAdminController {

	/**
	 * @param model Home Page for Create Account Admin.
	 * @return This will send the control to Account Admin Page.
	 */
	@RequestMapping(value="",method=RequestMethod.GET)
	public String createAccountAdmin(ModelMap model){
		return "";
	}
}
