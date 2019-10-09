package com.svs.ensign.resort.service;

import java.util.List;

import com.svs.ensign.resort.bean.EmployeeBean;
import com.svs.ensign.resort.cms.bean.GuestUserBean;
import net.sf.json.JSONObject;


public interface IN_EmployeeService {

	public boolean createEmployeeDetails(EmployeeBean employeebean);
	public JSONObject viewTeleEmployee();	
	public JSONObject allotedEmployee(String username);
	public JSONObject viewEmployeeById(String username);
	public JSONObject viewTeleCallerByDirectorId(String username);
	public boolean updateAllotment(EmployeeBean empbean,long id);
	public JSONObject viewByManagerId(String username);
	public JSONObject viewSalesExcutiveByDirector(String username);
	public JSONObject viewDirectorsByAdmin(String department);
	public JSONObject viewEmployeeByName(String username);
	public boolean updateEmployeeDetails(EmployeeBean empbean);
	public JSONObject viewListOfEmployeeByHRExecutive(String username);
	
}
