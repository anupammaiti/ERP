package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.svs.ensign.resort.bean.HotelExpensesBean;
import com.svs.ensign.resort.dao.IN_HotelExpDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import com.svs.ensign.resort.util.ConvertStackTracetoString;
import net.sf.json.JSONObject;

@Repository
public class C_HotelExpDAOImpl implements IN_HotelExpDAO {

    private HibernateTemplate ht;
    private List apprisiallist;
    private boolean insertorupdate = false;
    private Session session;
    private List<HotelExpensesBean> hotelexplist;
    JSONObject respObj = new JSONObject();

    @Autowired
    ConvertStackTracetoString util_stos;
    final static Logger logger = Logger.getLogger(C_HotelExpDAOImpl.class.getName());

    @Autowired
    public void setSessionFactory(SessionFactory sessionfactory) {
        ht = new HibernateTemplate(sessionfactory);
        session = sessionfactory.openSession();
    }

    @Override
    public boolean generateHotelExp(HotelExpensesBean hotelexp) {
        // TODO Auto-generated method stub
        Long id = (Long) ht.save(hotelexp);
        if (id != 0) {
            insertorupdate = true;
        } else {
            insertorupdate = false;
        }
        return false;
    }

    @Override
    public JSONObject viewHotelExpByExecutive(String username) {
        // TODO Auto-generated method stub
        try {
            hotelexplist = ht.find("from HotelExpensesBean heb where heb.deltby=?", username);
            respObj = C_Util_Misleneous.convBeanToJSNArray(hotelexplist);
            //System.out.println("HotelExpenses\t"+hotelexplist.size());
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        return respObj;
    }

}
