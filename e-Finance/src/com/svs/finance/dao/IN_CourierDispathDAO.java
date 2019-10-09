package com.svs.finance.dao;

import java.util.List;

import com.svs.finance.bean.CourierDispatchDetailsBean;

public interface IN_CourierDispathDAO {
	
	public boolean generateCourierDispath(CourierDispatchDetailsBean courierdispath);
	public List<CourierDispatchDetailsBean> searchCourierDispath(CourierDispatchDetailsBean cddb);

}
