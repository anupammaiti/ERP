package com.svs.ensign.resort.cms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.svs.ensign.resort.bean.LoginBean;
import com.svs.ensign.resort.cms.bean.CustomerBean;
import com.svs.ensign.resort.cms.bean.GuestUserBean;
import com.svs.ensign.resort.cms.dao.IN_CustomerDAO;
import com.svs.ensign.resort.cms.dao.IN_GuestUserDAO;
import com.svs.ensign.resort.cms.service.IN_CustormerService;
import com.svs.ensign.resort.dao.IN_DepartmentDAO;
import com.svs.ensign.resort.dao.IN_EmployeeDAO;
import com.svs.ensign.resort.dao.IN_LoginDAO;
import com.svs.ensign.resort.helper.C_ResortHelper;
import com.svs.ensign.resort.util.C_Util_Date;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class C_CustomerServiceImpl implements IN_CustormerService {
	@Autowired
	C_Util_Date utildate;//Autowiring the C_Util_Date.java class. 
	@Autowired
	IN_LoginDAO logindao;
	@Autowired
	IN_GuestUserDAO in_guestuserdao;
	@Autowired
	IN_CustomerDAO in_customerdao;
	@Autowired
	IN_DepartmentDAO in_departmentdao;
	@Autowired
	IN_EmployeeDAO in_employeedao;
	@Autowired
	C_ResortHelper c_resorthelper;
	@Autowired
	IN_LoginDAO in_logindao;
	JSONObject respObj = new JSONObject();
	private boolean insertorupdate;

	
	
	List<GuestUserBean> guestuserlist;
	List employeelist;
	/**
	 * @param guestuserbean Getting data from Controller to the present class.
	 * @return 
	 * 
	 * It send the Data to GuestUserBean Bean class,
	 * and edit the username and set gendate and send data to login also.
	 * 
	 */
	@Override
	public boolean createGuestUser(GuestUserBean guestuserbean) {
		// TODO Auto-generated method stub
		String userName=null;
		boolean isDuplicate=false;
		int id=0;		
		LoginBean loginbean=new LoginBean();
		//Send to GuestUser.
		guestuserbean.setGendate(utildate.generateDate());
		////System.out.println(guestuserbean.getGuest_name());
		int guest_id=0;
		String guest_id1=null;
		guest_id=c_resorthelper.generateGuestId();
		guest_id1="gu_"+guest_id;
		guestuserbean.setStatus("NEW");
		////System.out.println("Guest id :\t"+guest_id1);
		
		insertorupdate=in_guestuserdao.generatingGuestUser(guestuserbean);
		
		//Send to LoginDAO Class
		
		return insertorupdate;
	}

	@Override
	public void updateGuestUserStatus(String guestid) {
		// TODO Auto-generated method stub
		
	}
/**
 * Update Guest User Class and send to DAO Class.
 * 
 */
	@Override
	public boolean updateGuestUser(GuestUserBean guestuser) {
		// TODO Auto-generated method stub
		guestuser.setGendate(utildate.generateDate());
		guestuser.setStatus("OPEN");
		
		insertorupdate=in_guestuserdao.updateGuestUser(guestuser);
		return insertorupdate;
	}
	/**
	 * @return It return data as list to Controller.
	 * @param status set the value as customer to the parameter.
	 */
	public JSONObject viewGuestUsersByTeleCaller() {
		String status="OPEN";
		respObj=in_guestuserdao.viewGuestUsersForTeleCaller(status);
		return respObj;
	}

	
	
	public String viewGuestId() {
		String guest_id=in_guestuserdao.getGuestUserId();
		//System.out.println("GuestId"+guest_id);
		return null;
	}

	@Override
	public JSONObject viewGuestByTeleDirector() {
		// TODO Auto-generated method stub
		String status="OPEN";
		return in_guestuserdao.viewGuestByDirector(status);
	}

	@Override
	public JSONObject viewGuestByTeleDirectorById(String id) {
		// TODO Auto-generated method stub
		long guestid=Long.parseLong(id);
		return in_guestuserdao.viewGuestUsers(guestid);
	}

	@Override
	public JSONObject viewGuestByTeleManager(String designation) {
		// TODO Auto-generated method stub
		String status="OPEN";
		return in_guestuserdao.viewGuestByTeleManager(status, designation);
	}

	@Override
	public String checkForDesignation(String username) {
		// TODO Auto-generated method stub
		respObj=in_employeedao.checkForDesignation(username);
		//System.out.println("Designation is:"+employeelist.size());
		String designation=null;
		JSONArray designationArr=respObj.getJSONArray("Data");
		for(int i=0;i<designationArr.size();i++){
			designation=designationArr.get(i).toString();
		}
		return designation;
	}

	@Override
	public JSONObject viewGuestByTeleCaller(String username) {
		// TODO Auto-generated method stub
		String status="OPEN";
		//System.out.println("User Name\t"+username);
		return in_guestuserdao.viewGuestByTeleCaller(username, status);
	}

	@Override
	public JSONObject viewGuestRequestCalls(String username) {
		// TODO Auto-generated method stub
		String today=utildate.generateDate();
		return in_guestuserdao.viewGuestRequestCalls(username, today);
	}

	@Override
	public JSONObject viewGuestRequestCallsById(String id) {
		// TODO Auto-generated method stub
		return in_guestuserdao.viewGuestRequestCallsById(id);
	}

	@Override
	public void updateGuestRequestCalls(GuestUserBean guestuser,long id) {
		// TODO Auto-generated method stub
		long guestid=id;
		//System.out.println(guestid);
		String requestforcall2=guestuser.getRequestforcall2();
		String requestforcall3=guestuser.getRequestforcall3();
		
		in_guestuserdao.updateGuestRequestCall(guestid, requestforcall2, requestforcall3);
	}

	@Override
	public JSONObject viewGuestByAgent(String username) {
		// TODO Auto-generated method stub
		
		return in_guestuserdao.viewGuestByAgent(username);
	}

	@Override
	public void deleteGuestUser(long guest_id) {
		// TODO Auto-generated method stub
		in_guestuserdao.deleteGuestById(guest_id);
	}

	@Override
	public JSONObject viewAllotedGuestUser() {
		// TODO Auto-generated method stub
		String status="OPEN";
		return in_guestuserdao.viewAllotedGuestList(status);
	}

	@Override
	public boolean updateGuestToCustomer(long id) {
		// TODO Auto-generated method stub
		String status="Proceed";
		insertorupdate=in_guestuserdao.updateGuestToCustomer(id, status);
		return insertorupdate;
	}

	@Override
	public JSONObject viewConvertedGuestToCustomer() {
		// TODO Auto-generated method stub
		String status="Proceed";
		return in_guestuserdao.viewConvertedGuestList(status);
	}

	@Override
	public JSONObject viewGuestById(long id) {
		// TODO Auto-generated method stub
		
		return in_guestuserdao.viewGuestById(id);
	}
	
	
	//Customer Details

	@Override
	public boolean generateCustomer(CustomerBean customerbean,String username,long id) {
		// TODO Auto-generated method stub
		String department="Customer";
		String status1="NEW";
		LoginBean login=new LoginBean();
		customerbean.setDeltby(username);
		customerbean.setGendate(utildate.generateDate());
		customerbean.setDepartment(department);
		customerbean.setStatus(status1);
		login.setUsername(customerbean.getUsername());
		login.setPassword(customerbean.getPassword());
		login.setDepartment(department);
		String status="Process";
		
		insertorupdate=in_guestuserdao.updateGuestToCustomer(id, status);
		insertorupdate=in_customerdao.generateCustomerDAO(customerbean);
		in_logindao.createLogin(login);
		return insertorupdate;
	}

	@Override
	public JSONObject viewCustomer() {
		// TODO Auto-generated method stub
		String status="NEW";
		return in_customerdao.viewCustomerByStatus(status);
	}
		
	@Override
	public JSONObject viewCustomerByManagerID(String username) {
		// TODO Auto-generated method stub
		
		return in_customerdao.viewCustomerByMangaerID(username);
	}

	@Override
	public JSONObject viewGuestUser() {
		// TODO Auto-generated method stub
		return in_guestuserdao.viewGuestUsers();
	}

	@Override
	public JSONObject viewCustomerById(long id) {
		// TODO Auto-generated method stub
		
		return in_customerdao.viewCustomerById(id);
	}

	@Override
	public boolean updateCustomerAllotment(CustomerBean customerbean) {
		// TODO Auto-generated method stub
		String custid=customerbean.getUsername();
		String manager=customerbean.getSlm_id();
		String deltby=customerbean.getSle_id();
		String department=customerbean.getSldept();
		String status="Alloted";
		return in_customerdao.updateCustomerAllotment(custid, manager, department, deltby,status);
	}

	@Override
	public JSONObject viewCustomerByCustID(String username) {
		// TODO Auto-generated method stub
		
		return in_customerdao.viewCustByExcecutorID(username);
	}

	@Override
	public JSONObject viewSLCustomerByManagerID(String username) {
		// TODO Auto-generated method stub
		
		return null;
	}

	@Override
	public boolean allotingSLManagerToCustomer(CustomerBean customerbean){
		// TODO Auto-generated method stub
		try{
		String customerid=customerbean.getUsername();
		String department=customerbean.getDept();
		String manager=customerbean.getSlm_id();
		insertorupdate=in_customerdao.allotingManagerToCustomer(customerid, department, manager);
		}catch(Exception e){
			e.printStackTrace();
		}
		return insertorupdate;
		
	}

	@Override
	public JSONObject viewCustomerBySalesManagerID(String username) {
		// TODO Auto-generated method stub
		String status="New";
		return in_customerdao.viewCustomerBySLManagerID(username,status);
	}

	@Override
	public JSONObject viewAllotedCustomerBySalesManager(String username) {
		// TODO Auto-generated method stub
		String status="Alloted";
		
		return in_customerdao.viewAllottedCustomerBySLManager(username, status);
	}

	@Override
	public JSONObject viewAllCustomerList() {
		// TODO Auto-generated method stub
		
		return in_customerdao.viewAllCustomerList();
	}

	
	
}
