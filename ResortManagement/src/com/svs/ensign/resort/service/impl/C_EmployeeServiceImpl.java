package com.svs.ensign.resort.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.svs.ensign.resort.bean.EmployeeBean;
import com.svs.ensign.resort.bean.LoginBean;
import com.svs.ensign.resort.cms.dao.IN_GuestUserDAO;
import com.svs.ensign.resort.dao.IN_EmployeeDAO;
import com.svs.ensign.resort.dao.IN_LoginDAO;
import com.svs.ensign.resort.helper.C_ResortHelper;
import com.svs.ensign.resort.service.IN_EmployeeService;
import com.svs.ensign.resort.util.C_Util_Date;
import net.sf.json.JSONObject;

@Service
public class C_EmployeeServiceImpl implements IN_EmployeeService {

	@Autowired
	IN_EmployeeDAO in_employeedao;//Autowiring the IN_EmployeeDAO.java Interface class.
	@Autowired
	C_Util_Date utildate;//Autowiring the C_Util_Date.java class. 
	@Autowired
	IN_LoginDAO logindao;
	@Autowired
	IN_GuestUserDAO in_guestuserdao;
	@Autowired
	C_ResortHelper resorthelper;
	private int counter=0;
	private boolean insertorupdate=false;
	
	/**
	 * @param EmployeeBean 
	 * Sending EmployeeBean class by adding gendate and send to DAO class.
	 */
	@Override
	public boolean createEmployeeDetails(EmployeeBean cl_employeebean) {
		// TODO Auto-generated method stub
		String userName=null;
		LoginBean loginbean=new LoginBean();
		//System.out.println("EmployeeService");
		userName=cl_employeebean.getUsername();
		cl_employeebean.setUsername(userName);
		cl_employeebean.setGendate(C_Util_Date.generateDate());
		counter=resorthelper.generateEmployeeId();
		
		
		
		//cl_employeebean.setUsername()
		insertorupdate=in_employeedao.createEmployeeDetails(cl_employeebean);
		
		//System.out.println("Counter Value \t"+counter);
		loginbean.setUsername(cl_employeebean.getUsername());
		loginbean.setPassword(cl_employeebean.getPassword());
		loginbean.setDepartment(cl_employeebean.getDepartment());
		loginbean.setGendate(C_Util_Date.generateDate());
		logindao.createLogin(loginbean);
		return insertorupdate;
	}

	

	@Override
	public JSONObject viewTeleEmployee() {
		// TODO Auto-generated method stub
		return in_employeedao.viewEmployees();
	}



	@SuppressWarnings("unchecked")
	@Override
	public JSONObject allotedEmployee(String username) {
		// TODO Auto-generated method stub
		return in_employeedao.allotedEmployees(username);
	}



	@Override
	public JSONObject viewEmployeeById(String id) {
		// TODO Auto-generated method stub
		long id1=Long.parseLong(id);
		return in_employeedao.viewEmployeeById(id1);
	}



	@Override
	public JSONObject viewTeleCallerByDirectorId(String username) {
		// TODO Auto-generated method stub
		//System.out.println("Username"+username);
		return in_employeedao.getTeleCallerByDirectorId(username);
	}



	@Override
	public boolean updateAllotment(EmployeeBean empbean,long id) {
		// TODO Auto-generated method stub
		String status="Alloted";
		String manager=empbean.getManager();
		long empno=id;
		insertorupdate=in_employeedao.updateAllotment(empno, manager, status);
		return insertorupdate;
	}



	@Override
	public JSONObject viewByManagerId(String username) {
		// TODO Auto-generated method stub
		
		return in_employeedao.viewByManagerId(username);
	}



	@Override
	public JSONObject viewSalesExcutiveByDirector(String username) {
		// TODO Auto-generated method stub
		
		return in_employeedao.viewSalesEmployeeByDirector(username);
	}



	@Override
	public JSONObject viewDirectorsByAdmin(String department) {
		// TODO Auto-generated method stub
		String reportingto="CEO";
		
		return in_employeedao.viewDirectorsByAdmin(department, reportingto);
	}



	@Override
	public JSONObject viewEmployeeByName(String username) {
		// TODO Auto-generated method stub
		return in_employeedao.viewEmployeeList(username);
	}



	@Override
	public boolean updateEmployeeDetails(EmployeeBean empbean) {
		// TODO Auto-generated method stub
		in_employeedao.updateEmployeeDetails(empbean);
		return true;
	}



	@Override
	public JSONObject viewListOfEmployeeByHRExecutive(String username) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
