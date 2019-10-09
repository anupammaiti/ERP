package com.erp.hr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdministratorController {

	@RequestMapping(value="HRAdmin.erp",method=RequestMethod.GET)
	public String createAdministrator(){
		
		return "hr_admin_main";
	}
	
}
