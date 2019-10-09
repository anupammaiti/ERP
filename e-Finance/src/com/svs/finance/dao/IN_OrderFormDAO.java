package com.svs.finance.dao;

import java.util.List;

import com.svs.finance.bean.OrderFormBean;

public interface IN_OrderFormDAO {

	public boolean createOrderForm(OrderFormBean orderform);
	public List viewOrderFormByExecutive(String username);
	public List viewOrderFormByManager(String username);
	public List viewOrderFormByDirector();
}
