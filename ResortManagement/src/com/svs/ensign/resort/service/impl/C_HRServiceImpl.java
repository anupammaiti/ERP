package com.svs.ensign.resort.service.impl;

import com.svs.ensign.resort.bean.CompanyPaySlip;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.svs.ensign.resort.bean.DesignationBean;
import com.svs.ensign.resort.bean.LeaveFormBean;
import com.svs.ensign.resort.dao.IN_CompanyPaySlipDAO;
import com.svs.ensign.resort.dao.IN_DesignationDAO;
import com.svs.ensign.resort.dao.IN_EmployeeDAO;
import com.svs.ensign.resort.dao.IN_LeaveFormDAO;
import com.svs.ensign.resort.service.IN_HRService;
import com.svs.ensign.resort.util.AppTrack;
import com.svs.ensign.resort.util.C_Util_Date;
import java.util.List;
import net.sf.json.JSONObject;

@Service("C_HRServiceImpl")
public class C_HRServiceImpl implements IN_HRService {

    private boolean insertorupdate = false;
//    final static Logger logger = Logger.getLogger(C_HRServiceImpl.class.getName());

    @Autowired
    IN_DesignationDAO in_designationdao;
    @Autowired
    IN_LeaveFormDAO in_leaveformdao;
    @Autowired
    C_Util_Date date_util;
    @Autowired
    IN_EmployeeDAO in_employeedao;

    @Override
    public JSONObject generateEmployeeLeave(LeaveFormBean leaveform) {
        // TODO Auto-generated method stub
        JSONObject daoResp = new JSONObject();
        try {
            AppTrack.debug("Data to generateEmployeeLeave::" + leaveform);
            leaveform.setStatus("1");
            if (leaveform.getLeavetype().equalsIgnoreCase("CL")) {
                if (leaveform.getCl() != "" || leaveform.getCl().isEmpty()) {
                    int remcls = Integer.parseInt(leaveform.getTotalcl()) - Integer.parseInt(leaveform.getNoofdays());
                    leaveform.setTcl(remcls + "");
                    AppTrack.debug("input for generateEmployeeLeave method:: " + leaveform);
                } else {
                    int remcls = Integer.parseInt(leaveform.getTotalcl()) - Integer.parseInt(leaveform.getCl());
                    leaveform.setTcl(remcls + "");
                    AppTrack.debug("input for generateEmployeeLeave method:: " + leaveform);
                }

                daoResp = in_leaveformdao.genereateLeaveForm(leaveform);
            } else if (leaveform.getLeavetype().equalsIgnoreCase("SL")) {
                int remsls = Integer.parseInt(leaveform.getSl()) - Integer.parseInt(leaveform.getTotalsl());
                leaveform.setTsl(remsls + "");
                AppTrack.debug("input for generateEmployeeLeave method:: " + leaveform);
                daoResp = in_leaveformdao.genereateLeaveForm(leaveform);
            } else if (leaveform.getLeavetype().equalsIgnoreCase("PL")) {
                int rempls = Integer.parseInt(leaveform.getPl()) - Integer.parseInt(leaveform.getTotalpl());
                leaveform.setTsl(rempls + "");
                AppTrack.debug("input for generateEmployeeLeave method:: " + leaveform);
                daoResp = in_leaveformdao.genereateLeaveForm(leaveform);
            }
        } catch (Exception e) {
            AppTrack.error("Exception in generateEmployeeLeave:: ", e);
        }

        AppTrack.info("::dao response for generateEmployeeLeave method::: " + daoResp);
        return daoResp;
    }

    @Override
    public boolean createDesignation(DesignationBean designationbean) {
        // TODO Auto-generated method stub
        designationbean.setGendate(date_util.generateDate());
        insertorupdate = in_designationdao.createDesignation(designationbean);
        return insertorupdate;

    }

