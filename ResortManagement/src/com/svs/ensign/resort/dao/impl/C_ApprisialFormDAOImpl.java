package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.ApprisialFormBean;
import com.svs.ensign.resort.dao.IN_ApprisialFormDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;

@Repository
public class C_ApprisialFormDAOImpl implements IN_ApprisialFormDAO {

    private HibernateTemplate ht;
    private List apprisiallist;
    private boolean insertorupdate = false;
    private Session session;
    JSONObject respObj = new JSONObject();

    @Autowired
    public void setSessionFactory(SessionFactory sessionfactory) {
        ht = new HibernateTemplate(sessionfactory);
        session = sessionfactory.openSession();
    }

    @Override
    public boolean createApprisialForm(ApprisialFormBean apprisialform) {
        // TODO Auto-generated method stub
        long id = (Long) ht.save(apprisialform);
        if (id != 0) {
            insertorupdate = true;
        } else {
            insertorupdate = false;
        }
        return insertorupdate;
    }

    @Transactional
    @Override
    public JSONObject viewApprisialFormByExecutive(String username) {
        // TODO Auto-generated method stub
        apprisiallist = ht.find("from ApprisialFormBean apfb where apfb.deltby=?", username);
        respObj = C_Util_Misleneous.convBeanToJSNArray(apprisiallist);
        //System.out.println("Apprisial List \t"+apprisiallist.size());
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewApprisialFormByManager(String username) {
        // TODO Auto-generated method stub
        apprisiallist = ht.find("from ApprisialFormBean afb where afb.manager=?", username);
        respObj = C_Util_Misleneous.convBeanToJSNArray(apprisiallist);
        //System.out.println("Apprisal by Manager\t"+apprisiallist.size());
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewApprisalFormByDirector() {
        // TODO Auto-generated method stub
        apprisiallist = ht.find("from ApprisialFormBean ");
        respObj = C_Util_Misleneous.convBeanToJSNArray(apprisiallist);
        //System.out.println("Apprisal form List By Direcor/Admin\t"+apprisiallist.size());
        return respObj;
    }

}
