package com.erp.hr.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.hr.bean.LeaveApplicationBean;

public class LeaveApplicationDAO {
	
	HibernateTemplate ht;
	List leavedetails;
	@Autowired
	public void setSessionFactory(SessionFactory session){
		ht=new HibernateTemplate(session);
	}
	
	public void createLeaveApplication(LeaveApplicationBean leaveapplication){
		ht.save(leaveapplication);
	}
	
	public List viewLeaveApplication(){
		leavedetails=ht.find("from LeaveApplicationBean");
		return leavedetails;
	}
	public List viewLeavesByEmpno(String empno){
		
		int cls=0;
		List clslist;
		String result=null;
		clslist=ht.find("select SUM(lap.cl),SUM(lap.sl),SUM(lap.el) from LeaveApplicationBean lap where lap.employeecode =?",empno);
		return clslist;
	}
	
}
