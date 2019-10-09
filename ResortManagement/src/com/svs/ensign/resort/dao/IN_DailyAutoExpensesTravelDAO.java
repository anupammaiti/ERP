package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.AutoExpencesesTravelBean;
import net.sf.json.JSONObject;

public interface IN_DailyAutoExpensesTravelDAO {
	

	public boolean createDailyAutoExpenses(AutoExpencesesTravelBean autoexpenses);
	public JSONObject viewAutoTravelExpByExecutive(String username);
	
}
