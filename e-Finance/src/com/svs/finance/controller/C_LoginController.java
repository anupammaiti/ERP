package com.svs.finance.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.svs.finance.bean.LoginBean;
import com.svs.finance.helper.C_FinanceHelperController;
import com.svs.finance.service.IN_LoginService;
import com.svs.finance.util.AppLogger;
import com.svs.finance.util.ConvertStackTracetoString;

@Controller
public class C_LoginController {
    
    @Autowired
    IN_LoginService in_loginservice;
    @Autowired
    C_FinanceHelperController hlp_fin;
    @Autowired
    ConvertStackTracetoString util_stos;
    
    @Value("${login.error1}")
    String loginerror;
    @Value("${resort.success}")
    String successmsg;
    @Value("${resort.update}")
    String updatesuccess;
    
    private boolean insertorupdate = false;
    private HashMap logindetails = new HashMap();
    final static Logger logger = Logger.getLogger(C_LoginController.class);
    
    @RequestMapping(value = "login.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public String loginPage(ModelMap model) {
        AppLogger.debug("::Login Page:::");
        model.addAttribute(new LoginBean());
        return "login";
    }
    
    @RequestMapping(value = "loginstatus.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public String loginForward(@RequestParam("username") String username, @RequestParam("password") String password, HttpServletRequest request) {
        String loginforward = null;
        /*System.out.println("UserName\t"+username);
		System.out.println("Password\t"+password);*/
        
        String company = null;
        if (username.equals("admin") && (password.equals("admin"))) {
            
            request.getSession().setAttribute("username", username);
            request.getSession().setAttribute("password", password);
            AppLogger.debug("::loginForward:::");
            loginforward = "admin_main";
        } else if ((username.equals("fn_svs")) && (password.equals("fn_svs"))) {
            request.getSession().setAttribute("username", username);
            request.getSession().setAttribute("password", password);
            loginforward = "executive_main";
        } else if ((username.equals(" ")) && (password.equals(" "))) {
            
            request.getSession().setAttribute("loginerror", loginerror);
            loginforward = "login";
        }
        return loginforward;
    }
    
    @RequestMapping(value = "loginCheckup.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public String checkLogin(@ModelAttribute LoginBean loginbean, HttpServletRequest request) {
        String username = loginbean.getUsername();
        String password = loginbean.getPassword();
        String status = null;
        String companyname1 = null;
        String designation = null;
        JSONObject logindetails = new JSONObject();
        //System.out.println("Username\t"+username);
        //System.out.println("Password\t"+password);
        
        insertorupdate = in_loginservice.loginCheckup(username, password);//Login Controller for Login Check up.
        AppLogger.info("::checkLogin Login Page:::");
        if (insertorupdate) {
            //logindetails=hlp_fin.gettingLoginDetails(username, password);
            List<LoginBean> list1 = in_loginservice.getLoginDetails(username, password);
            companyname1 = list1.get(0).getCompanyname();
            designation = list1.get(0).getDesignation();
            //designation=logindetails.getString("designation");
//            System.out.println("Company Name\t" + companyname1 + "\t" + designation);
            AppLogger.debug("Login Credentials::: Company Name" + companyname1 + " designation is::" + designation);
            if (designation.equals("Admin")) {
                
                AppLogger.debug("User ID:\t" + username + "Comapany Name:" + companyname1 + "Login Status:\t Successful");
                request.getSession().setAttribute("username", username);
                request.getSession().setAttribute("password", password);
                request.getSession().setAttribute("compname", companyname1);
                //System.out.println("Login Error"+loginerror);
                status = "admin_main";                
            } else if (designation.equals("Employee")) { 
                
                AppLogger.debug("User ID:\t" + username + "Comapany Name:" + companyname1 + "Login Status:\t Successful");                
                request.getSession().setAttribute("username", username);
                request.getSession().setAttribute("password", password);
                request.getSession().setAttribute("compname", companyname1);
                status = "executive_main";
                
            } else if ((username.equals("")) && (password.equals(""))) {
                
                AppLogger.debug("User ID:\t" + username + "Comapany Name:" + companyname1 + "Login Status:\t Failed");
                request.getSession().setAttribute("loginerror", loginerror);
                status = "login";
            }
        } else {
            request.getSession().setAttribute("loginerror", loginerror);
            status = "login";
        }
        
        return status;
    }
    
    @RequestMapping(value = "logout.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public String logOff(ModelMap model) {
        AppLogger.debug("::LogOut Successfully:::");
        return "logout";
    }

    //Change Password.
    @RequestMapping(value = "admin_change_password.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public String changePassword(ModelMap model) {
        AppLogger.debug("::Change Password:::");
        model.addAttribute(new LoginBean());
        return "fn_admin_change_password";
    }

    @RequestMapping(value = "fn_changed_password.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public String changingPassword(HttpServletRequest request, HttpServletResponse response) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String newpassword = request.getParameter("newpassword");
        String comp = request.getParameter("login_comp");
//        System.out.println(username);
//        System.out.println(password);
//        System.out.println(comp);

        insertorupdate = in_loginservice.updatePassword(username, newpassword, comp);
        if (insertorupdate) {
            AppLogger.debug("::Password Changed Successfully::");
            request.getSession().setAttribute("updatesuccess", updatesuccess);
        } else {
            AppLogger.debug("::Unable to Change Password::");
        }
        return "redirect:admin_change_password.fin";
    }
    
    @RequestMapping(value = "user_change_password.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public String changeUserPassword(ModelMap model) {
        AppLogger.debug("::Changing user password::");
        model.addAttribute(new LoginBean());
        return "fn_user_change_password";
    }

    @RequestMapping(value = "fn_user_changed_password.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public String changingUserPassword(HttpServletRequest request, HttpServletResponse response) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String newpassword = request.getParameter("newpassword");
        String comp = request.getParameter("login_comp");
        System.out.println(username);
        System.out.println(password);
        System.out.println(comp);
        AppLogger.debug("::Changing user password:::");
        insertorupdate = in_loginservice.updatePassword(username, newpassword, comp);
        if (insertorupdate) {
            AppLogger.debug("::User Password Successfully::");
            request.getSession().setAttribute("updatesuccess", updatesuccess);
        } else {
            AppLogger.debug("Unable to change user password");
        }
        return "redirect:user_change_password.fin";
    }
    @RequestMapping(value="companyRegistration.fin",method= {RequestMethod.GET,RequestMethod.POST})
    public String registerCompany(HttpServletRequest request,HttpServletResponse resp) {
    	
    	return "hr_companyRegistration";
    }
}
