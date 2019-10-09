package com.svs.ensign.resort.service;

import java.util.List;

import com.svs.ensign.resort.bean.VehicleAllotmentBean;
import com.svs.ensign.resort.bean.VehicleInsurenceBean;
import com.svs.ensign.resort.bean.VehicleMaintanenceBean;
import com.svs.ensign.resort.cms.bean.VehicleDetailsBean;
import net.sf.json.JSONObject;

public interface IN_VehicleService {
	
	public boolean saveVehicle(VehicleDetailsBean vehicledetails);
	public JSONObject viewVehicle();
	public boolean createVehicleAllotment(VehicleAllotmentBean vehicleallotment);
	public JSONObject viewVehicleAllotments();
	public JSONObject viewVehicleAlloted();
	public boolean saveVehicleInsurence(VehicleInsurenceBean insurencebean);
	public JSONObject viewVehileInsurence();
	public boolean saveVehicleMaintanence(VehicleMaintanenceBean vehiclemaintanence);
	public JSONObject viewVehicleMaintanence();
	public JSONObject viewVechicleByDriverId(String username);
	public JSONObject viewVehicleInsurenceByDriverId(String username);
	
}
