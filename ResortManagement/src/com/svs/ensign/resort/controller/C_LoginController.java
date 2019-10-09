package com.svs.ensign.resort.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.svs.ensign.resort.bean.LoginBean;
import com.svs.ensign.resort.service.IN_AdminService;
import com.svs.ensign.resort.service.IN_LoginService;
import com.svs.ensign.resort.util.AppTrack;
import com.svs.ensign.resort.util.ConvertStackTracetoString;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * C_LoginController.java
 *
 * @author RaviKiran, Feb 3, 2014
 * @version 1.0
 *
 * Operations on Login.
 *
 *
 */
@Controller
public class C_LoginController {
    
    @Autowired
    IN_LoginService in_loginservice;
    @Autowired
    ConvertStackTracetoString util_stos;
    
    private HttpSession httpsession;
    private List status;
    private boolean insertorupdate;
    JSONObject respObj=new JSONObject();
    
    @Value("${resort.success}")
    String msg;
    
    @Autowired
    IN_AdminService in_adminservice;

    /**
     * @param model Create LoginBean Class.
     * @return Send Controller to LoginChecking Page.
     */
    @RequestMapping(value = "login.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String loginPage(ModelMap model) {
        AppTrack.info(":::::::::Resort Application Starts::::::::::::::::::");
        model.addAttribute(new LoginBean());
        return "login";
    }

    /**
     *
     * @param request Get the values from login.res page
     * @return Send Controller to Authenticated User. Checking the Login Status.
     */
    @RequestMapping(value = "login_check.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String checkLoginDummy(@ModelAttribute LoginBean loginbean) {
        String username = null;
        String password = null;
        String status = null;
        
        username = loginbean.getUsername();
        password = loginbean.getPassword();
        
        if ((username.equals("telecaller")) && (password.equals("telecaller"))) {
            status = "main";
        } else if ((username.equals("guest_user")) && (password.equals("guest_user"))) {
            status = "guest_user_home";
        } else if ((username.equals("admin")) && (password.equals("admin"))) {
            status = "admin_main";
        } else {
            status = "login";
        }
        return status;
    }

    /**
     *
     * @param model Genereate LoginBean Class Constructor Dynamically.
     * @return editpassword. For Editing the Password.
     */
    @RequestMapping(value = "editpassword.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String editPassword(ModelMap model) {
        model.addAttribute(new LoginBean());
        return "edit_password";
    }

    /**
     *
     * @param loginbean Getting the loginbean object.
     * @return It Update the Password and return to editpassword.
     */
    @RequestMapping(value = "updatedpassword.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updatedPassword(@ModelAttribute LoginBean loginbean, HttpServletRequest request) {
        httpsession = request.getSession();
        
        insertorupdate = in_loginservice.changePassword(loginbean);
        if (insertorupdate) {
            httpsession.setAttribute("pswdchange", "Password Changed...");
        }
        return "redirect:editpassword.res";
    }

    /**
     *
     * @param model Mapping logout.res.
     * @return To logout.jsp .
     */
    @RequestMapping(value = "logout.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String callLogout(ModelMap model, HttpServletRequest request) {
        try {
            request.getSession().invalidate();
            AppTrack.debug("::LogOut Sucessfully ::");
        } catch (Exception e) {
            AppTrack.error("Exception in LogOut", e);
        }
        
        return "logout";
    }
    
