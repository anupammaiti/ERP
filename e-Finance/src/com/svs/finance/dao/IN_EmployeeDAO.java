package com.svs.finance.dao;

import java.util.List;

import com.svs.finance.bean.EmployeeBean;

public interface IN_EmployeeDAO {
	public boolean generateEmployee(EmployeeBean employeebean);
	public boolean checkEmployee(String username,String companyname);
	public boolean isAvaliable(String username,String companyname);
	
	public List<EmployeeBean> viewEmployeeByComp(String comp);
	
	public List<EmployeeBean> viewEmployeeById(long id);
	public long getEmployeeId();
	
	
}
