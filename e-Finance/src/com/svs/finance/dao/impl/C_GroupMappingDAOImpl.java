package com.svs.finance.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.finance.bean.GroupMappingBean;
import com.svs.finance.dao.IN_GroupMappingDAO;

public class C_GroupMappingDAOImpl implements IN_GroupMappingDAO {

	private HibernateTemplate ht;
	private List designationlist;
	private boolean insertorupdate=false;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory) {
		ht=new HibernateTemplate(sessionfactory);
	}
	
	
	@Override
	public boolean createGroupMapping(GroupMappingBean groupmapping) {
		// TODO Auto-generated method stub
		long id=(Long)ht.save(groupmapping);
		if(id!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

	@Override
	public boolean isAvailable(String groupname) {
		// TODO Auto-generated method stub
		int isEmpty=0;
		List st=ht.find("select gmb.subgroup from GroupMappingBean gmb where gmb.subgroup=?",groupname);
		System.out.println("Group Existed"+st);
		if(st.size()!=0){
			insertorupdate=true;
		}else{
			insertorupdate=false;
		}
		return insertorupdate;
	}

}
