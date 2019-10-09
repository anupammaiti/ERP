package com.svs.ensign.resort.service;

import com.svs.ensign.resort.bean.DesignationBean;
import com.svs.ensign.resort.bean.LeaveFormBean;
import net.sf.json.JSONObject;

public interface IN_HRService {

	
	public JSONObject generateEmployeeLeave(LeaveFormBean leaveform);
	public boolean createDesignation(DesignationBean designationbean);
	public JSONObject displayEmployeeData(String username);
        public JSONObject getEmployeeListByLeaves(String leaveStatus);
        public JSONObject leaveApprovalUpdate(LeaveFormBean leavebean);
        public JSONObject generatePaySlip(int empid);
}
