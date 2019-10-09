package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.SalesManagerTastBean;
import net.sf.json.JSONObject;

public interface IN_SalesManagerTaskDAO {
public boolean generateSalesManagerTask(SalesManagerTastBean salesmanagertask);
public JSONObject viewSalesManagerTaskAdmin();
public JSONObject viewSalesManagerTaskByAdmin();
public int updateAccessController(String deltby,String accessby);
}
