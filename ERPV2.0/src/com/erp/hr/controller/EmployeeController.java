//--------------------------------
//EmployeeController.java
//--------------------------------
/**
 * 
 */
package com.erp.hr.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.erp.hr.bean.EmployeeBean;
import com.erp.hr.bean.EmployeeRequisitionBean;
import com.erp.hr.bean.InterviewEvalutionBean;
import com.erp.hr.service.EmployeeService;

/**
 * @author RAVI
 * 
 */
@Controller
public class EmployeeController {

	@Autowired
	EmployeeService empservice;
	private EmployeeRequisitionBean employee_requisition_form;

	List employeelist=null;
	
	/**
	 * Setting the Home.jsp to access the page.
	 * */
	@RequestMapping(value = "home.erp", method = RequestMethod.GET)
	public String setHomePage(ModelMap model) {
		return "Home";
	}
	
	/**
	 * 
	 * @param model create an object for EmployeeBean
	 * @return employeeinformation.jsp
	 */
	@RequestMapping(value = "EmployeeFrom.erp", method = RequestMethod.GET)
	public String createdEmployee(ModelMap model) {
		model.addAttribute(new EmployeeBean());
		return "employeeinformationform";
	}
	/**
	 * 
	 * @param empbean It will send the bean class from employeeinformation.jsp to the method
	 * @param model
	 * @return It will send the bean object to employeeService class.
	 */
	@RequestMapping(value = "semployee.erp", method = RequestMethod.POST)
	public String createdEmployeeDetails(@ModelAttribute EmployeeBean empbean,
			ModelMap model) {
		empservice.createEmployee(empbean);
		return "redirect:EmployeeFrom.erp";
	}
	
	/**
	 * @param model It generate Object for InterviewEvalutionBean when ever you enter the Interview_evalution_form.erp 
	 * @return Interview_evalution_form.jsp
	 */
	@RequestMapping(value = "Interview_evalution_form.erp", method = RequestMethod.GET)
	public String createInterviewEvalution(ModelMap model) {
		model.addAttribute(new InterviewEvalutionBean());
		return "Interview_evalution_form";

	}

	/**
	 * 
	 * @param interviewevalution - Bean Object from interview_evalution_form.erp  
	 * @return It sends interviewevalution Object to employeservice and redirect to Interview_evalution_form.erp.
	 */
	@RequestMapping(value = "s_interview_evalution.erp", method = RequestMethod.POST)
	public String createdInterviewEvalution(
			@ModelAttribute InterviewEvalutionBean interviewevalution,
			ModelMap model) {
		empservice.createInterviewEvalution(interviewevalution);
		return "redirect:Interview_evalution_form.erp";
	}

	/**
	 * 
	 * @param model It will get data from database and add it to the InterviewEvalution List object.
	 * @return It will send the model object to interviewEvalutionReport.jsp(.erp).
	 */
	@RequestMapping(value = "InterviewEvalutionReport.erp", method = RequestMethod.GET)
	public ModelAndView viewEmployees(HttpServletResponse response) {
		ModelMap model = new ModelMap();
		model.addAttribute("InterviewEvalution",
				empservice.viewInterviewEvalution());
		return new ModelAndView("InterviewEvalutionReport", model);
	}

	/**
	 * 
	 * @return
	 */
	@RequestMapping(value = "employee_information_report.erp", method = RequestMethod.GET)
	public ModelAndView viewEmployees1(HttpServletRequest request,
			HttpServletResponse response) {
		ModelMap model = new ModelMap();
		model.addAttribute("EmployeeList", empservice.viewEmployeeList());
		return new ModelAndView("employee_information_form", model);
	}

	@RequestMapping(value = "employee_requisition_form.erp", method = RequestMethod.GET)
	public String createRequisition(ModelMap model) {
		model.addAttribute(new EmployeeRequisitionBean());
		return "employee_requisition_form";
	}

	@RequestMapping(value = "srequisition.erp", method = RequestMethod.POST)
	public String createdRequisition(
			@ModelAttribute EmployeeRequisitionBean employeerequisitionbean,
			ModelMap model) {
		empservice.createEmployeeRequisition(employeerequisitionbean);
		return "redirect:employee_requisition_form.erp";
	}

	@RequestMapping(value = "employee_requisition_form_report.erp", method = RequestMethod.GET)
	public ModelAndView viewEmployeeRequisition(HttpServletRequest request,
			HttpServletResponse response) {
		ModelMap model = new ModelMap();
		model.addAttribute("requisitionlist", empservice.viewRequisition());
		return new ModelAndView("employee_requisition_form_report", model);
	}

	@RequestMapping(value = "employee_head_report.erp", method = RequestMethod.GET)
	public ModelAndView headCount(HttpServletRequest request,
			HttpServletResponse responce) {
		ModelMap model = new ModelMap();
		
		return new ModelAndView("employee_head_report", model);
	}
	
	@RequestMapping(value="emp_list.erp",method=RequestMethod.GET)
	public ModelAndView getEmployeeDetails(HttpServletRequest request,HttpServletResponse response) {
		request.setAttribute("employeelist", empservice.viewEmployeeList());
		return new ModelAndView("emp_list");
	}
	
	@RequestMapping(value="hr_search_employees.erp",method=RequestMethod.GET)
	public String searchForEmployee(HttpServletRequest request,HttpServletResponse response,ModelMap model){
		model.addAttribute(new EmployeeBean());
		return "hr_search_employees";
	}
	
	@RequestMapping(value="hr_search1.erp",method=RequestMethod.GET)
	public String searchedEmployees(HttpServletRequest request,HttpServletResponse response,ModelMap model){
		System.out.println("Search Method");
		String fromdate=request.getParameter("fromdate");
		String todate=request.getParameter("todate");
		request.setAttribute("emplist", empservice.searchByDate(fromdate, todate));
		return "hr_search_employee1";
	}
	
	@RequestMapping(value="hr_search2.erp",method=RequestMethod.GET)
	public String searchEmployees1(HttpServletRequest request,HttpServletResponse response){
		System.out.println("Search Method2");
		return "hr_search2";
	}
}
