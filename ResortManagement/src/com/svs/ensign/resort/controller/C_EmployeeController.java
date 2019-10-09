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

import com.svs.ensign.resort.bean.EmployeeBean;
import com.svs.ensign.resort.cms.service.IN_CustormerService;
import com.svs.ensign.resort.helper.C_ResortHelper;
import com.svs.ensign.resort.service.IN_EmployeeService;
import com.svs.ensign.resort.util.AppTrack;
import net.sf.json.JSONObject;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * C_EmployeeController.java
 *
 * @author RaviKiran , Feb 3, 2014
 * @version 1.0
 *
 * This class will do Operations on employee module.
 *
 */
@Controller
public class C_EmployeeController {

    @Autowired
    IN_EmployeeService in_employeeservice;
    @Autowired
    IN_CustormerService in_customerservice;
    @Autowired
    C_ResortHelper resorthelper;

    private HttpSession httpsession;
    private List employeelist;
    private boolean insertorupdate;
    @Value("${resort.success}")
    String successmsg;
    @Value("${resort.update}")
    String updatesuccess;
    JSONObject respObj = new JSONObject();

    /**
     *
     * @param model Creates the CL_EmployeeBean.java
     */
    @RequestMapping(value = "employee_details.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String genrateEmployee(ModelMap model) {
        AppTrack.info("::::Employee Details:::::::::");
        model.addAttribute(new EmployeeBean());
        return "employee_details";
    }

    /**
     *
     * @param employeebean Sending the employeebean to service layer.
     *
     */
    @RequestMapping(value = "semployee.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatedEmployee(@ModelAttribute EmployeeBean employeebean, HttpServletRequest request) {
        ////System.out.println("EmployeeDetailsController");
        AppTrack.info("::::::::::Employee ::::::::::::::");
        in_employeeservice.createEmployeeDetails(employeebean);
        String message = "Inserted Successfully";
        httpsession = request.getSession();
        request.getSession().setAttribute("successmsg", successmsg);
        return "redirect:employee_details.res";
    }

    @RequestMapping(value = "update_hr_employee.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateEmployeeDetails(ModelMap model, HttpServletRequest request) {
        AppTrack.info(":::Update Hr Employee:::::::");
        request.getSession().setAttribute("EmployeeList", in_employeeservice.viewEmployeeByName(request.getSession().getAttribute("username").toString()));
        model.addAttribute(new EmployeeBean());
        return "update_hr_employee";
    }

    @RequestMapping(value = "supdate_hr_employee.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updatedEmployeeDetails(@ModelAttribute EmployeeBean empbean, HttpServletRequest request) {
        AppTrack.info(":::::::::::Update Employee:::::::::::::");
        insertorupdate = in_employeeservice.updateEmployeeDetails(empbean);
        if (insertorupdate) {
            request.getSession().setAttribute("updatesuccess", updatesuccess);
        }
        return "redirect:update_hr_employee.res";
    }

    @RequestMapping(value = "employee_id.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateId(HttpServletRequest request, HttpServletResponse response) {
        try {
            AppTrack.info(":::::::::::Employee Id Generation::::::::::::::::");
            PrintWriter out = response.getWriter();
            AppTrack.info(":::::::::::Employee Id Generation::::::::::::::::" + resorthelper.generateEmployeeId());
            out.println(resorthelper.generateEmployeeId());

        } catch (Exception e) {
            e.printStackTrace();
        }
        response.setContentType("plain/text");
    }

    @RequestMapping(value = "view_employee_details.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewEmployee(HttpServletRequest request) {
        AppTrack.info(":::::::::Employee Details::::::::::;" + in_employeeservice.viewTeleEmployee());
        request.setAttribute("EmployeeList", in_employeeservice.viewTeleEmployee());
        return "view_employee_details";
    }

    @RequestMapping(value = "tele_director_allot_managers.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewTeleEmployeesList(HttpServletRequest request) {
        AppTrack.info("::::::::::::::Telecom Director Alloting Manager::::::::");
        ////System.out.println("Allotment Employee List");
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        AppTrack.info("Alloting Manager By Director" + username);
        ////System.out.println("Employee id\t"+username);
        AppTrack.info("Alloting Manager By Director" + in_employeeservice.allotedEmployee(username));
        request.setAttribute("EmpList", in_employeeservice.allotedEmployee(username));
        return "tele_director_allot_managers";
    }

