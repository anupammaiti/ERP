package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.SalesCallLog;
import com.svs.ensign.resort.dao.IN_SalesCallLogDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;

@Repository
public class C_SalesCallLogDAOImpl implements IN_SalesCallLogDAO {

    private HibernateTemplate ht;
    private Session session;
    private List salescallloglist;
    private boolean insertorupdate = false;
    JSONObject respObj = new JSONObject();

    @Autowired
    public void setSessionFactory(SessionFactory sessionfactory) {
        ht = new HibernateTemplate(sessionfactory);

    }

    @Override
    public boolean createSalesCallLog(SalesCallLog salescalllog) {
        // TODO Auto-generated method stub
        long id = (Long) ht.save(salescalllog);
        if (id != 0) {
            insertorupdate = true;
        } else {
            insertorupdate = false;
        }
        return insertorupdate;
    }

    @Transactional
    @Override
    public JSONObject viewSalesCallLogByExecutive(String username) {
        // TODO Auto-generated method stub
        salescallloglist = ht.find("from SalesCallLog scl where scl.deltby=?", username);
        respObj = C_Util_Misleneous.convBeanToJSNArray(salescallloglist);
        //System.out.println("Sales Call Log List\t"+salescallloglist.size());
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewSalesCallLogByManager(String username) {
        // TODO Auto-generated method stub
        salescallloglist = ht.find("from SalesCallLog scl where scl.manager=?", username);
        respObj = C_Util_Misleneous.convBeanToJSNArray(salescallloglist);
        //System.out.println("Sales Call Log\t"+salescallloglist.size());
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewSalesCallLogByDirector() {
        // TODO Auto-generated method stub
        salescallloglist = ht.find("from SalesCallLog");
        respObj = C_Util_Misleneous.convBeanToJSNArray(salescallloglist);
        //System.out.println("Sales Call Log Size\t"+salescallloglist.size());
        return respObj;
    }

}
