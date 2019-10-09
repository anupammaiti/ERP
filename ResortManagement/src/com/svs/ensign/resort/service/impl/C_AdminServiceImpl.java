package com.svs.ensign.resort.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.svs.ensign.resort.bean.AgentComissionBean;
import com.svs.ensign.resort.bean.DepartmentBean;
import com.svs.ensign.resort.bean.ReportingToBean;
import com.svs.ensign.resort.bean.VillaTypeBean;
import com.svs.ensign.resort.cms.bean.GuestUserBean;
import com.svs.ensign.resort.cms.dao.IN_GuestUserDAO;
import com.svs.ensign.resort.dao.IN_AgentComissionDAO;
import com.svs.ensign.resort.dao.IN_DepartmentDAO;
import com.svs.ensign.resort.dao.IN_DesignationDAO;
import com.svs.ensign.resort.dao.IN_EmployeeDAO;
import com.svs.ensign.resort.dao.IN_ReportingToDAO;
import com.svs.ensign.resort.dao.IN_SalesManagerTaskDAO;
import com.svs.ensign.resort.dao.IN_VillaTypeDAO;
import com.svs.ensign.resort.helper.C_ResortHelper;
import com.svs.ensign.resort.service.IN_AdminService;
import com.svs.ensign.resort.util.C_Util_Date;
import net.sf.json.JSONObject;

@Service
public class C_AdminServiceImpl implements IN_AdminService {

	@Autowired
	IN_GuestUserDAO in_guestuserdao;
	@Autowired
	IN_EmployeeDAO in_employeedao;
	@Autowired
	IN_DesignationDAO in_designationdao;
	@Autowired
	C_Util_Date date_util;
	@Autowired
	IN_VillaTypeDAO in_villatypedao;
	@Autowired
	C_ResortHelper resorthelper;
	@Autowired
	IN_DepartmentDAO in_departmentdao;
	@Autowired
	IN_ReportingToDAO in_reportingtodao;
	@Autowired
	IN_SalesManagerTaskDAO in_salesmanagertaskdao;
	@Autowired IN_AgentComissionDAO in_agentcomissiondao;
	private boolean insertorupdate;
	
	
	@Override
	public JSONObject getGuestUsers() {
		// TODO Auto-generated method stub
		String status="NEW";
		return in_guestuserdao.viewGuestUserDetails(status);
	}

	@Override
	public JSONObject getGuestUserById(long uid) {
		// TODO Auto-generated method stub
		in_guestuserdao.viewGuestUsers(uid);
		
		return in_guestuserdao.viewGuestUsers(uid);
	}

	

	@Override
	public JSONObject viewDesignation() {
		// TODO Auto-generated method stub
		
		return in_designationdao.displayDesignation();
	}

	@Override
	public boolean generateVillaType(VillaTypeBean villatype) {
		// TODO Auto-generated method stub
		int counter=resorthelper.generateVillaId();
		
		//System.out.println("Counter is"+counter);
		String villa_id=null;
		if(counter==0) {
			villa_id="vill_"+1;
		}
		else
		{
			counter=counter+1;
		villa_id="vill_"+counter;	
		}
		//System.out.println("villaid\t"+villa_id);
		villatype.setVilla_id(villa_id);
		villatype.setGendate(date_util.generateDate());
		insertorupdate=in_villatypedao.generateVillaType(villatype);
		return insertorupdate;
	}

	@Override
	public JSONObject viewVilla() {
		// TODO Auto-generated method stub
		
		return in_villatypedao.viewVilla();
	}

	@Override
	public boolean createDepartment(DepartmentBean departmentbean) {
		// TODO Auto-generated method stub
		insertorupdate=in_departmentdao.generateDepartment(departmentbean);
		return insertorupdate;
	}
	@Override
	public JSONObject viewDepartment() {
		// TODO Auto-generated method stub
		return in_departmentdao.viewDepartment();
	}

	@Override
	public boolean createReportingTo(ReportingToBean reportingto) {
		// TODO Auto-generated method stub
		insertorupdate=in_reportingtodao.createReportingTo(reportingto);
		return insertorupdate;
	}

	@Override
	public JSONObject viewReportingTo() {
		// TODO Auto-generated method stub
		return in_reportingtodao.viewReportingTo();
	}

	@Override
	public JSONObject viewAccessForManagerTask() {
		// TODO Auto-generated method stub
		
		return in_salesmanagertaskdao.viewSalesManagerTaskByAdmin();
	}

	@Override
	public int updateAccessController(String deltby, String accessby) {
		// TODO Auto-generated method stub
		
		return in_salesmanagertaskdao.updateAccessController(deltby, accessby);
	}

	@Override
	public boolean createAgentComission(AgentComissionBean agentcomission) {
		// TODO Auto-generated method stub
		agentcomission.setGendate(C_Util_Date.generateDate());
		return in_agentcomissiondao.createAgentComission(agentcomission);
	}
	

}
