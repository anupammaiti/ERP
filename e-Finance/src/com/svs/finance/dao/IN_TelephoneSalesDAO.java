package com.svs.finance.dao;

import java.util.List;

import com.svs.finance.bean.TelephoneSalesOderBean;

public interface IN_TelephoneSalesDAO {

	public boolean createTelephoneSalesOrder(TelephoneSalesOderBean telephonesalesorder);
	public List viewTelephoneSalesOrderByExecutive(String username);
	public List viewTelephoneSalesOrderByManager(String username);
	public List viewTelephoneSalesOrderByDirector();
}
