package com.erp.hr.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.erp.hr.bean.EmployeeBean;

public class EmployeeDAO {

	private HibernateTemplate ht;
	List employeelist;
	List headcount;
	
	@Autowired
	public void setSessionFactory(SessionFactory session) {
		ht = new HibernateTemplate(session);
	}

	public void createEmployee(EmployeeBean empbean) {
		ht.save(empbean);
	}

	public List viewEmployee() {
		employeelist = ht.find("from EmployeeBean");
		return employeelist;
	}

	public List employeeHeadCount(String month) {
		headcount = ht.find("COUNT(emp.sno) from EmployeeBean emp");
		return headcount;
	}
	
	@Transactional
	public List searchEmployeeList(String fromdate,String todate) {
		
		return ht.find("select e.name from EmployeeBean e where e.gendate between ? and ? ",fromdate,todate);
	}
}
