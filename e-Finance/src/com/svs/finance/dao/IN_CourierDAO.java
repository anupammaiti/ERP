package com.svs.finance.dao;

import java.util.List;

import com.svs.finance.bean.CourierRecieptBean;

public interface IN_CourierDAO {

	public boolean generateCourierReciept(CourierRecieptBean courierreciept);
	
	public List<CourierRecieptBean> searchCourierReciept(CourierRecieptBean crb);
}
