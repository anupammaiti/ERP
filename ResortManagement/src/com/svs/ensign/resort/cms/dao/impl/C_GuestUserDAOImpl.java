package com.svs.ensign.resort.cms.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.svs.ensign.resort.cms.bean.GuestUserBean;
import com.svs.ensign.resort.cms.dao.IN_GuestUserDAO;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import net.sf.json.JSONObject;

public class C_GuestUserDAOImpl implements IN_GuestUserDAO {

    private HibernateTemplate ht;
    private List<GuestUserBean> guestuser;
    private List guestuserlist;
    private Session session;
    private long id;
    private boolean insertorupdate = false;
    JSONObject respObj = new JSONObject();

    @Autowired
    public void setSessionFactory(SessionFactory sessionfactory) {
        ht = new HibernateTemplate(sessionfactory);
        session = sessionfactory.openSession();
    }

    @Override
    public boolean generatingGuestUser(GuestUserBean guestuser) {
        // TODO Auto-generated method stub
        id = (Long) ht.save(guestuser);
        //System.out.println("Inserted value"+id);
        if (id != 0) {
            insertorupdate = true;
        }
        return insertorupdate;
    }

    @SuppressWarnings("unchecked")
    @Transactional
    @Override
    public JSONObject viewGuestUsers(long guid) {
        // TODO Auto-generated method stub
        guestuser = ht.find("from GuestUserBean gu where gu.guestid=?", guid);
        respObj = C_Util_Misleneous.convBeanToJSNArray(guestuser);
        //System.out.println("Status is"+guestuser.size());
        return respObj;
    }

    @SuppressWarnings("unchecked")
    @Transactional
    public JSONObject viewGuestUserDetails(String status) {
        guestuser = (List<GuestUserBean>) ht.find("from GuestUserBean gu where gu.status=?", status);
        respObj = C_Util_Misleneous.convBeanToJSNArray(guestuser);
        return respObj;
    }

    @Override
    public boolean updateGuestUser(GuestUserBean guestuser) {
        // TODO Auto-generated method stub
        int update = 0;
        ht.update("update GuestUserBean  gu gu.status=? and gu.telecaler=? where gu.guestid=?", guestuser);
        return insertorupdate;
    }

    @SuppressWarnings("unchecked")
    @Transactional
    @Override
    public JSONObject viewGuestUsersForTeleCaller(String status) {
        // TODO Auto-generated method stub
        guestuser = ht.find("from GuestUserBean gu where gu.status=?", status);
        respObj = C_Util_Misleneous.convBeanToJSNArray(guestuser);
        return respObj;
    }

    @SuppressWarnings("unchecked")
    @Transactional
    public String getGuestUserId() {
        String userid = null;
        guestuserlist = ht.find("select MAX(gub.guest_id) from GuestUserBean gub");
        //System.out.println("GuestUser Size:\t"+guestuserlist.size());
        if (guestuserlist.size() == 0) {
            userid = null;
        } else {
            //userid=guestuserlist.get(0).toString();
            ////System.out.println("User Id:\t"+userid);
        }
        return userid;
    }

