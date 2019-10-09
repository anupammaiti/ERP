package com.svs.ensign.resort.cms.service;

import java.util.List;

import com.svs.ensign.resort.cms.bean.CustomerBean;
import com.svs.ensign.resort.cms.bean.GuestUserBean;
import net.sf.json.JSONObject;

public interface IN_CustormerService {
	
	
	//Guest Operations
	public boolean createGuestUser(GuestUserBean guestuserbean);
	public void updateGuestUserStatus(String guestid);
	public boolean updateGuestUser(GuestUserBean guestuser);
	public JSONObject viewGuestUsersByTeleCaller();
	public boolean updateGuestToCustomer(long id);
	public JSONObject viewConvertedGuestToCustomer();
	public JSONObject viewGuestById(long id);
	public String viewGuestId();
	public JSONObject viewGuestByTeleDirector();
	public JSONObject viewGuestByTeleDirectorById(String id);
	public JSONObject viewGuestByTeleManager(String designation);
	public String checkForDesignation(String username);
	public JSONObject viewGuestByTeleCaller(String username);
	public JSONObject viewGuestRequestCalls(String username);
	public JSONObject viewGuestRequestCallsById(String id);
	public void updateGuestRequestCalls(GuestUserBean guestuser,long id);
	public JSONObject viewGuestByAgent(String username);
	public void deleteGuestUser(long guest_id);
	public JSONObject viewAllotedGuestUser();
	public JSONObject viewGuestUser();
	
	//Customer Operations	
	public boolean generateCustomer(CustomerBean customerbean,String username,long id);
	public JSONObject viewCustomer();
	
	public JSONObject viewCustomerByManagerID(String username);
	public JSONObject viewCustomerById(long id);
	public boolean updateCustomerAllotment(CustomerBean customerbean);
	public JSONObject viewCustomerByCustID(String username);
	public JSONObject viewSLCustomerByManagerID(String username);
	public boolean allotingSLManagerToCustomer(CustomerBean customerbean);
	public JSONObject viewCustomerBySalesManagerID(String username);
	public JSONObject viewAllotedCustomerBySalesManager(String username);
	public JSONObject viewAllCustomerList();
}
