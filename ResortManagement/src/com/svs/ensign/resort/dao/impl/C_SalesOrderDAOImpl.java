package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.SalesOrderBean;
import com.svs.ensign.resort.dao.IN_SalesOrderDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;

@Repository
public class C_SalesOrderDAOImpl implements IN_SalesOrderDAO {

    private HibernateTemplate ht;
    private boolean insertorupdate = false;
    private List salesorderlist;
    private Session session;
    JSONObject respObj = new JSONObject();

    @Autowired
    public void setSessionFactory(SessionFactory sessionfactory) {
        try {
            ht = new HibernateTemplate(sessionfactory);
            session = sessionfactory.openSession();
        } catch (HibernateException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    @Override
    public boolean createSalesOrder(SalesOrderBean slorder) {
        // TODO Auto-generated method stub
        try {
            long id = (Long) ht.save(slorder);
            if (id != 0) {
                insertorupdate = true;
            } else {
                insertorupdate = false;
            }
        } catch (DataAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return insertorupdate;
    }

    @Transactional
    @Override
    public JSONObject viewSalesOrderByExecutive(String username) {
        // TODO Auto-generated method stub
        try {
            salesorderlist = ht.find("from SalesOrderBean sob where sob.deltby=?", username);

            respObj = C_Util_Misleneous.convBeanToJSNArray(salesorderlist);
            //System.out.println("Sales Order Size\t"+salesorderlist.size());
        } catch (DataAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewSalesOrderByManager(String username) {
        // TODO Auto-generated method stub
        salesorderlist = ht.find("from SalesOrderBean sob where sob.manager=?", username);
        respObj = C_Util_Misleneous.convBeanToJSNArray(salesorderlist);
        //System.out.println("Sales Order Size"+salesorderlist.size());
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewSalesOrderByDirector() {
        // TODO Auto-generated method stub
        salesorderlist = ht.find("from SalesOrderBean");
        respObj = C_Util_Misleneous.convBeanToJSNArray(salesorderlist);
        //System.out.println("Sales Order Size"+salesorderlist.size());
        return respObj;
    }

}
