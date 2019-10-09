package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.svs.ensign.resort.bean.AutoExpencesesTravelBean;
import com.svs.ensign.resort.dao.IN_DailyAutoExpensesTravelDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;

@Repository
public class C_DailyAutoExpensesTravelDAOImpl implements
        IN_DailyAutoExpensesTravelDAO {

    private HibernateTemplate ht;
    private Session session;
    private List dailyautoexpenseslist = null;
    private boolean insertorupdate = false;
    private List<AutoExpencesesTravelBean> autoexp;
    JSONObject respObj = new JSONObject();

    @Autowired
    public void setSessionFactory(SessionFactory sessionfactory) {
        ht = new HibernateTemplate(sessionfactory);
        session = sessionfactory.openSession();
    }

    @Override
    public boolean createDailyAutoExpenses(AutoExpencesesTravelBean autoexpenses) {
        // TODO Auto-generated method stub
        long id = (Long) ht.save(autoexpenses);
        if (id != 0) {
            insertorupdate = true;
        } else {
            insertorupdate = false;
        }

        return insertorupdate;
    }

    @Override
    public JSONObject viewAutoTravelExpByExecutive(
            String username) {
        // TODO Auto-generated method stub
        autoexp = ht.find("from AutoExpencesesTravelBean autoexp where autoexp.deltby=?", username);
        //System.out.println("Auto expenses Size:\t"+autoexp.size());
        respObj = C_Util_Misleneous.convBeanToJSNArray(autoexp);
        return respObj;
    }

}
