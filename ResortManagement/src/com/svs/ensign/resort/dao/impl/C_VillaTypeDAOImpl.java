package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.VillaTypeBean;
import com.svs.ensign.resort.dao.IN_VillaTypeDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;

@Repository
public class C_VillaTypeDAOImpl implements IN_VillaTypeDAO {

    private HibernateTemplate ht;
    private List villaTypelist;
    private boolean insertorupdate;
    JSONObject respObj = new JSONObject();

    /**
     *
     * @param sessionfactory Autowired the SessionFactory Class to
     * C_LoginDAOImpl.java class by using HibernateTemplate Class.
     */
    @Autowired
    public void setSessionFactory(SessionFactory sessionfactory) {
        ht = new HibernateTemplate(sessionfactory);
    }

    @Override
    public boolean generateVillaType(VillaTypeBean villatype) {
        // TODO Auto-generated method stub
        long id = 0;
        id = (Long) ht.save(villatype);
        if (id != 0) {
            insertorupdate = true;
        } else {
            insertorupdate = false;
        }
        return insertorupdate;
    }

    @Transactional
    @Override
    public JSONObject viewVilla() {
        // TODO Auto-generated method stub
        villaTypelist = ht.find("from VillaTypeBean");
        respObj = C_Util_Misleneous.convBeanToJSNArray(villaTypelist);
        return respObj;
    }

}
