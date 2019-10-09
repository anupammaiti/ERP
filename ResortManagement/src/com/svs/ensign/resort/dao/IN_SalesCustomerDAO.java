package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.SalesCustomerBean;
import net.sf.json.JSONObject;

public interface IN_SalesCustomerDAO {

	public boolean createSalesCustomer(SalesCustomerBean salescustomerbean);
	public JSONObject viewSLCustomerByAdmin();
	public JSONObject viewSLCustomerByManagerID(String username);
	public JSONObject viewSLCustomerByExecutiveID(String username);
	public JSONObject viewSLCustomerByID(long id);
	public boolean allottingCustomerToFnManager(long custid,String department,String fnmanager);
	public JSONObject viewSLCustomerByFnManager(String username);
	public JSONObject viewSLCustomerByFnExecutor(String username);
	public boolean allottingExecutiveToCustomer(long id,String fnexecutive);
	public JSONObject viewCustomerByFnExecutive(String username);
}
