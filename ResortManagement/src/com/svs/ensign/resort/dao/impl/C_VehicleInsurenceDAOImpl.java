package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.VehicleInsurenceBean;
import com.svs.ensign.resort.dao.IN_VehicleInsurenceDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;
@Repository
public class C_VehicleInsurenceDAOImpl implements IN_VehicleInsurenceDAO {

	private HibernateTemplate ht;
	private boolean insertorupdate;
	private List insurancelist;
	JSONObject respObj = new JSONObject();
	
	@Autowired
	public void setSessionFactory (SessionFactory sessionfactory){
		ht=new HibernateTemplate(sessionfactory);
	}
	
	@Override
	public boolean createVehicleInsurence(
			VehicleInsurenceBean vehicleinsurencebean) {
		// TODO Auto-generated method stub
		long id=0;
		id=(Long)ht.save(vehicleinsurencebean);
		//System.out.println("Vehicle Inserted"+id);
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
	public JSONObject viewVehicleInsurence() {
		// TODO Auto-generated method stub
		insurancelist=ht.find("from VehicleInsurenceBean");
                respObj= C_Util_Misleneous.convBeanToJSNArray(insurancelist);
		return respObj;
	}
	@Transactional
	@Override
	public JSONObject viewVehicleInsurenceByDriverId(String username) {
		// TODO Auto-generated method stub
		
		return null;
	}

}
