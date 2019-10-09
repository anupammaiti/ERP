package com.svs.ensign.resort.dao;

import java.util.List;

import net.sf.json.JSONObject;

import com.svs.ensign.resort.bean.FinanceCustomerBean;

public interface IN_FinanceCustomerDAO {
	public boolean createFinanceCustomer(FinanceCustomerBean fincust);
	public JSONObject viewCustomerByExecutiveID(String username);
	public JSONObject viewCustomerInstallmentsByAdmin();
	public JSONObject viewCustomerInstallmentsByManagerID(String username);
	public boolean isAvailable(String custid,String status,String deltby);
	public JSONObject viewCustomerInstallment(String custid,String status,String deltby);
	public JSONObject viewCustomerByCustomerId(long username);
	public boolean updateCustomerInstallment(String custid,String remainamount,String paidinstallment,String status);
	public boolean updateCustomerInstallmentStatus(String custid,String status);
}
