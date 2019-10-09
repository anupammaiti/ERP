package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.SalesCallLog;
import net.sf.json.JSONObject;

public interface IN_SalesCallLogDAO {
	
	public boolean createSalesCallLog(SalesCallLog salescalllog);
	public JSONObject viewSalesCallLogByExecutive(String username);
	public JSONObject viewSalesCallLogByManager(String username);
	public JSONObject viewSalesCallLogByDirector();
}
