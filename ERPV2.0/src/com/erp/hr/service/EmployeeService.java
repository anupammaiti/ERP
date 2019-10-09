package com.erp.hr.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.erp.hr.bean.EmployeeBean;
import com.erp.hr.bean.EmployeeRequisitionBean;
import com.erp.hr.bean.InterviewEvalutionBean;
import com.erp.hr.bean.LoginBean;
import com.erp.hr.dao.EmployeeDAO;
import com.erp.hr.dao.EmployeeRequisitionDAO;
import com.erp.hr.dao.InterviewEvalutionDAO;
import com.erp.hr.dao.LoginDAO;

public class EmployeeService {

	@Autowired
	EmployeeDAO empdao;
	@Autowired
	LoginDAO logindao;
	@Autowired
	InterviewEvalutionDAO interviewevalutiondao;
	@Autowired
	EmployeeRequisitionDAO employeerequisitiondao;
	@Autowired
	EmployeeRequisitionDAO emprequisitiondao;

	LoginBean login = new LoginBean();
	List searchemployee;
	List interviewevalution;
	List requisitionlist;
	List headcount;

	public void createEmployee(EmployeeBean empbean) {

		System.out.println("Username" + empbean.getUsername());
		System.out.println("Password" + empbean.getPassword());

		login.setUsername(empbean.getUsername());
		login.setPassword(empbean.getPassword());
		login.setDepartment(empbean.getDepartment());
		empdao.createEmployee(empbean);
		logindao.createLogin(login);

	}

	public void createInterviewEvalution(
			InterviewEvalutionBean interviewevalution) {

		interviewevalutiondao.createInterviewEvalution(interviewevalution);
	}

	public List viewInterviewEvalution() {
		interviewevalution = interviewevalutiondao.viewInterviewEvalution();
		return interviewevalution;
	}

	public List viewEmployeeList() {
		interviewevalution = empdao.viewEmployee();
		return interviewevalution;
	}

	public void createEmployeeRequisition(
			EmployeeRequisitionBean employeerequisitionbean) {
		employeerequisitiondao.createRequisition(employeerequisitionbean);
	}

	public List viewRequisition() {
		requisitionlist = employeerequisitiondao.viewRequisition();
		return requisitionlist;
	}

	public List viewCountEmployee() {
		String month = null;

		return headcount;
		
	}
	
	public List searchByDate(String fromdate,String todate) {
		
		
	return empdao.searchEmployeeList(fromdate, todate);	
	}
	
	
}
