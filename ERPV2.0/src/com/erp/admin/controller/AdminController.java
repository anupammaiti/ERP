package com.erp.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * @author RaviKiran
 *  Sep 24, 2013
 */
@Controller
public class AdminController {

	/**
	 * 
	 * @return This will allow the main page of the Administrator
	 */
	@RequestMapping(value="",method=RequestMethod.GET)
	public String createAdmin(){
		
		return "";
	}
}
