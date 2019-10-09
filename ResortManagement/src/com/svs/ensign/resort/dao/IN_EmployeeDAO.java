package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.EmployeeBean;
import net.sf.json.JSONObject;

public interface IN_EmployeeDAO {
	
	public boolean createEmployeeDetails(EmployeeBean cl_employeebean);
	public JSONObject viewEmployees();
	public JSONObject checkForDesignation(String username);
	public JSONObject allotedEmployees(String username);
	public JSONObject viewEmployeeById(long username);
	public JSONObject getEmployeeDeptDes(String username);
	public JSONObject getTeleCallerByDirectorId(String username);
	public boolean updateAllotment(long empno,String manager,String status);
	public JSONObject viewByManagerId(String username);
	public JSONObject viewSalesEmployeeByDirector(String username);
	public JSONObject viewDirectorsByAdmin(String department,String reportingto);
	public JSONObject viewEmployeeList(String empid);
	public boolean updateEmployeeDetails(EmployeeBean empbean);
	public JSONObject viewEmployeeByHRExecutive(String username);
        public JSONObject viewEmployee(String username);
	
}
