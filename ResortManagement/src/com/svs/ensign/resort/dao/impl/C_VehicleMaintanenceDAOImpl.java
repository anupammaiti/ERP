package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.VehicleMaintanenceBean;
import com.svs.ensign.resort.dao.IN_VehicleMaintenanceDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;

@Repository
public class C_VehicleMaintanenceDAOImpl implements IN_VehicleMaintenanceDAO {

    private HibernateTemplate ht;
    private boolean insertorupdate = false;
    private List vh_maintanencelist;
    JSONObject respObj = new JSONObject();

    @Autowired
    public void setSessionFactory(SessionFactory sessionfactory) {
        ht = new HibernateTemplate(sessionfactory);
    }

    @Override
    public boolean createVehicleMaintanence(
            VehicleMaintanenceBean vehiclemaintanence) {
        // TODO Auto-generated method stub
        long id = 0;
        id = (Long) ht.save(vehiclemaintanence);
        if (id != 0) {
            insertorupdate = true;
        } else {
            insertorupdate = false;
        }
        return insertorupdate;
    }

    @Transactional
    @Override
    public JSONObject viewVehicleMaintanence() {
        // TODO Auto-generated method stub
        vh_maintanencelist = ht.find("from VehicleMaintanenceBean");
        respObj = C_Util_Misleneous.convBeanToJSNArray(vh_maintanencelist);
        return respObj;
    }

}
