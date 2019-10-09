package com.svs.ensign.resort.cms.dao;


import com.svs.ensign.resort.cms.bean.CustomerBean;
import net.sf.json.JSONObject;

public interface IN_CustomerDAO {

	
	public boolean generateCustomerDAO(CustomerBean customerbean);
	public JSONObject viewCustomers();
	public JSONObject viewCustomerByMangaerID(String username);
	public JSONObject viewCustomerById(long id);
	public boolean updateCustomerAllotment(String custid,String manager,String department,String deltby,String status);
	public JSONObject viewCustByExcecutorID(String username);
	public JSONObject viewCustomerByStatus(String status);
	public boolean allotingManagerToCustomer(String customerid,String department,String managerid);
	public JSONObject viewCustomerBySLManagerID(String username,String status);
	public JSONObject viewAllottedCustomerBySLManager(String username,String status);
	public JSONObject viewAllCustomerList();
}
