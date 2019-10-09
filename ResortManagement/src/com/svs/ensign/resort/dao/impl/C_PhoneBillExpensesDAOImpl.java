package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.svs.ensign.resort.bean.PhoneBillExpencesesBean;
import com.svs.ensign.resort.controller.C_FinanceController;
import com.svs.ensign.resort.dao.IN_PhoneBillExpensesDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import com.svs.ensign.resort.util.ConvertStackTracetoString;
import net.sf.json.JSONObject;

@Repository
public class C_PhoneBillExpensesDAOImpl implements IN_PhoneBillExpensesDAO {

    private HibernateTemplate ht;
    private Session session;
    private List pcjlist;
    private boolean insertorupdate = false;
    private List<PhoneBillExpencesesBean> phonebilllist;
    JSONObject respObj = new JSONObject();
    @Autowired
    ConvertStackTracetoString util_stos;
    final static Logger logger = Logger.getLogger(C_PhoneBillExpensesDAOImpl.class.getName());

    @Autowired
    public void setSessionFactory(SessionFactory sessionfactory) {
        ht = new HibernateTemplate(sessionfactory);
        session = sessionfactory.openSession();
    }

    @Override
    public boolean generatePhoneBillExpenses(PhoneBillExpencesesBean phonebill) {
        // TODO Auto-generated method stub
        Long id = (Long) ht.save(phonebill);
        if (id != 0) {
            insertorupdate = true;
        } else {
            insertorupdate = false;
        }
        return insertorupdate;
    }

    @Override
    public JSONObject viewPhoneBillExpensesByExecutive(
            String username) {
        // TODO Auto-generated method stub
        try {
            phonebilllist = ht.find("from PhoneBillExpencesesBean pbe where pbe.deltby=?", username);
            respObj = C_Util_Misleneous.convBeanToJSNArray(phonebilllist);
            //System.out.println("Phone Bill List\t"+phonebilllist.size());
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        return respObj;
    }

}