    @RequestMapping(value = "tele_manager_alloted_callers.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewManagerTeleCallerList(HttpServletRequest request) {
        ////System.out.println("Allotment Employee List");
        AppTrack.info("::::::::::::::::Telemanager Alloting Caller:::::::::::::" + request.getParameter("id"));
        String username = request.getParameter("id");
        AppTrack.info(":::::::::::Telemanager List::::::::" + in_employeeservice.viewByManagerId(username));
        //System.out.println("Employee id\t"+username);
        request.setAttribute("CallersList", in_employeeservice.viewByManagerId(username));
        return "tele_caller_related_manager";
    }

    @RequestMapping(value = "view_tele_caller_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewTeleCallerByManagerList(HttpServletRequest request) {

        ////System.out.println("Allotment Employee List");
        HttpSession httpsession = request.getSession();
        String username = (String) httpsession.getAttribute("username");
        AppTrack.info(":::Tele Caller List By manager" + username);
        //System.out.println("Employee id\t"+username);
        AppTrack.info(":::TeleCaller List By" + in_employeeservice.viewByManagerId(username));
        request.setAttribute("CallersList", in_employeeservice.viewByManagerId(username));
        return "tele_caller_by_manager";
    }

    @RequestMapping(value = "tele_view_caller.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewTeleCallerList(HttpServletRequest request) {
        //System.out.println("Allotment Employee List");
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        ////System.out.println("Employee id\t"+username);
        request.setAttribute("TeleCallerList", in_employeeservice.viewTeleCallerByDirectorId(username));
        return "tele_view_callers";
    }

    @RequestMapping(value = "tele_director_alloted_callers.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewTeleCallerList(HttpServletRequest request, ModelMap model) {
        String id = request.getParameter("id");
        ////System.out.println("Id is"+id);
        model.addAttribute(new EmployeeBean());
        request.setAttribute("EmployeeList", in_employeeservice.viewEmployeeById(id));
        return "tele_caller_allotment";
    }

    @RequestMapping(value = "update_allotment.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateAllotment(@ModelAttribute EmployeeBean empbean, HttpServletRequest request) {
        long id = 0;
        httpsession = request.getSession();
        id = Long.parseLong(request.getParameter("id"));
        ////System.out.println("Id is:\t"+id);
        insertorupdate = in_employeeservice.updateAllotment(empbean, id);
        if (insertorupdate) {
            httpsession.setAttribute("upsuccess", updatesuccess);
        }
        return "redirect:tele_view_caller.res";
    }

    //Sales Employee
    @RequestMapping(value = "view_excicutive_by_director.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewSalesExecutiveByDirector(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        request.setAttribute("salesExecutiveList", in_employeeservice.viewSalesExcutiveByDirector(username));
        return "sl_emp_allotment_by_director";
    }

    @RequestMapping(value = "sl_allotment_to_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String allotingSalesExecutiveToManager(HttpServletRequest request, ModelMap model) {
        String id = request.getParameter("id");
        model.addAttribute(new EmployeeBean());
        request.setAttribute("SalesEmp", in_employeeservice.viewEmployeeById(id));
        return "sl_allot_executive_to_manager";
    }

    @RequestMapping(value = "sl_allotted_to_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String allotedSalesExecutiveToManager(@ModelAttribute EmployeeBean empbean, HttpServletRequest request) {

        long id = 0;
        id = Long.parseLong(request.getParameter("id"));
        ////System.out.println("Id is:\t"+id);
        in_employeeservice.updateAllotment(empbean, id);
        return "redirect:view_excicutive_by_director.res";
    }

    @RequestMapping(value = "sl_view_managers.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewSalesManagersList(HttpServletRequest request) {
        //System.out.println("Allotment Employee List");
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        ////System.out.println("Employee id\t"+username);
        request.setAttribute("SalesManager", in_employeeservice.allotedEmployee(username));
        return "sl_view_managers";
    }

    @RequestMapping(value = "sl_view_executives_by_managers.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewSalesExecutivesList(HttpServletRequest request) {
        //System.out.println("Allotment Employee List");
        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        ////System.out.println("Employee id\t"+username);
        request.setAttribute("SalesExecutives", in_employeeservice.viewByManagerId(username));
        return "sl_view_excutives_by_manager";
    }

