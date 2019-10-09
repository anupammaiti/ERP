package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.cms.bean.VehicleDetailsBean;
import com.svs.ensign.resort.dao.IN_VehicleDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;

@Repository
public class C_VehicleDAOImpl implements IN_VehicleDAO {

    private HibernateTemplate ht;
    private boolean insertorupdate = false;
    private List vehiclelist;
    JSONObject respObj = new JSONObject();

    @Autowired
    public void setSessionFactory(SessionFactory session) {
        ht = new HibernateTemplate(session);
    }

    @Override
    public boolean createVehicle(VehicleDetailsBean vehicledetailsbean) {
        // TODO Auto-generated method stub
        long id = 0;

        id = (Long) ht.save(vehicledetailsbean);
        if (id != 0) {
            insertorupdate = true;
        } else {
            insertorupdate = false;
        }
        return insertorupdate;
    }

    @Transactional
    @Override
    public JSONObject viewVehicle() {
        // TODO Auto-generated method stub
        vehiclelist = ht.find("from VehicleDetailsBean");
        respObj = C_Util_Misleneous.convBeanToJSNArray(vehiclelist);
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewVehicleByDriverId(String username) {
        // TODO Auto-generated method stub
        vehiclelist = ht.find("from VehicleDetailsBean vdb where vdb.driver_name=?", username);
        respObj = C_Util_Misleneous.convBeanToJSNArray(vehiclelist);
        return respObj;
    }

}
