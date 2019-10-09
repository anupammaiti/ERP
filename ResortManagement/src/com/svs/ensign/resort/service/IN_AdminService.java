package com.svs.ensign.resort.service;


import com.svs.ensign.resort.bean.AgentComissionBean;
import com.svs.ensign.resort.bean.DepartmentBean;
import com.svs.ensign.resort.bean.ReportingToBean;
import com.svs.ensign.resort.bean.VillaTypeBean;
import net.sf.json.JSONObject;

public interface IN_AdminService {

	public JSONObject getGuestUsers();
	public JSONObject getGuestUserById(long uid);
	public boolean createDepartment(DepartmentBean departmentbean);
	public JSONObject viewDepartment();
	
	
	public JSONObject viewDesignation();
	public boolean generateVillaType(VillaTypeBean villatype);
	public JSONObject viewVilla();
	public boolean createReportingTo(ReportingToBean reportingto);
	public JSONObject viewReportingTo();
	
	public JSONObject viewAccessForManagerTask();
	public int updateAccessController(String deltby,String accessby);
	public boolean createAgentComission(AgentComissionBean agentcomission);
}
