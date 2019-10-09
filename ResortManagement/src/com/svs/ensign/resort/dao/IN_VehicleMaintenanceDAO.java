package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.VehicleMaintanenceBean;
import net.sf.json.JSONObject;

public interface IN_VehicleMaintenanceDAO {
	public boolean createVehicleMaintanence(VehicleMaintanenceBean vehiclemaintanence);
	public JSONObject viewVehicleMaintanence();
	
}