    @Transactional
    @Override
    public JSONObject viewGuestByDirector(String status) {
        // TODO Auto-generated method stub
        guestuserlist = ht.find("from GuestUserBean gb where gb.status=?", status);
        respObj = C_Util_Misleneous.convBeanToJSNArray(guestuserlist);
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewGuestById(long id) {
        // TODO Auto-generated method stub
        guestuserlist = ht.find("from GuestUserBean gb where gb.guestid=?", id);

        respObj = C_Util_Misleneous.convBeanToJSNArray(guestuserlist);
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewGuestByTeleManager(String status, String refered1) {
        // TODO Auto-generated method stub
        guestuserlist = ht.find("from GuestUserBean gb where gb.status=? and gb.designation=?", status, refered1);

        //System.out.println("Guest User:\t"+guestuserlist.size());
        respObj = C_Util_Misleneous.convBeanToJSNArray(guestuserlist);
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewGuestByTeleCaller(String username, String status) {
        // TODO Auto-generated method stub
        //System.out.println("Username\t"+username);
        //System.out.println("Request for Call"+status);
        guestuserlist = ht.find("from GuestUserBean gb where gb.status=? and gb.refered1=?", status, username);
        respObj = C_Util_Misleneous.convBeanToJSNArray(guestuserlist);
        return respObj;
        //System.out.println(guestuserlist.size());

    }

    @Transactional
    @Override
    public JSONObject viewGuestRequestCalls(String username, String reqforcall) {
        // TODO Auto-generated method stub

        guestuserlist = ht.find("from GuestUserBean gu where gu.reqforcall=? and gu.refered1=?", reqforcall, username);
        //System.out.println("Guest User List is"+guestuserlist.size());
        /*	Query selecquery=session.createQuery("from GuestUserBean gu where gu.refered1=:username and gu.reqforcall=:today");
		selecquery.setString("username", username);
		selecquery.setString("today", today);
		selecquery.executeUpdate();
		guestuserlist=selecquery.list();*/
        respObj = C_Util_Misleneous.convBeanToJSNArray(guestuserlist);
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewGuestRequestCallsById(String id) {
        // TODO Auto-generated method stub
        guestuserlist = ht.find("from GuestUserBean gub where gub.guestid=?", id);
        respObj = C_Util_Misleneous.convBeanToJSNArray(guestuserlist);
        return respObj;
    }

    @Override
    public void updateGuestRequestCall(long guestid, String requestforcall2,
            String requestforcall3) {
        // TODO Auto-generated method stub
        Query query = session.createQuery("update GuestUserBean gub set gub.requestforcall2=:requestforcall2 , gub.requestforcall3=:requestforcall3 where gub.guestid=:guestid");
        query.setString("requestforcall2", requestforcall2);
        query.setString("requestforcall3", requestforcall3);
        query.setLong("guestid", guestid);
        int update = query.executeUpdate();
        //System.out.println("updated Value"+update);

    }

    @Transactional
    @Override
    public JSONObject viewGuestByAgent(String username) {
        // TODO Auto-generated method stub
        guestuserlist = ht.find("from GuestUserBean gub where gub.agent_name=?", username);

        respObj = C_Util_Misleneous.convBeanToJSNArray(guestuserlist);
        return respObj;
    }

    @Override
    public void deleteGuestById(long guest_id) {
        // TODO Auto-generated method stub
        Query query = session.createQuery("delete from GuestUserBean gub where gub.guestid=:guestid");
        query.setLong("guestid", guest_id);
        query.executeUpdate();
        //System.out.println("Guest User Deleted");
    }

    @Transactional
    @Override
    public JSONObject viewAllotedGuestList(String status) {
        // TODO Auto-generated method stub
        guestuserlist = ht.find("from GuestUserBean gub where gub.status=?", status);

        respObj = C_Util_Misleneous.convBeanToJSNArray(guestuserlist);
        return respObj;
    }

    @Override
    public boolean updateGuestToCustomer(long id, String status) {
        // TODO Auto-generated method stub
        Query updatequery = session.createQuery("update GuestUserBean gb set gb.status=:status1 where gb.guestid=:guestid");
        updatequery.setString("status1", status);
        updatequery.setLong("guestid", id);
        int updated = updatequery.executeUpdate();
        if (updated != 0) {
            insertorupdate = true;
        } else {

        }
        return insertorupdate;
    }

    @Transactional
    @Override
    public JSONObject viewConvertedGuestList(String status) {
        // TODO Auto-generated method stub
        guestuserlist = ht.find("from GuestUserBean gu where gu.status=?", status);
        //System.out.println("Guest user list"+guestuserlist.size());
        respObj = C_Util_Misleneous.convBeanToJSNArray(guestuserlist);
        return respObj;
    }

    @Transactional
    @Override
    public JSONObject viewGuestUsers() {
        // TODO Auto-generated method stub
        guestuserlist = ht.find("from GuestUserBean");
        respObj = C_Util_Misleneous.convBeanToJSNArray(guestuserlist);
        return respObj;
    }

}
