package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.DesignationBean;
import com.svs.ensign.resort.dao.IN_DesignationDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;
@Repository
public class C_DesignationDAOImpl implements IN_DesignationDAO {

	private HibernateTemplate ht;
	private List designationlist;
	private boolean insertorupdate=false;
	JSONObject respObj=new JSONObject();
	@Autowired
	public void setSessionFactory(SessionFactory sessionfactory) {
		ht=new HibernateTemplate(sessionfactory);
	}
	
	@Override
	public boolean createDesignation(DesignationBean designationbean) {
		// TODO Auto-generated method stub
		long id=0;
		id=(Long)ht.save(designationbean);
		////System.out.println("Inserted Successfully"+id);
		if(id!=0){
			insertorupdate=true;
		}
		else{
			insertorupdate=false;
		}
		return insertorupdate;
	}
	@Transactional
	@Override
	public JSONObject displayDesignation() {
		// TODO Auto-generated method stub
		designationlist=ht.find("from DesignationBean");
                respObj=C_Util_Misleneous.convBeanToJSNArray(designationlist);
		return respObj;
	}

	@Override
	public boolean updateDesignation() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteDesignation() {
		// TODO Auto-generated method stub
		return false;
	}
	

}
