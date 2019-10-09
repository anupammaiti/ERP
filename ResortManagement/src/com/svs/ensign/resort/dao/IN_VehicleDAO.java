package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.cms.bean.VehicleDetailsBean;
import net.sf.json.JSONObject;

public interface IN_VehicleDAO {

	public boolean createVehicle(VehicleDetailsBean vehicledetailsbean);
	public JSONObject viewVehicle();
	public JSONObject viewVehicleByDriverId(String username);
}
