package com.svs.ensign.resort.controller;

import com.svs.ensign.resort.bean.CompanyPaySlip;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.svs.ensign.resort.bean.DesignationBean;
import com.svs.ensign.resort.bean.LeaveFormBean;
import com.svs.ensign.resort.bean.PayrollBean;
import com.svs.ensign.resort.service.IN_HRService;
import com.svs.ensign.resort.util.AppTrack;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONObject;
import net.sf.json.JSONSerializer;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class HRController {

    private HttpSession httpsession;
    private boolean insertorupdate = false;

    @Autowired
    IN_HRService in_hrservice;

    @Value("${msg}")
    String msg;
    @Value("${resort.success}")
    String successmsg;
    @Value("${resort.update}")
    String updatesuccess;
    private JSONObject respObj = new JSONObject();

    @RequestMapping(value = "hr_ex_main.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String hrExecutiveMain(ModelMap model, HttpServletRequest request) {
        AppTrack.info(":::::::::hrExecutiveMain::::::::::::");
        return "hr_ex_main";
    }

    @RequestMapping(value = "hr_employeesGrid.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String fetchEmployeeList(ModelMap model, HttpServletRequest request) {

        return "hr_employeesGrid";
    }

    @RequestMapping(value = "hr_view_leave_employee_list.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String hrEmployeeLeaveApproveByHrExecutive(ModelMap model, HttpServletRequest request) {
        AppTrack.info("::::::::::::::hrEmployeeLeaveApproveByHrExecutive::::::::");

        return "hr_view_employee_on_leave";
    }

    @RequestMapping(value = "create_designation.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String creatingDesignation(ModelMap model) {
        AppTrack.info(this.getClass().getName() + "::::::::::::::creatingDesignation::::::::");
        //System.out.println("Message from message properties file is\t"+msg);
        model.addAttribute(new DesignationBean());

        return "create_designation";
    }

    @RequestMapping(value = "save_designation.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createdDesignation(@ModelAttribute DesignationBean designationbean, ModelMap model, HttpServletRequest request) {
        try {
            AppTrack.info(this.getClass().getName() + "::::::::::::::createdDesignation:::::::::::::::::::");

            httpsession = request.getSession();
            insertorupdate = in_hrservice.createDesignation(designationbean);
            if (insertorupdate) {
                httpsession.setAttribute("successmsg", successmsg);
            } else {
                httpsession.setAttribute("successmsg", "You record is not Inserted Properly");
            }
        } catch (Exception e) {
            AppTrack.error("Exception in :::createdDesignation:::", e);
        }
        return "redirect:create_designation.res";
    }

    @RequestMapping(value = "hr_exe_leave_form.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createLeaveForm(ModelMap model) {
        try {
            AppTrack.info(this.getClass().getName() + ":::::Enter into createLeaveForm::::::::::::::");
            model.addAttribute(new LeaveFormBean());
            System.out.println(":::::::::::::::Leave Form :::::::::::");
        } catch (Exception e) {
            AppTrack.error(this.getClass().getName() + "Exception in createLeaveForm", e);
        }

        return "hr_exe_leave_form";
    }

    @RequestMapping(value = "shr_exe_leaveform.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateLeaveForm(@ModelAttribute LeaveFormBean leavebean, ModelMap model, HttpServletRequest request) {
        try {
            AppTrack.info(this.getClass().getName() + "Input Request" + leavebean);
            leavebean.setNoofdays(request.getParameter("noofdays"));
            leavebean.setTotalcl(request.getParameter("clpro"));
            leavebean.setTotalsl(request.getParameter("slpro"));
            leavebean.setTotalpl(request.getParameter("plpro"));
            respObj = in_hrservice.generateEmployeeLeave(leavebean);
            if (!respObj.getString("Status").equalsIgnoreCase("0")) {
                request.getSession().setAttribute("successmsg", "Your leave not generated");
                AppTrack.debug(":::Leave Not Generated::::");
            } else {
                request.getSession().setAttribute("successmsg", successmsg);
                AppTrack.debug(":::Leave Generated::Successfully::");
            }
            AppTrack.debug(this.getClass().getName() + ":::response for generateLeaveForm methdo" + respObj);
        } catch (Exception e) {
            AppTrack.error("Exception in generateLeaveForm method::::", e);
        }
        return "redirect:hr_exe_leave_form.res";
    }

    @RequestMapping(value = "hr_ex_leave_approval.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String approvalForm(ModelMap model, HttpServletRequest req) {
        try {
            AppTrack.debug(this.getClass().getName() + "::::approvalForm::::::::::");
//            in_hrservice.getEmployeeListByLeaves(successmsg);

        } catch (Exception e) {
            AppTrack.error("Exception in ApprovalForm::::::", e);
        }
        return "hr_ex_leave_approval";
    }

    @RequestMapping(value = "util_hr_ex_leave_approval.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void leaveApprovalList(ModelMap model, HttpServletRequest req, HttpServletResponse res) {
        try {
            JSONObject respObj = new JSONObject();
            PrintWriter out = res.getWriter();

            AppTrack.debug(this.getClass().getName() + "::::leaveApprovalList::::::::::");
            String status = req.getParameter("Status");
            System.out.println("Approval Form::::::::::::::::::::::Status" + status);
//            AppLogger.debug(":::::::::::Approval Form::::::::::::::::Status"+status);
            respObj = in_hrservice.getEmployeeListByLeaves(status);
            System.out.println("resObj for leaveApprovalList" + respObj);
            out.println(respObj);
        } catch (Exception e) {
            AppTrack.error("Exception in ApprovalForm::::::", e);
        }

//        return "redirect:hr_ex_leave_approval.res";
//        return "redirect:hr_ex_leave_approval.res";
//        return "redirect:hr_ex_leave_approval.res";
//        return "redirect:hr_ex_leave_approval.res";
    }

    @RequestMapping(value = "hr_update_ex_leave_approval.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String leaveApprovalUpdate(ModelMap model, HttpServletRequest req, HttpServletResponse res) {
        try {
            AppTrack.debug(this.getClass().getName() + "::::leaveApprovalUpdate::::::::::");
            String reqData = req.getParameter("ReqData");
            JSONObject reqDat = (JSONObject) JSONSerializer.toJSON(reqData);

            req.setAttribute("empno", reqDat.getString("empno"));

            model.addAttribute(new LeaveFormBean());
        } catch (Exception e) {
            AppTrack.error(this.getClass().getName() + "Exception in leaveApprovalUpdate::::::", e);
        }

        return "hr_leave_approval_update";

    }

    @RequestMapping(value = "shr_update_ex_leave_approval.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updatedleaveApproval(@ModelAttribute LeaveFormBean leaveform, ModelMap model, HttpServletRequest req, HttpServletResponse res) {
        try {
            JSONObject respObj = new JSONObject();
            leaveform.setSno(Long.parseLong(req.getParameter("sno")));

            respObj = in_hrservice.leaveApprovalUpdate(leaveform);
            if (respObj.getString("type").equalsIgnoreCase("success")) {

                AppTrack.debug(this.getClass().getName() + "::::updatedleaveApproval::::::updated Successfully::::");
            } else {
                System.out.println("Not Updated");
                AppTrack.debug(this.getClass().getName() + "::::updatedleaveApproval::::::updated Failed::::");
            }
        } catch (Exception e) {
            AppTrack.error("Exception in updatedleaveApproval::::::", e);
        }

        return "redirect:hr_ex_leave_approval.res";

    }

    @RequestMapping(value = "hr_loan_form.res", method = {RequestMethod.GET, RequestMethod.POST})
    public @ResponseBody
    String createLoanForm(@RequestParam("file") MultipartFile file) {
//            model.addAttribute(new )
        if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();
                String path = "F://libraryBooks//";
                File dir = new File(path);
                if (!dir.exists()) {
                    dir.mkdirs();
                }
                File serverOutFile = new File(dir.getAbsolutePath() + "book1.pdf");
                BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverOutFile));
                stream.write(bytes);
                stream.close();
            } catch (Exception e) {
            }
        }

        return "hr_loan_application";
    }

    //HR Company PaySlip...
    @RequestMapping(value = "hr_dr_companyPaySlip.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateCompanyPaySlip(ModelMap model) {
        AppTrack.debug(this.getClass().getName() + "::::generateCompanyPaySlip::::::::::");
        model.addAttribute(new CompanyPaySlip());
        return "hr_dr_companylist";
    }

    @RequestMapping(value = "hr_exe_payrollGrid.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatePaySlip(ModelMap model, HttpServletRequest req) {
        AppTrack.debug(this.getClass().getName() + "::::generateCompanyPaySlip::::::::::");
//        model.addAttribute(new PayrollBean());
        int empid = 1;
        in_hrservice.generatePaySlip(empid);
        return "hr_exe_payrollGrid";
    }

    @RequestMapping(value = "hr_totalLeaveGrid.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String fetchingLeaveGrid(ModelMap model) {
        AppTrack.debug(this.getClass().getName() + "::::generateCompanyPaySlip::::::::::");

        return "hr_LeaveGrid";
    }
//    @RequestMapping(value = "hr_totalLeaveGrid.res", method = {RequestMethod.GET, RequestMethod.POST})
//    public String generateCompanyPaySlip(ModelMap modal){
//    return "";    
//    }

}