    @Override
    public JSONObject displayEmployeeData(String username) {
        JSONObject jobj = new JSONObject();
        try {
            jobj = in_employeedao.viewEmployee(username);
        } catch (Exception e) {
            AppTrack.error("", e);
        }
        return jobj;
    }

    @Override
    public JSONObject getEmployeeListByLeaves(String leaveStatus) {
        JSONObject respObj = new JSONObject();
        try {
            AppTrack.debug(":::::getEmployeeListByLeaves:::::::::::");

            respObj = in_leaveformdao.fetchLeaveBasedOnStatus(leaveStatus);

        } catch (Exception e) {
            AppTrack.error("Exception in getEmployeeListByLeaves", e);
        }
        return respObj;
    }

    @Override
    public JSONObject leaveApprovalUpdate(LeaveFormBean leavebean) {
        JSONObject respObj = new JSONObject();
        try {
            leavebean.setStatus("2");
            respObj = in_leaveformdao.leaveApprovalUpdate(leavebean);
        } catch (Exception e) {
            e.printStackTrace();
            AppTrack.error("Exception in leaveApprovalUpdate", e);
        }
        return respObj;
    }

    @Autowired
    IN_CompanyPaySlipDAO in_comppaypayDAO;

    @Override
    public JSONObject generatePaySlip(int empid) {
        JSONObject respObj = new JSONObject();
        try {
         
            JSONObject comPaySlipObj = new JSONObject();
            
            
            respObj=in_comppaypayDAO.fetchCompanyPaySlip();
        } catch (Exception e) {
            AppTrack.error("Exception ::generatePaySlip ::Service", e);
        }
        return respObj;
    }

    public JSONObject generateMonthlyPaySlip(JSONObject companySlip, double ctc,int noofdays) {
        JSONObject respObj = new JSONObject();
        double sal2 = 0;
            double orsal = 0;
            
            double basic = 0;
            double hra = 0;
            double pf = 0;
            double LTA = 0;
            double conv = 0;
            double medical = 0;
            double bonus = 0;
            double sa = 0;
            double gratuty = 0;
            double montlyctc = 0;
            double yearly = 0;
            double salary = 0;

            String basic1;
            String conv1;
            String medical1;
            String pf1;
            String gratuty1;
            String bonus1;
            String sa1;
            String monthly;
            String yearly1;
        try {
            
            
            
            
            
            basic = ((ctc * basic) / 100) / 12;
            //	System.out.println("Basic"+basic);

            pf = (basic * pf) / 100;
            //	System.out.println("Provident Fund"+pf);

            gratuty = (basic * gratuty) / 100;
            //	System.out.println("gratuty"+gratuty);

            sa = (ctc / 12) - (basic + hra + pf + conv + medical + bonus + gratuty);
            sa = Math.round(sa);
            //	System.out.println("Special Aliance"+sa);

            montlyctc = basic + hra + pf + LTA + conv + medical + bonus + gratuty + sa;
            montlyctc = Math.round(montlyctc);
            //	System.out.println("Monthly CTC"+montlyctc);

            salary = montlyctc / 30;/*leave salries*/
            //	System.out.println("Salary is"+salary);

            orsal = noofdays * salary;
            //	System.out.println("Salary to be cut "+orsal);
            sal2 = montlyctc - orsal;

            //	System.out.println("Final Salary"+sal2);
            //	System.out.println("Salary To be cutted"+Math.round(orsal));
            yearly = montlyctc * 12;
            yearly = Math.round(yearly);
            System.out.println("Yearly Income" + yearly);

            basic1 = Double.toString(basic);
            conv1 = Double.toString(conv);
            medical1 = Double.toString(medical);
            pf1 = Double.toString(pf);
            gratuty1 = Double.toString(gratuty);
            bonus1 = Double.toString(bonus);
            sa1 = Double.toString(sa);
            monthly = Double.toString(montlyctc);
            yearly1 = Double.toString(yearly);
        } catch (Exception e) {
            AppTrack.error("Exception ::generateMonthlyPaySlip ::", e);
        }
        return respObj;
    }

}
