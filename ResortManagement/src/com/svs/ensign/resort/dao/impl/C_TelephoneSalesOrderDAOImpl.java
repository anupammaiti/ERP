package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.TelephoneSalesOderBean;
import com.svs.ensign.resort.dao.IN_TelephoneSalesDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;

@Repository
public class C_TelephoneSalesOrderDAOImpl implements IN_TelephoneSalesDAO {

    private HibernateTemplate ht;
    private boolean insertorupdate = false;
    private List telephonesalesorder;
    JSONObject respObj = new JSONObject();

    @Autowired
    public void setSessionFactory(SessionFactory sessionfactory) {
        ht = new HibernateTemplate(sessionfactory);
    }

    @Override
    public boolean createTelephoneSalesOrder(
            TelephoneSalesOderBean telephonesalesorder) {
        // TODO Auto-generated method stub
        long id = (Long) ht.save(telephonesalesorder);
        if (id != 0) {
            insertorupdate = true;
        } else {
            insertorupdate = false;
        }
        return insertorupdate;
    }

    @Transactional
    @Override
    public JSONObject viewTelephoneSalesOrderByExecutive(String username) {
        // TODO Auto-generated method stub
        telephonesalesorder = ht.find("from TelephoneSalesOderBean tsob where tsob.deltby=?", username);
        respObj = C_Util_Misleneous.convBeanToJSNArray(telephonesalesorder);
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewTelephoneSalesOrderByManager(String username) {
        // TODO Auto-generated method stub
        telephonesalesorder = ht.find("from TelephoneSalesOderBean tsob where tsob.manager=?", username);
        respObj = C_Util_Misleneous.convBeanToJSNArray(telephonesalesorder);
        //System.out.println("Sales Order By Manager Size\t"+telephonesalesorder.size());
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewTelephoneSalesOrderByDirector() {
        // TODO Auto-generated method stub
        telephonesalesorder = ht.find("from TelephoneSalesOderBean");
        respObj = C_Util_Misleneous.convBeanToJSNArray(telephonesalesorder);
        //System.out.println("TelePhone Sales Order Size\t"+telephonesalesorder.size());
        return respObj;
    }

}
