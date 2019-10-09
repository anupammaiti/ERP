package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.bean.PettyCashBean;
import com.svs.ensign.resort.dao.IN_PettyCashJournalDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;

@Repository
public class C_PettyCashJournalDAOImpl implements IN_PettyCashJournalDAO {

    private HibernateTemplate ht;
    private Session session;
    private List pcjlist;
    private boolean insertorupdate = false;
    JSONObject respObj = new JSONObject();

    @Autowired
    public void setSessionFactory(SessionFactory sessionfactory) {
        ht = new HibernateTemplate(sessionfactory);
        session = sessionfactory.openSession();
    }

    @Override
    public boolean createPettyCashJournal(PettyCashBean pettycashjournal) {
        // TODO Auto-generated method stub
        long id = (Long) ht.save(pettycashjournal);
        if (id != 0) {
            insertorupdate = true;
        } else {
            insertorupdate = false;
        }
        return insertorupdate;
    }

    @Transactional
    @Override
    public JSONObject viewPettyCashJournalByExecutive(String username) {
        // TODO Auto-generated method stub
        pcjlist = ht.find("from PettyCashBean pcb where pcb.deltby=?", username);
        respObj = C_Util_Misleneous.convBeanToJSNArray(pcjlist);
        //System.out.println("Petty Cash Journal List Size"+pcjlist.size());
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewPettyCashJournalByManager(String username) {
        // TODO Auto-generated method stub
        pcjlist = ht.find("from PettyCashBean pcb where pcb.manager=?", username);
        respObj = C_Util_Misleneous.convBeanToJSNArray(pcjlist);
        //System.out.println("Petty Cash size"+pcjlist.size());
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewPettyCashJournalByDirector() {
        // TODO Auto-generated method stub
        pcjlist = ht.find("from PettyCashBean");
        respObj = C_Util_Misleneous.convBeanToJSNArray(pcjlist);
        //System.out.println("Petty Cash "+pcjlist.size());
        return respObj;
    }

}
