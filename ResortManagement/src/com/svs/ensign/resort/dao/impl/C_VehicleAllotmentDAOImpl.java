package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.VehicleAllotmentBean;
import com.svs.ensign.resort.dao.IN_VehicleAllotmentDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;

@Repository
public class C_VehicleAllotmentDAOImpl implements IN_VehicleAllotmentDAO {

    private HibernateTemplate ht;
    private List vehicleallotmentlist;
    private boolean insertorupdate = false;
    JSONObject respObj = new JSONObject();

    @Autowired
    public void setSessionFactory(SessionFactory session) {
        ht = new HibernateTemplate(session);
    }

    @Override
    public boolean createVehicleAllotment(VehicleAllotmentBean vehicleallotment) {
        // TODO Auto-generated method stub
        long id = 0;
        id = (Long) ht.save(vehicleallotment);
        if (id != 0) {
            insertorupdate = true;
        } else {
            insertorupdate = false;
        }
        return insertorupdate;
    }

    @Transactional
    @Override
    public JSONObject viewVehicleAllotment(String status) {
        // TODO Auto-generated method stub
        vehicleallotmentlist = ht.find("from VehicleAllotmentBean");
        respObj = C_Util_Misleneous.convBeanToJSNArray(vehicleallotmentlist);
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject checkVehicleAlloted(String status, String today) {
        // TODO Auto-generated method stub
        vehicleallotmentlist = ht.find("from VehicleAllotmentBean vab where vab.status=? and gendate=?", status, today);
        respObj = C_Util_Misleneous.convBeanToJSNArray(vehicleallotmentlist);
        //System.out.println("Vehicle Allotment List \t");
        return respObj;
    }

}
