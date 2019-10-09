package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.svs.ensign.resort.bean.MisleniousExpencesesBean;
import com.svs.ensign.resort.dao.IN_MisleneousExpDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import com.svs.ensign.resort.util.ConvertStackTracetoString;
import net.sf.json.JSONObject;

@Repository
public class C_MisleneousExpDAOImpl implements IN_MisleneousExpDAO {

    private HibernateTemplate ht;
    private Session session;
    private boolean insertorupdate = false;
    private List entertainmentexplist;
    private long id = 0;
    JSONObject respObj = new JSONObject();
    @Autowired
    ConvertStackTracetoString util_stos;
    final static Logger logger = Logger.getLogger(C_MisleneousExpDAOImpl.class.getName());
    private List<MisleniousExpencesesBean> mislist;

    @Autowired
    public void setSessionFactory(SessionFactory sessionfactory) {
        try {
            ht = new HibernateTemplate(sessionfactory);
            session = sessionfactory.openSession();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean generateMisleneousExp(MisleniousExpencesesBean misleniousexp) {
        // TODO Auto-generated method stub
        try {
            id = (Long) ht.save(misleniousexp);
            if (id != 0) {
                insertorupdate = true;

            } else {
                insertorupdate = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return insertorupdate;
    }

    @Override
    public JSONObject viewMisleneouseExpByExecutive(
            String username) {
        // TODO Auto-generated method stub
        try {
            mislist = ht.find("from MisleniousExpencesesBean misexp where misexp.deltby=?", username);
            respObj = C_Util_Misleneous.convBeanToJSNArray(mislist);
            //System.out.println("Misleneous List\t"+mislist.size());
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        return respObj;
    }

}
