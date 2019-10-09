package com.svs.ensign.resort.dao;


import com.svs.ensign.resort.bean.AggingaccountpaybleBean;
import net.sf.json.JSONObject;

public interface IN_AgingOfAccountPayableDAO {
	public boolean generateAgingOfAccountPayable(AggingaccountpaybleBean agingofaccountpayable);
	public JSONObject viewAggingOfAccountPayableByExecutive(String username);
	
}
