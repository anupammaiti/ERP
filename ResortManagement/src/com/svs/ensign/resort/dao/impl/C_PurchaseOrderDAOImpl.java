package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.PurchaseOrderBean;
import com.svs.ensign.resort.dao.IN_PurchaseOrderDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;

@Repository
public class C_PurchaseOrderDAOImpl implements IN_PurchaseOrderDAO {

    private HibernateTemplate ht;
    private boolean insertorupdate = false;
    private List purchaseorderlist;
    JSONObject respObj = new JSONObject();

    @Autowired
    public void setSessionFactory(SessionFactory sessionfactory) {
        ht = new HibernateTemplate(sessionfactory);
    }

    @Override
    public boolean createPurchaseOrder(PurchaseOrderBean purchaseorder) {
        // TODO Auto-generated method stub
        long id = 0;
        id = (Long) ht.save(purchaseorder);
        if (id != 0) {
            insertorupdate = true;
        } else {
            insertorupdate = false;
        }
        return insertorupdate;
    }

    @Transactional
    @Override
    public JSONObject viewPurchaseOrderByExecutive(String username) {
        // TODO Auto-generated method stub
        purchaseorderlist = ht.find("from PurchaseOrderBean pob where pob.deltby=?", username);
        respObj = C_Util_Misleneous.convBeanToJSNArray(purchaseorderlist);
        //System.out.println("Purchase OrderList\t"+purchaseorderlist.size());
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewPurchaseOrderByManager(String username) {
        // TODO Auto-generated method stub
        purchaseorderlist = ht.find("from PurchaseOrderBean pob where pob.manager=?", username);
       respObj= C_Util_Misleneous.convBeanToJSNArray(purchaseorderlist);
        //System.out.println("Purchase OrderList\t"+purchaseorderlist.size());
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewPurchaseOrderByDirector() {
        // TODO Auto-generated method stub
        purchaseorderlist = ht.find("from PurchaseOrderBean");
        respObj=C_Util_Misleneous.convBeanToJSNArray(purchaseorderlist);
        //System.out.println("Purchase Order List\t"+purchaseorderlist.size());
        return respObj;
    }

}
