package com.svs.ensign.resort.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.svs.ensign.resort.bean.ImageCoordinatesBean;
import com.svs.ensign.resort.bean.VehicleAllotmentBean;
import com.svs.ensign.resort.bean.VehicleInsurenceBean;
import com.svs.ensign.resort.bean.VehicleMaintanenceBean;
import com.svs.ensign.resort.cms.bean.VehicleDetailsBean;
import com.svs.ensign.resort.service.IN_ImageService;
import com.svs.ensign.resort.service.IN_VehicleService;
import net.sf.json.JSONObject;

@Controller
public class C_VehicleManagementController {

	
	
	@Autowired
	IN_VehicleService in_vehicleservice;
	@Autowired
	IN_ImageService in_imgservice;
	
	
	private HttpSession httpsession;
	private boolean insertorupdate=false;
	@Value("${resort.success}")String successmsg;
	@Value("${resort.update}")String updatesuccess;	
        JSONObject respObj=new JSONObject();
	@RequestMapping(value="create_vehicle.res",method={RequestMethod.GET,RequestMethod.POST})
	public String createVehicle(ModelMap model) {
		model.addAttribute(new VehicleDetailsBean());
		return "vm_create_vehicle";
	}
	@RequestMapping(value="save_vehicle.res",method={RequestMethod.GET,RequestMethod.POST})
	public String saveVehicle(@ModelAttribute VehicleDetailsBean vehicledetails,HttpServletRequest request){
		httpsession=request.getSession();
		//System.out.println("Vehicle Management");
		insertorupdate=in_vehicleservice.saveVehicle(vehicledetails);
		if(insertorupdate){
			httpsession.setAttribute("successmsg", successmsg);
		}else{
			
		}
		return "redirect:create_vehicle.res";
	}
	@RequestMapping(value="vm_vehicle_display.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewVehicleDetails(HttpServletRequest request){
		String username=(String)request.getSession().getAttribute("username");
		request.setAttribute("VDByDriver", in_vehicleservice.viewVechicleByDriverId(username));
		
		return "vm_view_vehicle_by_driver";
	}
	@RequestMapping(value="vehicle_allotment.res",method={RequestMethod.GET,RequestMethod.POST})
	public String creatingVehicleAllotment(ModelMap model,HttpServletRequest request) {
		request.setAttribute("VehicleList",in_vehicleservice.viewVehicle());
		return "vm_vehicle_booking";
	}
	
	@RequestMapping(value="vehicle_booking.res",method={RequestMethod.GET,RequestMethod.POST})
	public String creatingVehicleBooking(ModelMap model,HttpServletRequest request,@RequestParam(value="vehno")String vehno) {
		//System.out.println("VehicleNo\t"+vehno);
		
		model.addAttribute(new VehicleAllotmentBean());
		return "vm_vh_booking";
	}
	
	
	@RequestMapping(value="save_vehicle_booking.res",method={RequestMethod.GET,RequestMethod.POST})
	public String saveVehicleAllotment(@ModelAttribute VehicleAllotmentBean vehicleallotment,HttpServletRequest request){
		
		insertorupdate=in_vehicleservice.createVehicleAllotment(vehicleallotment);
		if(insertorupdate){
			request.getSession().setAttribute("successmsg", successmsg);
		}
				return "redirect:vehicle_allotment.res";
	}
	@RequestMapping(value="view_vehicle_allotment.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewVehicleAllotment(HttpServletRequest request){
//		request.setAttribute("VehicleAllotmentList", in_vehicleservice.viewVehicleAllotments());
		return "view_vehicle_allotment";
	}
        @RequestMapping(value="view_vehicle_allotmentGrid.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewVehicleAllotmentGrid(HttpServletRequest request){
		respObj= in_vehicleservice.viewVehicleAllotments();
		return respObj.toString();
	}
	@RequestMapping(value="saveImageCoordinates.res",method={RequestMethod.GET,RequestMethod.POST})
	public String generateImageCoordinates(HttpServletRequest request,ModelMap model,@ModelAttribute ImageCoordinatesBean imgcor){
		////System.out.println(request.getParameter("xcordinate"));
		////System.out.println(request.getParameter("ycordinate"));
		imgcor.setXcord(request.getParameter("xcordinate"));
		imgcor.setYcord(request.getParameter("ycordinate"));
		
		in_imgservice.createCoordinates(imgcor);
		return "redirectadmin_main.res";
	}
	@RequestMapping(value="create_vehicle_Insurence.res",method={RequestMethod.GET,RequestMethod.POST})
	public String generateVehicleInsurence(ModelMap model,HttpServletRequest request){
		model.addAttribute(new VehicleInsurenceBean());
		return "vm_vh_insurence";
	}
	@RequestMapping(value="created_vehicle_insurence.res",method={RequestMethod.GET,RequestMethod.POST})
	public String generatedVehicleInsurence(@ModelAttribute VehicleInsurenceBean vehinsurence,ModelMap model,HttpServletRequest request){
		httpsession=request.getSession();
		insertorupdate=in_vehicleservice.saveVehicleInsurence(vehinsurence);
		if(insertorupdate){
			httpsession.setAttribute("successmsg",successmsg);
		}
		else{
			
		}
		return "redirect:create_vehicle_Insurence.res";
	}
	
	@RequestMapping(value="create_vehicle_maintanence.res",method={RequestMethod.GET,RequestMethod.POST})
	public String generateVehicleMaintanence(ModelMap model,HttpServletRequest request){
		model.addAttribute(new VehicleMaintanenceBean());
		return "vm_vh_maintanence";
	}
	
	@RequestMapping(value="created_vehicle_maintanence.res",method={RequestMethod.GET,RequestMethod.POST})
	public String generatedVehicleMaintenance(@ModelAttribute  VehicleMaintanenceBean vehiclemaintanence,ModelMap model,HttpServletRequest request){
		httpsession=request.getSession();
		insertorupdate=in_vehicleservice.saveVehicleMaintanence(vehiclemaintanence);
		if(insertorupdate){
			httpsession.setAttribute("successmsg", successmsg);
		}
		else{
			
		}
		return "redirect:create_vehicle_maintanence.res";
	}
	
	@RequestMapping(value="view_vehicle_Insurance.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewVehicleInsurance(HttpServletRequest request){
		
		request.setAttribute("VHInsurenceList", in_vehicleservice.viewVehileInsurence());
	return "vm_vh_view_insurance";
	}
	
	@RequestMapping(value="view_vehicle_maintanence.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewVehicleMaintanence(HttpServletRequest request){
	request.setAttribute("VHManList", in_vehicleservice.viewVehicleMaintanence());
	return "vm_vh_view_maintanence";
	}
	
	@RequestMapping(value="view_vehicle_Insurance_by_driver.res",method={RequestMethod.GET,RequestMethod.POST})
	public String viewVehicleInsuranceByDriver(HttpServletRequest request){
		
		request.setAttribute("VHInsurenceList", in_vehicleservice.viewVehileInsurence());
	return "vm_view_insurence_by_driver";
	}	
	
}
