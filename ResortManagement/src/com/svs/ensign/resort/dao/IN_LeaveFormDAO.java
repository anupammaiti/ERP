package com.svs.ensign.resort.dao;

import com.svs.ensign.resort.bean.LeaveFormBean;
import net.sf.json.JSONObject;

public interface IN_LeaveFormDAO {
	
	
	public JSONObject genereateLeaveForm(LeaveFormBean leaveform);
        public JSONObject fetchLeaveBasedOnStatus(String status);
        public JSONObject leaveApprovalUpdate(LeaveFormBean leaveform);
        

}
