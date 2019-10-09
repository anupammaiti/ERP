package com.svs.ensign.resort.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.svs.ensign.resort.bean.VehicleAllotmentBean;
import com.svs.ensign.resort.bean.VehicleInsurenceBean;
import com.svs.ensign.resort.bean.VehicleMaintanenceBean;
import com.svs.ensign.resort.cms.bean.VehicleDetailsBean;
import com.svs.ensign.resort.dao.IN_VehicleAllotmentDAO;
import com.svs.ensign.resort.dao.IN_VehicleDAO;
import com.svs.ensign.resort.dao.IN_VehicleInsurenceDAO;
import com.svs.ensign.resort.dao.IN_VehicleMaintenanceDAO;
import com.svs.ensign.resort.service.IN_VehicleService;
import com.svs.ensign.resort.util.C_Util_Date;
import net.sf.json.JSONObject;

@Service
public class C_VehicleServiceImpl implements IN_VehicleService {

	@Autowired
	IN_VehicleDAO in_vehicledao;
	@Autowired
	IN_VehicleAllotmentDAO in_vehicleallotmentdao;
	@Autowired
	C_Util_Date util_date;
	@Autowired
	IN_VehicleInsurenceDAO in_vehicleinsurencedao; 
	@Autowired
	IN_VehicleMaintenanceDAO in_vehiclemaintanencedao;
	
	private boolean insertorupdate;
	
	
	@Override
	public boolean saveVehicle(VehicleDetailsBean vehicledetails) {
		// TODO Auto-generated method stub
		vehicledetails.setGendate(C_Util_Date.generateDate());
		insertorupdate=in_vehicledao.createVehicle(vehicledetails);
		return insertorupdate;
	}

	@Override
	public JSONObject viewVehicle() {
		// TODO Auto-generated method stub
		
		return in_vehicledao.viewVehicle();
	}

	@Override
	public boolean createVehicleAllotment(VehicleAllotmentBean vehicleallotment) {
		// TODO Auto-generated method stub
		vehicleallotment.setStatus("Booked");
		vehicleallotment.setGendate(C_Util_Date.generateDate());
		insertorupdate=in_vehicleallotmentdao.createVehicleAllotment(vehicleallotment);
		return insertorupdate;
	}

	@Override
	public JSONObject viewVehicleAllotments() {
		// TODO Auto-generated method stub
		String status="Booked";
		return in_vehicleallotmentdao.viewVehicleAllotment(status);
	}

	@Override
	public JSONObject viewVehicleAlloted() {
		// TODO Auto-generated method stub
		String status="Alloted";
		String today=C_Util_Date.generateDate();
		//System.out.println("Vehicle Alloted"+status);
		return in_vehicleallotmentdao.checkVehicleAlloted(status, today);
	}

	@Override
	public boolean saveVehicleInsurence(VehicleInsurenceBean insurencebean) {
		// TODO Auto-generated method stub
		try{
			insurencebean.setGendate(C_Util_Date.generateDate());
			insertorupdate=in_vehicleinsurencedao.createVehicleInsurence(insurencebean);		
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public boolean saveVehicleMaintanence(
			VehicleMaintanenceBean vehiclemaintanence) {
		// TODO Auto-generated method stub
		try{
			insertorupdate=	in_vehiclemaintanencedao.createVehicleMaintanence(vehiclemaintanence);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return insertorupdate;
	}

	@Override
	public JSONObject viewVehileInsurence() {
		// TODO Auto-generated method stub
		
		return in_vehicleinsurencedao.viewVehicleInsurence();
	}

	@Override
	public JSONObject viewVehicleMaintanence() {
		// TODO Auto-generated method stub
		return in_vehiclemaintanencedao.viewVehicleMaintanence();
	}

	@Override
	public JSONObject viewVechicleByDriverId(String username) {
		// TODO Auto-generated method stub
		
		return in_vehicledao.viewVehicleByDriverId(username);
	}

	@Override
	public JSONObject viewVehicleInsurenceByDriverId(String username) {
		// TODO Auto-generated method stub
		
		return null;
	}

}
