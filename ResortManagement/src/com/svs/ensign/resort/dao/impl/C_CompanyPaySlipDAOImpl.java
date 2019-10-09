/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.svs.ensign.resort.dao.impl;

import com.svs.ensign.resort.bean.CompanyPaySlip;
import com.svs.ensign.resort.dao.IN_CompanyPaySlipDAO;
import com.svs.ensign.resort.util.AppTrack;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import java.util.List;
import net.sf.json.JSONObject;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

/**
 *
 * @author RAVIKIRAN
 */
public class C_CompanyPaySlipDAOImpl implements IN_CompanyPaySlipDAO {

    private HibernateTemplate ht;
    private Session session;
    JSONObject respObj = new JSONObject();

    @Autowired
    public void setSessionFactory(SessionFactory sessionfactory) {
        ht = new HibernateTemplate(sessionfactory);
        session = sessionfactory.openSession();
    }

    @Override
    public JSONObject fetchCompanyPaySlip() {
        List<CompanyPaySlip> respList = null;
        try {
            String companyName = "svsinfomatics";
            respList = ht.find("from CompanyPaySlip");
            respObj = C_Util_Misleneous.convBeanToJSNArray(respList);
        } catch (Exception e) {
            AppTrack.error("Exception ::fetchCompanyPaySlip ::C_CompanyPaySlipDAOImpl", e);
        }
        return respObj;
    }

    @Override
    public JSONObject generateCompanyPaySlip(CompanyPaySlip comppaySlip) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
