package com.svs.finance.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.EmployeeBean;
import com.svs.finance.dao.IN_EmployeeDAO;

public class C_EmployeeDAOImpl implements IN_EmployeeDAO {

	private HibernateTemplate ht;
	private List employeelist=new ArrayList();
	private boolean insertorupdate=false;
	private Session session;
	private HashMap hmp=new HashMap();
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
		session=sessionfactory.openSession();
	}
	
	@Override
	public boolean generateEmployee(EmployeeBean employeebean) {
		// TODO Auto-generated method stub
		long id=(long)ht.save(employeebean);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

	@Override
	public boolean checkEmployee(String username, String companyname) {
		// TODO Auto-generated method stub
		employeelist=ht.find("from EmployeeBean empbean where empbean.username=? and empbean.companyname=?",username,companyname);
		if(employeelist.size()!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return false;
	}

	@Override
	public boolean isAvaliable(String username, String companyname) {
		// TODO Auto-generated method stub
		employeelist=ht.find("from EmployeeBean empbean where empbean.username=? and empbean.companyname=?",username,companyname);
		if(employeelist.size()!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

	@Override
	public List<EmployeeBean> viewEmployeeByComp(String comp) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<EmployeeBean> empList=ht.find("from EmployeeBean emp where emp.companyname=?",comp);
		System.out.println("Employee List Size\t"+empList.size());
		return empList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<EmployeeBean> viewEmployeeById(long id) {
		// TODO Auto-generated method stub
		List<EmployeeBean> lst_emp=ht.find("from EmployeeBean eb where eb.sno=?",id);
		System.out.println("Employee List\t"+lst_emp.size());
		
		return lst_emp;
	}

	@Override
	public long getEmployeeId() {
		// TODO Auto-generated method stub
		List lst=ht.find("select MAX(sno) from EmployeeBean eb");
		System.out.println("Employee SNO\t"+lst.get(0));
		long sno=(long)lst.get(0);
		return sno;
	}

	

}
