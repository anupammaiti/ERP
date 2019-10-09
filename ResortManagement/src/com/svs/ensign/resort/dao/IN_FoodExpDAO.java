package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.FoodExcepensesBean;
import net.sf.json.JSONObject;

public interface IN_FoodExpDAO {
	
	public boolean generateFoodExp(FoodExcepensesBean foodexp);
	public JSONObject viewFoodExpensesByExecutive(String username);
}
