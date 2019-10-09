package com.erp.hr.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.erp.hr.bean.LeaveApplicationBean;
import com.erp.hr.service.impl.LeaveApplicationService;

@Controller
public class LeaveApplicationController {

	@Autowired
	LeaveApplicationService leaveapplicationservice;

	@RequestMapping(value = "leave_application_form.erp", method = RequestMethod.GET)
	public String createLeaveForm(ModelMap model) {
		model.addAttribute(new LeaveApplicationBean());
		return "leave_application_form";
	}

	@RequestMapping(value = "sleave.erp", method = RequestMethod.POST)
	public String createLeaveApplication(
			@ModelAttribute LeaveApplicationBean leaveapplication) {
		leaveapplicationservice.createLeaveApplication(leaveapplication);
		return "redirect:leave_application_form.erp";
	}

	@RequestMapping(value = "leave_application_report.erp", method = RequestMethod.GET)
	public ModelAndView viewLeaveForm(HttpServletRequest request,
			HttpServletResponse response) {
		ModelMap model = new ModelMap();
		model.addAttribute("leavedetailslist",
				leaveapplicationservice.viewLeaveDetails());
		return new ModelAndView("leave_application_report", model);
	}

}
