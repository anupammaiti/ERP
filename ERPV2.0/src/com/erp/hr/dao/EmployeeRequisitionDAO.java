package com.erp.hr.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.erp.hr.bean.EmployeeRequisitionBean;

public class EmployeeRequisitionDAO {

	List requisitionlist;
	HibernateTemplate ht;

	@Autowired
	public void setSessionFactory(SessionFactory session) {
		ht = new HibernateTemplate(session);
	}

	public void createRequisition(EmployeeRequisitionBean employeerequisition) {
		ht.save(employeerequisition);
	}

	public List viewRequisition() {
		requisitionlist = ht.find("from EmployeeRequisitionBean");
		return requisitionlist;
	}
}
