package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.OrderFormBean;
import net.sf.json.JSONObject;

public interface IN_OrderFormDAO {

	public boolean createOrderForm(OrderFormBean orderform);
	public JSONObject viewOrderFormByExecutive(String username);
	public JSONObject viewOrderFormByManager(String username);
	public JSONObject viewOrderFormByDirector();
}
