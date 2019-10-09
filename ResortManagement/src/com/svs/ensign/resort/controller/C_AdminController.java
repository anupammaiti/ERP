package com.svs.ensign.resort.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.svs.ensign.resort.bean.AgentComissionBean;
import com.svs.ensign.resort.bean.DepartmentBean;
import com.svs.ensign.resort.bean.ReportingToBean;
import com.svs.ensign.resort.bean.SalesManagerTastBean;
import com.svs.ensign.resort.bean.VillaTypeBean;
import com.svs.ensign.resort.cms.bean.GuestUserBean;
import com.svs.ensign.resort.cms.service.IN_CustormerService;
import com.svs.ensign.resort.helper.C_MislaniousHelperController;
import com.svs.ensign.resort.helper.C_ResortHelper;
import com.svs.ensign.resort.service.IN_AdminService;
import com.svs.ensign.resort.service.IN_VehicleService;
import com.svs.ensign.resort.util.AppTrack;
import com.svs.ensign.resort.util.Response;
import net.sf.json.JSONObject;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class C_AdminController {

    List<GuestUserBean> guestuser;

    private boolean insertorupdate;

    private HttpSession httpsession;

    @Autowired
    IN_AdminService in_adminservice;

    @Autowired
    IN_CustormerService in_customerservice;

    @Autowired
    C_ResortHelper resorthelper;

    @Autowired
    C_MislaniousHelperController hlp_mis;

    @Autowired
    IN_VehicleService in_vehicleservice;
    JSONObject respObj = new JSONObject();
    @Value("${msg}")
    String msg;
    @Value("${resort.success}")
    String successmsg;
    @Value("${resort.update}")
    String updatesuccess;

    /**
     *
     * @param request Set the List values from service to guestUserList.
     * @return Send guestUsersList to the admin_guest_authentication.jsp file.
     */
    @RequestMapping(value = "admin_guest_authentication.res", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView getGuestUserDetails(HttpServletRequest request) {
        //request.setAttribute("guestUsersList", in_adminservice.getGuestUsers());
        AppTrack.info(":::::::::Guest Authentication:::::::::::::::::::::");
        try {

            int page = 1;
            int recordsPerPage = 5;
            if (request.getParameter("page") != null) {
                page = Integer.parseInt(request.getParameter("page"));
            }

            List<GuestUserBean> list = hlp_mis.viewGuestAuthenticationByAdmin((page - 1) * recordsPerPage,
                    recordsPerPage);
            int noOfRecords = hlp_mis.getNoOfRecords();
            int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
            request.setAttribute("groupslist", list);
            request.setAttribute("noOfPages", noOfPages);
            request.setAttribute("currentPage", page);
        } catch (Exception e) {
            AppTrack.error("Exception in Guest Authentication", e);
        }

        return new ModelAndView("admin_guest_authentication");
    }

    @RequestMapping(value = "customer_conformation.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String getGuestUserUpdate(HttpServletRequest request, ModelMap model) {
        try {
            AppTrack.info("::::::::::::getGuestUserUpdate:::::::::::::::::::::");
            long uid = Long.parseLong(request.getParameter("id"));
            model.addAttribute(new GuestUserBean());
            request.setAttribute("guestUserUpdatList", in_adminservice.getGuestUserById(uid));
        } catch (Exception e) {
            AppTrack.error("Exception in getGuestUserUpdate", e);

        }
        return "customer_conformation";
    }

    @RequestMapping(value = "updateGuestUser.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateGuestUser(@RequestParam(value = "guestid") String guestid, @ModelAttribute GuestUserBean guestuser, HttpServletRequest request) {
        try {

            AppTrack.info("::::::::::::::updateGuestUser:::::::::::::::::");
            httpsession = request.getSession();
            //System.out.println("Hello\t####\t"+guestid);
            //String guestid=request.getParameter("guestid");
            //System.out.println("Hello"+guestid);
            guestuser.setGuestid(Long.parseLong(guestid));
            insertorupdate = in_customerservice.updateGuestUser(guestuser);
            if (insertorupdate) {

            }
        } catch (Exception e) {
            AppTrack.error("Exception in updateGuestUser", e);
        }
        return "redirect:admin_guest_authentication.res";
    }

    @RequestMapping(value = "viewdesignation.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewDesignation(HttpServletRequest request, HttpServletResponse resp) {
        return "view_designation";
    }

    @RequestMapping(value = "viewdesignationList.res", method = {RequestMethod.GET, RequestMethod.POST})
    public @ResponseBody
    String viewDesignationList(HttpServletRequest request, HttpServletResponse response) {
        Response resp = null;
        try {
            AppTrack.info(":::::::::::::Enter into viewdesgination::::::::::::::");
            respObj = in_adminservice.viewDesignation();
//            PrintWriter out = response.getWriter();
            resp = new Response("RespObj", respObj);
//            out.print(respObj.toString());
//            response.setContentType("plain/text");
        } catch (Exception e) {

            AppTrack.error("Exception in viewDesignation", e);
        }

        return respObj.toString();
    }

    @RequestMapping(value = "create_villa_type.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String genVillaType(ModelMap model) {
        AppTrack.info(":::::::::::::::::::Villa Type::::::::::::::::::::");
        model.addAttribute(new VillaTypeBean());

        return "create_villa_type";
    }

    @RequestMapping(value = "save_villa_type.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatedVillaType(@ModelAttribute VillaTypeBean villatype, HttpServletRequest request) {
        try {
            AppTrack.info("::::::::::generatedVillaType:::::::::::");
            httpsession = request.getSession();
            AppTrack.info("::::::::::Villa Type:::::::::" + villatype);
            insertorupdate = in_adminservice.generateVillaType(villatype);
            AppTrack.info("::::::::::::::Villa Type status:::::::::::" + insertorupdate);
            if (insertorupdate) {
                httpsession.setAttribute("successmsg", successmsg);
            }
        } catch (Exception e) {
            AppTrack.error("Exception in generatedVillaType", e);
        }
        return "redirect:create_villa_type.res";
    }

    @RequestMapping(value = "view_vill_details.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewVillas(HttpServletRequest request) {
        try {

//            AppTrack.info(":::::::ViewVilla Details::::::::::" + in_adminservice.viewVilla());
//            request.setAttribute("viewVillList", in_adminservice.viewVilla());
        } catch (Exception e) {
            AppTrack.error("Exception in viewVillas", e);
        }

        return "view_villas";
    }

    @RequestMapping(value = "view_vill_list.res", method = {RequestMethod.GET, RequestMethod.POST})
    public @ResponseBody
    String viewVillasList(HttpServletRequest request) {
        try {

//            AppTrack.info(":::::::ViewVilla List Details::::::::::" + in_adminservice.viewVilla());
            respObj = in_adminservice.viewVilla();
        } catch (Exception e) {
            AppTrack.error("Exception in viewVillas", e);
        }
        return respObj.toString();
    }

    @RequestMapping(value = "create_department.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatingDepartment(ModelMap model) {
        AppTrack.info("::::::::::::::::::Department:::::::::::::");
        model.addAttribute(new DepartmentBean());
        return "create_department";
    }

    @RequestMapping(value = "save_department.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatedDepartment(@ModelAttribute DepartmentBean department, HttpServletRequest request) {

        try {
            AppTrack.info(":::::::::::generatedDepartment:::::::::::::::::");
            httpsession = request.getSession();
            AppTrack.info("Department Bean is" + department);
            insertorupdate = in_adminservice.createDepartment(department);
            AppTrack.info("Department Status" + insertorupdate);
            if (insertorupdate) {
                httpsession.setAttribute("successmsg", successmsg);
            } else {
                httpsession.setAttribute("successmsg", successmsg);
            }
        } catch (Exception e) {
            AppTrack.error("Exception in generatedDepartment", e);
        }

        return "redirect:create_department.res";
    }

    @RequestMapping(value = "departmentid.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateGuestUserId(HttpServletRequest request, HttpServletResponse response) {

        try {

            PrintWriter out = response.getWriter();

//            resorthelper.generateGuestId();
            AppTrack.info("Department Id is" + resorthelper.generateDepartmentId());
            out.print(resorthelper.generateDepartmentId());

            response.setContentType("plian/text");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "view_departmentlist.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewDepartment(HttpServletRequest request) {
        AppTrack.info("Department List" + in_adminservice.viewDepartment());
        request.setAttribute("departmentList", in_adminservice.viewDepartment());

        return "view_department";
    }

    @RequestMapping(value = "view_departmentGridList.res", method = {RequestMethod.GET, RequestMethod.POST})
    public @ResponseBody
    String viewDepartmentList(HttpServletRequest request) {
        try {
            respObj = in_adminservice.viewDepartment();
//            request.setAttribute("departmentList", in_adminservice.viewDepartment());
        } catch (Exception e) {
            AppTrack.error("Exception in viewDepartmentList", e);
        }

        return respObj.toString();
    }

    @RequestMapping(value = "view_guest_user_villas.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewVillasForGuest(HttpServletRequest request) {
        //request.setAttribute("viewVillGuestList", in_adminservice.viewVilla());
        return "guest_user_villa_details";
    }

    @RequestMapping(value = "delete_designation.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String deleteDesignation(@RequestParam(value = "id") String desginid, HttpServletRequest request) {
        //String desginid=request.getParameter("id");
        //System.out.println("Delete Designation"+desginid);
        return "redirect:viewdesignation.res";
    }

    @RequestMapping(value = "create_reportingto.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createReportingTo(ModelMap model) {
        AppTrack.info(":::::::::::::Reporting to :::::::::::");
        model.addAttribute(new ReportingToBean());

        return "create_reportingto";
    }

    @RequestMapping(value = "save_reportingto.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String saveReportingTo(@ModelAttribute ReportingToBean reportingto, HttpServletRequest request) {
        AppTrack.info("::::::::::::Reporting To::::::::::");
        insertorupdate = in_adminservice.createReportingTo(reportingto);
        AppTrack.info("::::::Reporting To:::::::::::::::::");
        httpsession = request.getSession();
        if (insertorupdate) {
            httpsession.setAttribute("succesmsg", successmsg);
        } else {

        }

        return "redirect:create_reportingto.res";
    }

    @RequestMapping(value = "view_reportingto.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewReportingTo(HttpServletRequest request) {
        AppTrack.info("::::::::::::view Reporting To::::::::::::::");
//        request.setAttribute("ReportingToList", in_adminservice.viewReportingTo());

        return "view_reportingto";
    }

    @RequestMapping(value = "view_reportingtoGrid.res", method = {RequestMethod.GET, RequestMethod.POST})
    public @ResponseBody String viewReportingToGrid(HttpServletRequest request) {
        AppTrack.info("::::::::::::view Reporting To::::::::::::::");
        request.setAttribute("ReportingToList", in_adminservice.viewReportingTo());
        respObj=in_adminservice.viewReportingTo();
        return respObj.toString();
    }

    @RequestMapping(value = "view_vill_details_by_agent.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewVillasByAgent(HttpServletRequest request) {
        AppTrack.info("Villa Details By Agent");
        request.setAttribute("viewVillList", in_adminservice.viewVilla());
        return "view_villa_details_by_agent";
    }

    @RequestMapping(value = "vm_vehicle_display_by_admin.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewVehicleDetails(HttpServletRequest request) {
        AppTrack.info("::::Vehicle  Details By Admin:::");
        request.setAttribute("VehicleDetailsList", in_vehicleservice.viewVehicle());
        return "vm_vehicle_display";
    }

    @RequestMapping(value = "layout_settings.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewLayOutSettings(ModelMap model) {
        AppTrack.info("::::::::::::::::Lay Out Settings::::::::::::::::::");
        return "layout_setting";
    }

    @RequestMapping(value = "hr_update_profile.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateProfile(ModelMap model) {
        AppTrack.info("::::::::::::::::::::::Update Profile::::::::::::::::");
        return "hr_edit_profile";
    }

    @RequestMapping(value = "admin_access_controller_on_manager_task.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String accessingController(ModelMap model, HttpServletRequest request) {
        AppTrack.info(":::::::::::::Access Controller on Manager::::::::::::");
        request.setAttribute("ManagerTaskByAdmin", in_adminservice.viewAccessForManagerTask());

        model.addAttribute(new SalesManagerTastBean());
        return "admin_access_controller_on_manager_task";
    }

    @RequestMapping(value = "grant_access_to_othermanager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String grantAccessController(HttpServletRequest request, ModelMap model) {
        AppTrack.info(":::::::::::::::Grant Access to Other Manager::::::::::::::::");
        model.addAttribute(new SalesManagerTastBean());
        /*//System.out.println("Grant Access");*/
        String deltby = request.getParameter("deltby");
        String accessby = request.getParameter("accessby");
        /*//System.out.println("DeltBy"+deltby);
		//System.out.println("AccessBy"+accessby);*/
        in_adminservice.updateAccessController(deltby, accessby);
        return "admin_access_controller_on_manager_task";
    }

    @RequestMapping(value = "fn_agent_comission.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateAgentComission(HttpServletRequest request, ModelMap model) {
        AppTrack.info(":::::::::::Agent Commission:::::::::");
        model.addAttribute(new AgentComissionBean());
        return "admin_agent_commission";

    }

    @RequestMapping(value = "sfn_agent_comission.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatedAgentComission(@ModelAttribute AgentComissionBean agentcomission, HttpServletRequest request) {
        AppTrack.info("::::::::::::::::Save Agent Commission::::::::::::::");
        insertorupdate = in_adminservice.createAgentComission(agentcomission);
        if (insertorupdate) {
            request.getSession().setAttribute("successmsg", successmsg);
        } else {

        }
        return "redirect:fn_agent_comission.res";
    }

    @RequestMapping(value = "SecurityErrorPage.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String securiryError(@ModelAttribute AgentComissionBean agentcomission, HttpServletRequest request) {
        AppTrack.info("::::::::::::::::securiryError::::::::::::::");

        return "SecurityErrorPage";
    }
}
