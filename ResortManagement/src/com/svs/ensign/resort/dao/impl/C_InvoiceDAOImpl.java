package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.InvoiceFormBean;
import com.svs.ensign.resort.dao.IN_InvoiceDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;

@Repository
public class C_InvoiceDAOImpl implements IN_InvoiceDAO {

    private HibernateTemplate ht;
    private boolean insertorupdate = false;
    private List invoicelist;
    JSONObject respObj = new JSONObject();

    @Autowired
    public void setSessionFactory(SessionFactory sessionfactory) {
        ht = new HibernateTemplate(sessionfactory);
    }

    @Override
    public boolean createInvoice(InvoiceFormBean invoice) {
        // TODO Auto-generated method stub
        long id = 0;
        id = (Long) ht.save(invoice);
        if (id != 0) {
            insertorupdate = true;
        } else {
            insertorupdate = false;
        }
        return insertorupdate;
    }

    @Transactional
    @Override
    public JSONObject viewInvoiceByExecutiveID(String username) {
        // TODO Auto-generated method stub
        invoicelist = ht.find("from InvoiceFormBean infb where deltby=?", username);
        //System.out.println("Invoice Details"+invoicelist.size());
        respObj = C_Util_Misleneous.convBeanToJSNArray(invoicelist);
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewInvoiceByManagerID(String username) {
        // TODO Auto-generated method stub
        invoicelist = ht.find("from InvoiceFormBean ifb where ifb.manager=?", username);
        //System.out.println("Invoice Details:"+invoicelist.size());
        respObj=C_Util_Misleneous.convBeanToJSNArray(invoicelist);
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewInvoiceByDirector(String username) {
        // TODO Auto-generated method stub
        invoicelist = ht.find("from InvoiceFormBean");
       respObj= C_Util_Misleneous.convBeanToJSNArray(invoicelist);
        return respObj;

    }

    @Transactional
    @Override
    public JSONObject viewInvoiceByAdmin() {
        // TODO Auto-generated method stub
        invoicelist = ht.find("from InvoiceFormBean");
        respObj=C_Util_Misleneous.convBeanToJSNArray(invoicelist);
        return respObj;
    }

}
