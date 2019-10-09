package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.HotelExpensesBean;
import net.sf.json.JSONObject;

public interface IN_HotelExpDAO {
	public boolean generateHotelExp(HotelExpensesBean hotelexp);
	public JSONObject viewHotelExpByExecutive(String username);

}
