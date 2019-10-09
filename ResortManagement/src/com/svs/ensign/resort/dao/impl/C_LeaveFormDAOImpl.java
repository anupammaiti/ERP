package com.svs.ensign.resort.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.svs.ensign.resort.bean.LeaveFormBean;
import com.svs.ensign.resort.dao.IN_LeaveFormDAO;
import com.svs.ensign.resort.util.AppTrack;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import java.io.Serializable;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.hibernate.Query;

public class C_LeaveFormDAOImpl implements IN_LeaveFormDAO {

    private HibernateTemplate ht;
    private List apprisiallist;
    private boolean insertorupdate = false;
    private Session session;
    private Serializable ser;
    private JSONObject dataResp = new JSONObject();
    
    @Autowired
    public void setSessionFactory(SessionFactory sessionfactory) {
        ht = new HibernateTemplate(sessionfactory);
        session = sessionfactory.openSession();
    }

    @Override
    public JSONObject genereateLeaveForm(LeaveFormBean leaveform) {
        // TODO Auto-generated method stub
        try {
            AppTrack.info("::generateLeaveForm::::"+leaveform);
            ser = ht.save(leaveform);
            AppTrack.debug("Serializer ::::::" + ser);
            if(!ser.equals("0")){
                dataResp.put("Status","0");
            }else{
                dataResp.put("Status", "1");
            }
        } catch (Exception e) {
            dataResp.put("Status","1");
            AppTrack.error("Exception in generateLeaveForm:::::", e);
        }
        AppTrack.debug(this.getClass().getName()+"Response from genereateLeaveForm method"+dataResp);
        return dataResp;
    }

    @Override
    public JSONObject fetchLeaveBasedOnStatus(String status) {
        try {
            LeaveFormBean leaveform = new LeaveFormBean();
            AppTrack.debug("::::::::fetchLeaveBesedOnStatus::::::::::");
            JSONArray respArray = new JSONArray();
            System.out.println("Status is:::::::" + status);
            JSONObject dataListObj = new JSONObject();
            apprisiallist = ht.find("from LeaveFormBean lb where lb.status=?", status);
            C_Util_Misleneous.convBeanToJSNArray(apprisiallist);
            if (apprisiallist.size() > 0) {
                System.out.println(":::::Apprisiallist is not empty::::::" + apprisiallist.size());
                for (int i = 0; i < apprisiallist.size(); i++) {
                    leaveform = (LeaveFormBean) apprisiallist.get(i);
                    System.out.println("Data is" + leaveform.getEmpid());
                    dataListObj.put("sno", leaveform.getSno());
                    dataListObj.put("empid", leaveform.getEmpid());
                    dataListObj.put("name", leaveform.getEmpname());
                    dataListObj.put("companyName", leaveform.getCompanyname());
                    dataListObj.put("designation", leaveform.getDesignation());
                    respArray.add(dataListObj);
//                respArray.add(apprisiallist.get(i+1));
                }
                dataResp.put("type", "success");
                dataResp.put("data", respArray);
            } else {
                dataResp.put("type", "fail");
//                dataResp.put("data", "");
            }

        } catch (Exception e) {
            dataResp.put("type", "fail");
            AppTrack.error("Exception in fetchLeaveBasedOnStatus:::", e);
        }
        System.out.println("fetchLeaveBasedOnStatus" + dataResp);
        return dataResp;
    }

    @Override
    public JSONObject leaveApprovalUpdate(LeaveFormBean leaveform) {
        JSONObject leaveapprovalObj = new JSONObject();
        try {
            String leaveStatus = leaveform.getStatus();
            long leavesno = leaveform.getSno();
            Query updatequery = session.createQuery("update LeaveFormBean lfb set lfb.status=:status where lfb.sno=:sno");
            updatequery.setString("status", "1");
            updatequery.setLong("sno", leavesno);

            int id = updatequery.executeUpdate();
            if (id != 0) {
                System.out.println("Updated Successfully");
                leaveapprovalObj.put("type", "successs");
            } else {
                System.out.println("Not Updated :::::");
                leaveapprovalObj.put("type", "fails");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return leaveapprovalObj;
    }

}
