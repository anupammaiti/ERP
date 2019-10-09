package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.VehicleAllotmentBean;
import net.sf.json.JSONObject;

public interface IN_VehicleAllotmentDAO {

	public boolean createVehicleAllotment(VehicleAllotmentBean vehicleallotment);
	public JSONObject viewVehicleAllotment(String status);
	public JSONObject checkVehicleAlloted(String status,String today);
}
