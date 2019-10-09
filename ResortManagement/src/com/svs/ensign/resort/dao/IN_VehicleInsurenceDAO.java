package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.VehicleInsurenceBean;
import net.sf.json.JSONObject;

public interface IN_VehicleInsurenceDAO {

	public boolean createVehicleInsurence(VehicleInsurenceBean vehicleinsurencebean);
	public JSONObject viewVehicleInsurence();
	public JSONObject viewVehicleInsurenceByDriverId(String username);
}