    @RequestMapping(value = "loginstatus.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String secondLoginCheckUp(@ModelAttribute LoginBean loginbean, HttpServletRequest request) {
        
        String username = null;
        String password = null;
        String loginstatus = null;
        
        try {
            
            HttpSession httpsession = request.getSession();
            username = loginbean.getUsername();
            password = loginbean.getPassword();
            AppTrack.info("::::::UserName:::::::::" + username + "::::::Password" + password);
            respObj = in_loginservice.checkLogin(username, password);
            JSONArray logiArr=respObj.getJSONArray("Data");
            AppTrack.info(":::::::::::::::::::::Login Status" + logiArr);
            
            //for(int i=0;i<status.size();i++){
            if (logiArr.size() == 0) {
                loginstatus = "login";
                AppTrack.debug("::Your credentials are wrong::");
            } else {
                loginstatus = logiArr.getString(0);
                //System.out.println("Login Status"+loginstatus);
                AppTrack.debug("Login Status\t" + loginstatus);
                
            }

            //}
            if ((username.equals("admin")) && (password.equals("admin"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
                AppTrack.debug("::Admin::");
                loginstatus = "admin_main";
            }
            
            if ((loginstatus.equals("TeleMarketing")) && (username.startsWith("tcd"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
                AppTrack.debug("TeleMarketing Director");
                loginstatus = "tele_marketing_director";
            } else if ((loginstatus.equals("TeleMarketing")) && (username.startsWith("tcm"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
                AppTrack.debug("TeleCaller Manager");
                loginstatus = "tele_caller_manager_main";
            } else if (loginstatus.equals("TeleMarketing") && (username.startsWith("tc"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
                AppTrack.debug("TeleMarketing Caller");
                loginstatus = "main";
            } else if (loginstatus.equals("TeleMarketing") && (username.startsWith("tag"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
                AppTrack.debug("TeleMarketing Agent");
                loginstatus = "tele_agent";
            } else if (loginstatus.equals("SalesAndMarketing") && (username.startsWith("sld"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
                AppTrack.debug("Sales Director");
                loginstatus = "sl_director_main";
            } else if (loginstatus.equals("SalesAndMarketing") && (username.startsWith("slm"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
                AppTrack.debug("Sales Manager ");
                loginstatus = "sl_manager_main";
            } else if (loginstatus.equals("SalesAndMarketing") && (username.startsWith("slex"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
                AppTrack.debug("Sales Executive");
                loginstatus = "sl_exicutive_main";
            } else if (loginstatus.equals("Finance") && (username.startsWith("fnd"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
                AppTrack.debug("Finance Director");
                loginstatus = "fn_director_main";
            } else if (loginstatus.equals("Finance") && (username.startsWith("fnm"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
                AppTrack.debug("Fiance Manager");
                loginstatus = "fn_manager_main";
            } else if (loginstatus.equals("Finance") && (username.startsWith("fnex"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
                AppTrack.debug("Finance Executive");
                loginstatus = "fn_exicutive_main";
            } else if (loginstatus.equals("VehicleMaintenence") && (username.startsWith("vmdr"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
                AppTrack.debug("Vehichle Maintenance");
                loginstatus = "vehile_maintenence_main";
            } else if (loginstatus.equals("Customer") && (username.startsWith("cus"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
                AppTrack.debug("Customer Registration");
                loginstatus = "cus_main";
            } else if (loginstatus.equals("HumanResources") && (username.startsWith("hr_ex"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
//                System.out.println("output from the server" + serviceClient("http://localhost:8085/ResortManagement/rest/Resort/helper/ravi"));
                AppTrack.debug("Human Resourse Executive");
                loginstatus = "hr_ex_main";
            } else if (loginstatus.equals("HumanResources") && (username.startsWith("hrm"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
                AppTrack.debug("Human Resourse Manager");
                loginstatus = "hr_manager_main";
            } else if (loginstatus.equals("HumanResources") && (username.startsWith("hrd"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
                AppTrack.debug("Human Resources Director ");
                loginstatus = "fn_director_main";
            } else if (loginstatus.equals("ClubManagement") && (username.startsWith("clbd"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
                AppTrack.debug("Club Management Director ");
                loginstatus = "club_dir_main";
            } else if (loginstatus.equals("ClubManagement") && (username.startsWith("clbm"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
                AppTrack.debug("Club Management Director ");
                loginstatus = "club_mgr_main";
            } else if (loginstatus.equals("ClubManagement") && (username.startsWith("clbex"))) {
                httpsession.setAttribute("username", username);
                httpsession.setAttribute("password", password);
                AppTrack.debug("Club Management Director ");
                loginstatus = "clb_ex_main";
            }
        } catch (Exception e) {
            AppTrack.error("Exception in secondLoginCheckUp", e);
        }
        return loginstatus;
    }
    
    @RequestMapping(value = "sl_director_edit_password.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String editSLDirectorPassword(ModelMap model) {
        model.addAttribute(new LoginBean());
        AppTrack.info("::editpassword for sales director::");
        return "sl_director_editpassword";
    }
    
    @RequestMapping(value = "update_sl_director_edit_password.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateSLDirectorPassword(@ModelAttribute LoginBean loginbean, HttpServletRequest request) {
        httpsession = request.getSession();
        AppTrack.info("::Updating sales Driector edit passwod::");
        insertorupdate = in_loginservice.changePassword(loginbean);
        if (insertorupdate) {
            AppTrack.debug("::sales director password updated:");
            httpsession.setAttribute("pswdchange", "Password Changed...");
        } else {
            
        }
        return "redirect:sl_director_edit_password.res";
    }
    
    @RequestMapping(value = "sl_manager_edit_password.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String editSLManagerPassword(ModelMap model) {
        model.addAttribute(new LoginBean());
        AppTrack.info("::sales manager password updating page:");
        return "sl_manager_edit_password";
    }
    
    @RequestMapping(value = "update_sl_manager_edit_password.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateSLManagerPassword(@ModelAttribute LoginBean loginbean, HttpServletRequest request) {
        httpsession = request.getSession();
        insertorupdate = in_loginservice.changePassword(loginbean);
        if (insertorupdate) {
            AppTrack.debug("::sales manager password updated successfully::");
            httpsession.setAttribute("pswdchange", "Password Changed...");
        } else {
            AppTrack.debug("::Unable to update sales manager password::");
        }
        return "redirect:sl_manager_edit_password.res";
    }
    
    @RequestMapping(value = "sl_executive_edit_password.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String editSLExecutivePassword(ModelMap model) {
        model.addAttribute(new LoginBean());
        AppTrack.info("::Sales executive change password page::");
        return "sl_executive_edit_password";
    }
    
    @RequestMapping(value = "update_sl_executive_edit_password.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateSLExecutivePassword(@ModelAttribute LoginBean loginbean, HttpServletRequest request) {
        httpsession = request.getSession();
        insertorupdate = in_loginservice.changePassword(loginbean);
        AppTrack.info("::Sales executive change password page loading::");
        if (insertorupdate) {
            AppTrack.debug("::Sales executive change password page loading::");
            httpsession.setAttribute("pswdchange", "Password Changed...");
        } else {
            AppTrack.debug("::Unable to change password for sales executive::");
        }
        return "redirect:sl_executive_edit_password.res";
    }
    
    @RequestMapping(value = "marketing_manager_editing_password.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String teleMarketEditPassword(Model model) {
        AppTrack.info("::teleMarketEditPassword loading::");
        model.addAttribute(new LoginBean());
        return "tele_manager_editing_password";
    }
    
    @RequestMapping(value = "update_tc_manager_edit_password.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateTCManagerPassword(@ModelAttribute LoginBean loginbean, HttpServletRequest request) {
        httpsession = request.getSession();
        AppTrack.info("::teleMarketEditPassword loading::");
        insertorupdate = in_loginservice.changePassword(loginbean);
        if (insertorupdate) {
            AppTrack.debug("::teleMarket manager edit password loading::");
            httpsession.setAttribute("pswdchange", "Password Changed...");
        } else {
            AppTrack.debug("::Unable to change teleMarket manager password ::");
        }
        return "redirect:marketing_manager_editing_password.res";
    }
    
    @RequestMapping(value = "tele_caller_edit_password.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String teleCallerEditPassword(Model model) {
        AppTrack.info("::teleMarket manager edit password loading::");
        model.addAttribute(new LoginBean());
        return "tele_caller_edit_password";
    }
    
    @RequestMapping(value = "update_tc_caller_edit_password.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateTCCallerPassword(@ModelAttribute LoginBean loginbean, HttpServletRequest request) {
        httpsession = request.getSession();
        AppTrack.info("::updateTCCallerPassword::");
        insertorupdate = in_loginservice.changePassword(loginbean);
        
        if (insertorupdate) {
            AppTrack.debug("Telecaller change password");
            httpsession.setAttribute("pswdchange", "Password Changed...");
        } else {
            AppTrack.debug("Unable to update Telecaller change password");
        }
        return "redirect:tele_caller_edit_password.res";
    }
    
    @RequestMapping(value = "fn_director_edit_password.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String financeDirectorEditPassword(Model model) {
        AppTrack.info("::financeDirectorEditPassword::");
        model.addAttribute(new LoginBean());
        return "fn_director_edit_password";
    }
    
    @RequestMapping(value = "update_fn_director_edit_password.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateFNDirectorPassword(@ModelAttribute LoginBean loginbean, HttpServletRequest request) {
        httpsession = request.getSession();
        AppTrack.info("updateFNDirectorPassword");
        insertorupdate = in_loginservice.changePassword(loginbean);
        if (insertorupdate) {
            AppTrack.debug("::updateFNDirectorPassword::");
            httpsession.setAttribute("pswdchange", "Password Changed...");
        } else {
            AppTrack.debug("::Unable to update Finance Direcor password::");
        }
        return "redirect:fn_director_edit_password.res";
    }
    
    @RequestMapping(value = "fn_manager_edit_password.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String financeManagerEditPassword(Model model) {
        AppTrack.info("::financeManagerEditPassword::");
        model.addAttribute(new LoginBean());
        return "fn_manager_edit_password";
    }
    
    @RequestMapping(value = "update_fn_manager_edit_password.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateFNManagerPassword(@ModelAttribute LoginBean loginbean, HttpServletRequest request) {
        httpsession = request.getSession();
        AppTrack.debug("::financeManagerEditPassword::");
        insertorupdate = in_loginservice.changePassword(loginbean);
        if (insertorupdate) {
            AppTrack.debug("::updateFNManagerPassword successful::");
            httpsession.setAttribute("pswdchange", "Password Changed...");
        } else {
            AppTrack.debug("::Unable to update updateFNManagerPassword ::");
        }
        return "redirect:fn_manager_edit_password.res";
    }
    
    @RequestMapping(value = "fn_executive_edit_password.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String financeExecutiveEditPassword(Model model) {
        AppTrack.info("::financeExecutiveEditPassword::");
        model.addAttribute(new LoginBean());
        return "fn_executive_edit_password";
    }
    
    @RequestMapping(value = "update_fn_executive_edit_password.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateFNExcecutivePassword(@ModelAttribute LoginBean loginbean, HttpServletRequest request) {
        httpsession = request.getSession();
        AppTrack.info("::updateFNExcecutivePassword::");
        insertorupdate = in_loginservice.changePassword(loginbean);
        if (insertorupdate) {
            AppTrack.debug("::updateFNExcecutivePassword::");
            httpsession.setAttribute("pswdchange", "Password Changed...");
        } else {
            AppTrack.debug("::Unable to Update updateFNExcecutivePassword::");
        }
        return "redirect:fn_executive_edit_password.res";
    }
    
    @RequestMapping(value = "admin_main.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String mainAdmin(ModelMap model, HttpServletRequest request) {
        //System.out.println("AdminMain");
        //System.out.println("Message from message properties file is\t"+msg);
        AppTrack.info("::main Admin::");
        request.setAttribute("viewVillListadmin", in_adminservice.viewVilla());
        return "admin_main";
    }
    
    @RequestMapping(value = "tele_director_main.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String mainTeleDirector(ModelMap model) {
        AppTrack.info("::mainTeleDirecotry:::");
        return "tele_marketing_director";
    }
    
    @RequestMapping(value = "tele_manager_main.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String mainTeleManager(ModelMap model) {
        AppTrack.info("::main Tele Manager:::");
        return "tele_caller_manager_main";
    }
    
    @RequestMapping(value = "tele_caller_main.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String mainTeleCaller(ModelMap model) {
        AppTrack.debug("::Main Tele Caller:::");
        return "main";
    }
    
    @RequestMapping(value = "tele_agent_main.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String mainTeleAgent(ModelMap model) {
        AppTrack.debug("::tele agent main::");
        return "tele_agent";
    }
    
    @RequestMapping(value = "vm_driver_main.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String mainVMDriver(ModelMap model) {
        AppTrack.debug("::main VMDriver:::");
        return "vehile_maintenence_main";
    }
    
    @RequestMapping(value = "sl_director_main.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String mainSlDirector(ModelMap model) {
        AppTrack.debug("Main sales Director");
        return "sl_director_main";
    }
    
    @RequestMapping(value = "sl_manager_main.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String mainSlManager(ModelMap model) {
        AppTrack.info("::Main SL Manager::");
        return "sl_manager_main";
    }
    
    @RequestMapping(value = "sl_executive_main.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String mainSlExecutive(ModelMap model) {
        AppTrack.info("::main Sales Executive::");
        return "sl_exicutive_main";
    }
    
    @RequestMapping(value = "fn_director_main.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String mainFnDirector(ModelMap model) {
        AppTrack.info("main Finance Director");
        return "fn_director_main";
    }
    
    @RequestMapping(value = "fn_manager_main.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String mainFnManager(ModelMap model) {
        AppTrack.info("finance Manager main");
        return "fn_manager_main";
    }
    
    @RequestMapping(value = "fn_executive_main.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String mainFnExecutive(ModelMap model) {
        AppTrack.info("Finance Executive main");
        return "fn_exicutive_main";
    }
    
    @RequestMapping(value = "customer_main.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String mainCustomer(ModelMap model) {
        AppTrack.info(":::main Customer:::");
        return "cus_main";
    }
    
    public JSONObject serviceClient(String serviceurl) {
        JSONObject respObj = new JSONObject();
        String output = "";
        try {
            
            URL url = new URL(serviceurl);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Accept", "application/json");
            
            if (conn.getResponseCode() != 200) {
                throw new RuntimeException("Failed : HTTP error code : "
                        + conn.getResponseCode());
            }
            
            BufferedReader br = new BufferedReader(new InputStreamReader(
                    (conn.getInputStream())));
            
            System.out.println("Output from Server .... \n");
            while ((output = br.readLine()) != null) {
                System.out.println(output);
                respObj.put("data", output);
            }
            
            conn.disconnect();
            
        } catch (MalformedURLException e) {
            
            e.printStackTrace();
            
        } catch (IOException e) {
            
            e.printStackTrace();
            
        }
        
        return respObj;
    }
}
