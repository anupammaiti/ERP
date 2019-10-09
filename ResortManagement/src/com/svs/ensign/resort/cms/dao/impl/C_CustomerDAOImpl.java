package com.svs.ensign.resort.cms.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.cms.bean.CustomerBean;
import com.svs.ensign.resort.cms.dao.IN_CustomerDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;

public class C_CustomerDAOImpl implements IN_CustomerDAO {

    private HibernateTemplate ht;//instance variable for HibernateTemplate.
    private List customerlist;// object for customerlist.
    private boolean insertorupdate = false;
    private Session session;
    JSONObject respObj = new JSONObject();

    /**
     *
     * @param session Inject the session to HibernateTemplate Object.
     */
    @Autowired
    public void setSessionFactory(SessionFactory sessionfactory) {
        ht = new HibernateTemplate(sessionfactory);
        session = sessionfactory.openSession();
    }

    /**
     * @param customerbean getting data from service and send them to database
     * by using hibernatetemplate.
     */
    @Override
    public boolean generateCustomerDAO(CustomerBean customerbean) {
        // TODO Auto-generated method stub
        long id = 0;

        try {
            id = (Long) ht.save(customerbean);
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

    /**
     * @return Fetteching data from tl_customer table to the service class.
     */
    @Transactional
    @Override
    public JSONObject viewCustomers() {
        // TODO Auto-generated method stub
        try {
            customerlist = ht.find("from CustomerBean");
            respObj = C_Util_Misleneous.convBeanToJSNArray(customerlist);
        } catch (DataAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewCustomerByMangaerID(String username) {
        // TODO Auto-generated method stub
        try {
            customerlist = ht.find("from CustomerBean cb where cb.manager=?", username);
            respObj = C_Util_Misleneous.convBeanToJSNArray(customerlist);
            //System.out.println("Customer List"+customerlist.size());
        } catch (DataAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewCustomerById(long id) {
        // TODO Auto-generated method stub
        try {
            customerlist = ht.find("from CustomerBean custb where custb.sno=?", id);
            respObj = C_Util_Misleneous.convBeanToJSNArray(customerlist);
            //System.out.println("Customer List is"+customerlist.size());
        } catch (DataAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return respObj;
    }

    @Override
    public boolean updateCustomerAllotment(String custid, String manager,
            String department, String deltby, String status) {
        // TODO Auto-generated method stub
        try {
            Query updatequery = session.createQuery("update CustomerBean cub set cub.slm_id=:manager,cub.sle_id=:deltby,cub.sldept=:department,cub.status=:status where cub.username=:username");
            updatequery.setString("manager", manager);
            updatequery.setString("deltby", deltby);
            updatequery.setString("department", department);
            updatequery.setString("status", status);
            updatequery.setString("username", custid);

            int updated = updatequery.executeUpdate();
            if (updated != 0) {
                insertorupdate = true;
            } else {
                insertorupdate = false;
            }
        } catch (HibernateException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return insertorupdate;
    }

    @Transactional
    @Override
    public JSONObject viewCustByExcecutorID(String username) {
        // TODO Auto-generated method stub
        try {
            customerlist = ht.find("from CustomerBean where sle_id=?", username);
            respObj = C_Util_Misleneous.convBeanToJSNArray(customerlist);
        } catch (DataAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewCustomerByStatus(String status) {
        // TODO Auto-generated method stub
        try {
            customerlist = ht.find("from CustomerBean cb where cb.status=?", status);
            respObj = C_Util_Misleneous.convBeanToJSNArray(customerlist);
        } catch (DataAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return respObj;
    }

    @Override
    public boolean allotingManagerToCustomer(String customerid,
            String department, String managerid) {
        // TODO Auto-generated method stub
        try {
            Query updatequery = session.createQuery("update CustomerBean cub set cub.sldept=:department , cub.slm_id=:managerid where cub.username=:username");
            updatequery.setString("department", department);
            updatequery.setString("managerid", managerid);
            updatequery.setString("username", customerid);
            int id = updatequery.executeUpdate();
            if (id != 0) {
                insertorupdate = true;
            } else {
                insertorupdate = false;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return insertorupdate;
    }

    @Transactional
    @Override
    public JSONObject viewCustomerBySLManagerID(String username, String status) {
        // TODO Auto-generated method stub
        customerlist = ht.find("from CustomerBean cus where cus.slm_id=? and cus.status=?", username, status);
        respObj = C_Util_Misleneous.convBeanToJSNArray(customerlist);
        //System.out.println("List size is:\t"+customerlist.size());
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewAllottedCustomerBySLManager(String username, String status) {
        // TODO Auto-generated method stub
        customerlist = ht.find("from CustomerBean cus where cus.slm_id=? and cus.status=?", username, status);
        respObj = C_Util_Misleneous.convBeanToJSNArray(customerlist);
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewAllCustomerList() {
        // TODO Auto-generated method stub
        customerlist = ht.find("from CustomerBean");
        respObj = C_Util_Misleneous.convBeanToJSNArray(customerlist);
        //System.out.println("CustomerList"+customerlist.size()); 
        return respObj;
    }

}
