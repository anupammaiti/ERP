package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.SalesOrderBean;
import net.sf.json.JSONObject;

public interface IN_SalesOrderDAO {
	
	public boolean createSalesOrder(SalesOrderBean slorder);
	public JSONObject viewSalesOrderByExecutive(String username);
	public JSONObject viewSalesOrderByManager(String username);
	public JSONObject viewSalesOrderByDirector();
}