    @RequestMapping(value = "sl_executives_by_managers.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewSlExcecutivesList(HttpServletRequest request) {
        //System.out.println("Allotment Employee List");
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        ////System.out.println("Employee id\t"+username);
        request.setAttribute("SalesExecutives", in_employeeservice.viewByManagerId(username));
        return "sl_manager_view_executive";
    }

    @RequestMapping(value = "fn_executive_by_directors.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewFnExecutivesList(HttpServletRequest request) {
        //System.out.println("Allotment Employee List");
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        //System.out.println("Employee id\t"+username);
        request.setAttribute("FnExcutive", in_employeeservice.viewTeleCallerByDirectorId(username));
        return "fn_allot_executive_to_manager";
    }

    @RequestMapping(value = "fn_executive_by_id.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewFnExecutivesById(HttpServletRequest request, ModelMap model) {
        //System.out.println("Allotment Employee List");
        //HttpSession session=request.getSession();
        String username = request.getParameter("id");//(String)session.getAttribute("username");
        //System.out.println("Employee id\t"+username);
        request.setAttribute("FnExcutiveById", in_employeeservice.viewEmployeeById(username));
        model.addAttribute(new EmployeeBean());
        return "fn_allot_executive_for_manager";
    }

    @RequestMapping(value = "fn_allotted_to_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String allotedFnExecutiveToManager(@ModelAttribute EmployeeBean empbean, HttpServletRequest request) {

        long id = 0;
        id = Long.parseLong(request.getParameter("id"));
        ////System.out.println("Id is:\t"+id);
        in_employeeservice.updateAllotment(empbean, id);
        return "redirect:fn_executive_by_directors.res";
    }

    @RequestMapping(value = "fn_view_executive_by_managers.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewFnExecutivesByManagerList(HttpServletRequest request) {
        //System.out.println("Allotment Employee List");
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        ////System.out.println("Employee id\t"+username);
        request.setAttribute("FnExecutive", in_employeeservice.viewByManagerId(username));
        return "fn_view_executive_by_manager";
    }

    @RequestMapping(value = "fn_managers_by_directors.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewFnManagersList(HttpServletRequest request) {
        //System.out.println("Allotment Employee List");
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        //System.out.println("Employee id\t"+username);
        request.setAttribute("FnManagers", in_employeeservice.allotedEmployee(username));
        return "fn_view_manager_by_director";
    }

    @RequestMapping(value = "admin_view_departments.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewDepartmentByAdmin(ModelMap model) {
//        model.addAttribute(new EmployeeBean());

        return "admin_view_department";
    }

    @RequestMapping(value = "admin_view_directors.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewDirectorsByAdmin(ModelMap model, HttpServletRequest request) {
//        request.setAttribute("department", request.getParameter("department"));
        return "admin_view_directors";
    }

    @RequestMapping(value = "admin_view_directorsGrid.res", method = {RequestMethod.GET, RequestMethod.POST})
    public @ResponseBody String viewDirectorsByAdminGrid(ModelMap model, @RequestParam(value = "department") JSONObject reqObj, HttpServletRequest request) {
//		request.setAttribute("direcotrslist", in_employeeservice.viewDirectorsByAdmin(department));
        try {
           String department= reqObj.getString("DEPARTMENT");
            respObj = in_employeeservice.viewDirectorsByAdmin(department);
            
            AppTrack.debug("response :::viewDirectorsByAdminGrid "+respObj);
        } catch (Exception e) {
            AppTrack.error("Error in viewDirectorsByAdminGrid", e);
        }

        return respObj.toString();
    }

    @RequestMapping(value = "admin_view_manager_by_direcotors.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewManagersByAdmin(HttpServletRequest request, @RequestParam(value = "username") String username) {
        ////System.out.println("Allotment Employee List");
        //HttpSession session=request.getSession();
        //String username=(String)session.getAttribute("username");
        ////System.out.println("Employee id\t"+username);
        request.setAttribute("managerslist", in_employeeservice.allotedEmployee(username));
        return "admin_view_manager_by_direcotors";
    }

    @RequestMapping(value = "admin_view_executives_callers.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewExcecutivesCallersList(HttpServletRequest request, @RequestParam(value = "username") String username) {
        //System.out.println("Allotment Employee List");
        //HttpSession session=request.getSession();
        //String username=(String)session.getAttribute("username");
        ////System.out.println("Employee id\t"+username);
        request.setAttribute("execcaller", in_employeeservice.viewByManagerId(username));
        return "admin_view_executive_callers";
    }
}
