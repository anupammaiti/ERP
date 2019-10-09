package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.ReportingToBean;
import com.svs.ensign.resort.dao.IN_ReportingToDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;

@Repository
public class C_ReportingToDAOImpl implements IN_ReportingToDAO {

    private HibernateTemplate ht;
    private boolean insertorupdate = false;
    private List reportingToList;
    JSONObject respObj = new JSONObject();

    @Autowired
    public void setSessionFactory(SessionFactory session) {
        ht = new HibernateTemplate(session);
    }

    @Override
    public boolean createReportingTo(ReportingToBean reportingto) {
        // TODO Auto-generated method stub
        long id = 0;
        id = (Long) ht.save(reportingto);
        if (id != 0) {
            insertorupdate = true;
        } else {
            insertorupdate = false;
        }
        return insertorupdate;
    }

    @Transactional
    @SuppressWarnings("rawtypes")
    @Override
    public JSONObject viewReportingTo() {
        // TODO Auto-generated method stub
        reportingToList = ht.find("from ReportingToBean");
        respObj = C_Util_Misleneous.convBeanToJSNArray(reportingToList);
        return respObj;
    }

}
