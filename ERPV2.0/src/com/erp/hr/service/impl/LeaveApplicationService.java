package com.erp.hr.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.erp.hr.bean.LeaveApplicationBean;
import com.erp.hr.dao.LeaveApplicationDAO;
import com.erp.util.DateUtil;

public class LeaveApplicationService {

	@Autowired
	LeaveApplicationDAO leaveapplicationdao;
	@Autowired
	DateUtil util;
	List leavedeatils;

	public void createLeaveApplication(LeaveApplicationBean leaveapplication) {
		String noofleaves = null;
		String fromdate = null;
		String todate = null;
		int cl=0;
		int sl=0;
		int el=0;
		int total=0;
		String cls=null;
		String sls=null;
		String els=null;
		fromdate = leaveapplication.getFromdate();
		todate = leaveapplication.getTodate();
		noofleaves = Integer.toString(util.daysBetween(fromdate, todate));
												
		leaveapplication.setNoofleaves(noofleaves);
		leaveapplication.setGendate(util.generateDate());
		
		leavedeatils=leaveapplicationdao.viewLeavesByEmpno(leaveapplication.getEmployeecode());
		for(int i=0;i<leavedeatils.size();i++){
			cls=leavedeatils.get(0).toString();
			
		}
			
			
			
		System.out.println("cl\t"+cls);
		
		
		//leaveapplicationdao.createLeaveApplication(leaveapplication);
		
	}

	public List viewLeaveDetails() {
		leavedeatils = leaveapplicationdao.viewLeaveApplication();
		System.out.println("Service layer");

		return leavedeatils;
	}

}
