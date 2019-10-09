package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.TelephoneSalesOderBean;
import net.sf.json.JSONObject;

public interface IN_TelephoneSalesDAO {

	public boolean createTelephoneSalesOrder(TelephoneSalesOderBean telephonesalesorder);
	public JSONObject viewTelephoneSalesOrderByExecutive(String username);
	public JSONObject viewTelephoneSalesOrderByManager(String username);
	public JSONObject viewTelephoneSalesOrderByDirector();
}
