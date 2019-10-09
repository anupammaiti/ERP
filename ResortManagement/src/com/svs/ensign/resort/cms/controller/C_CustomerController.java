package com.svs.ensign.resort.cms.controller;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.svs.ensign.resort.bean.TeleAgentPercentageDetails;
import com.svs.ensign.resort.cms.bean.CustomerBean;
import com.svs.ensign.resort.cms.bean.GuestUserBean;
import com.svs.ensign.resort.cms.service.IN_CustormerService;
import com.svs.ensign.resort.helper.C_ResortHelper;
import com.svs.ensign.resort.util.AppTrack;
import com.svs.ensign.resort.validation.GuestUserValidation;
import net.sf.json.JSONObject;

/**
 *
 * @author ravi
 *
 * CustomerController.
 */

/*@Configuration
@PropertySource("messages.properties")*/
@Controller
public class C_CustomerController {

    @Autowired
    IN_CustormerService in_customerservice; // Injected the CustomerInterface . 
    @Autowired
    C_ResortHelper resorthelper; // Inject the Helper Class.
    @Autowired
    MessageSource msgsource;

    private boolean insertorupdate;
    private HttpSession httpsession;

    //Messages from Properties file messages.properties.
    @Value("${resort.success}")
    String successmsg;
    @Value("${resort.update}")
    String updatesuccess;
    @Value("${1.01}")
    String emptylogin;
    //Validation Classes Declaration Starts

    @Autowired
    GuestUserValidation val_guest;
    JSONObject respObj = new JSONObject();

    //Validation Class Declaration Ends
    /**
     *
     * @return guest_user_home.jsp
     */
    /*@Value("${msg.update1}")private String updatesuccess;*/
    @RequestMapping(value = "guest_user_home.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewGuestUser() {
        /*//System.out.println("Update Msg\t"+updatesuccess);*/
        AppTrack.info("::viewGuestUser::");
        return "guest_user_home";
    }

    /**
     *
     * @param model generate GuestUserBean Object
     * @return guest_user_form.jsp
     */
    @RequestMapping(value = "guest_user_form.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatingGuestUser(ModelMap model) {
        AppTrack.info("::generatingGuestUser::");
        model.addAttribute(new GuestUserBean());

        return "guest_user_form";
    }

    /**
     * Saving Guest User.
     *
     * @param guestuser Getting the data.
     * @return sending the data to service layer.
     */
    @RequestMapping(value = "save_guest_user.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatedGuestUser(@ModelAttribute GuestUserBean guestuser, BindingResult errors, HttpServletResponse response, HttpServletRequest request, ModelMap model) {
        AppTrack.info("::generatedGuestUser::");
        val_guest.validate(guestuser, errors);
        if (errors.hasErrors()) {
            AppTrack.debug("Guest form validation ::  errors");
            return "guest_user_form";
        } else {
            AppTrack.debug("Guest form validation :: no errors");
            try {
                insertorupdate = in_customerservice.createGuestUser(guestuser);
                if (insertorupdate) {
                    AppTrack.debug("Guest form insert:: successful");
                    //System.out.println("Message is:\t"+successmsg);
                    request.getSession().setAttribute("successmsg", "Record Inserted Successfully");
                } else {
                    AppTrack.debug("Guest form insert :: fail");
                    request.getSession().setAttribute("failure", emptylogin);
                }
            } catch (Exception e) {
                AppTrack.error("Exception in guest form insertion", e);
//                e.printStackTrace();
            }

            return "redirect:guest_user_form.res";
        }

    }

    @RequestMapping(value = "view_layoout_by_guest.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewLayOutByGuest(ModelMap model) {
        AppTrack.info("::viewLayOutByGuest::");
        return "view_layoout_by_guest";
    }

    /**
     *
     * @param request Sending
     * @param response Sending the GuestId to the JQuery file.
     */
    @RequestMapping(value = "guestuser_id.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateGuestUserId(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        int counter = 0;
        String userid = null;

        try {
            AppTrack.info("::generateGuestUserId::");
            PrintWriter out = response.getWriter();
            AppTrack.debug("::guest user id is::" + resorthelper.generateGuestId());
            out.print(resorthelper.generateGuestId());

            response.setContentType("plian/text");
        } catch (Exception e) {
//            e.printStackTrace();
            AppTrack.error("Exception in generateGuestUserId:: ", e);
        }
    }

    /**
     *
     * @param request Set attribute and send data to jsp file.
     * @return Send them to customer_details_view.
     */
    @RequestMapping(value = "customer_details_view.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewCustomer(HttpServletRequest request) {
        return "customer_details_view";
    }

    @RequestMapping(value = "customer_details_GridList.res", method = {RequestMethod.GET, RequestMethod.POST})
    public @ResponseBody
    String viewCustomerGrid(HttpServletRequest request) {
        try {
            AppTrack.info(":: view Customer For Grid::");
            respObj = in_customerservice.viewCustomer();
//            request.setAttribute("customerList", in_customerservice.viewCustomer());
        } catch (Exception e) {
            // TODO Auto-generated catch block
            AppTrack.error("::Exception in viewCustomer::", e);
//            e.printStackTrace();
        }
        return respObj.toString();
    }

    @RequestMapping(value = "view_guestby_tele_director.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewGuestByDirector(HttpServletRequest request) {
        try {
            request.setAttribute("guestbyteledirectorlist", in_customerservice.viewGuestByTeleDirector());
        } catch (Exception e) {
            // TODO Auto-generated catch block
            AppTrack.error(":: Exception in viewGuestByDirector :: ", e);
            e.printStackTrace();
        }
        return "view_guestby_tele_director";
    }

    @RequestMapping(value = "update_guest_by_tele_director.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewGuestByTeleDirector(@RequestParam(value = "id") String guestid, ModelMap model, HttpServletRequest request) {
        //String guestid=request.getParameter("id");
        try {
            AppTrack.info("::viewGuestByTeleDirector::");
            model.addAttribute(new GuestUserBean());
            request.setAttribute("guestuserlist", in_customerservice.viewGuestByTeleDirectorById(guestid));

        } catch (Exception e) {
            // TODO Auto-generated catch block
            AppTrack.error("Exception in viewGuestByTeleDirector", e);
//            e.printStackTrace();
        }
        return "update_guest_by_tele_director";
    }

    @RequestMapping(value = "updateGuestByDirectorUser.res", method = {RequestMethod.GET, RequestMethod.POST})
    public @ResponseBody
    String updateGuestUser(@RequestParam(value = "guestid") String guestid, @ModelAttribute GuestUserBean guestuser, HttpServletRequest request) {
        try {
            AppTrack.info("::updateGuestUser::");
            //System.out.println("Hello");
            //String guestid=request.getParameter("guestid");
            //System.out.println("Hello"+guestid);
            guestuser.setGuestid(Long.parseLong(guestid));
            insertorupdate = in_customerservice.updateGuestUser(guestuser);
            if (insertorupdate) {
                AppTrack.debug("::Updating Guest user:::");
            }

        } catch (NumberFormatException e) {
            // TODO Auto-generated catch block
            AppTrack.error("Exception in updateGuestUser", e);
//            e.printStackTrace();
        }
        return "redirect:view_guestby_tele_director.res";
    }

    @RequestMapping(value = "view_guest_by_tele_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewGuestByManager(ModelMap model, HttpServletRequest request, HttpServletResponse response) {
        //request.setAttribute("guestListBy", );
        try {
            HttpSession httpsession = request.getSession();
            String username = null;
            String designation = null;
            username = (String) httpsession.getAttribute("username");
            AppTrack.info("::view GuestByManager::");
            //System.out.println("User Designation"+username);
            //designation=in_customerservice.checkForDesignation(username);
            //System.out.println("Designation"+designation);
            request.setAttribute("guestbymanager", in_customerservice.viewGuestByTeleManager(username));
        } catch (Exception e) {
            // TODO Auto-generated catch block
            AppTrack.error("Exception in viewGuestByManager", e);
            e.printStackTrace();
        }
        return "view_guest_by_tele_manager";
    }

    @RequestMapping(value = "update_guest_by_tele_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewGuestByTeleManger(ModelMap model, HttpServletRequest request) {
        try {
            AppTrack.info("::viewGuestByTeleManager::");
            String guestid = request.getParameter("id");
            //System.out.println("Id Is:\t"+guestid);
            model.addAttribute(new GuestUserBean());
            request.setAttribute("guestuserlist", in_customerservice.viewGuestByTeleDirectorById(guestid));
        } catch (Exception e) {
            // TODO Auto-generated catch block
            AppTrack.error("Exception in viewGuestByTeleManger", e);
//            e.printStackTrace();
        }
        return "update_by_tele_manager";
    }

    @RequestMapping(value = "updateGuestByTeleManager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateGuestByTeleManager(@ModelAttribute GuestUserBean guestuser, HttpServletRequest request) {
        try {
            AppTrack.info("::updateGuestByTeleManager::");
            //System.out.println("Hello");
            String guestid = request.getParameter("guestid");
            //System.out.println("Hello"+guestid);
            guestuser.setGuestid(Long.parseLong(guestid));
            in_customerservice.updateGuestUser(guestuser);
        } catch (NumberFormatException e) {
            // TODO Auto-generated catch block
            AppTrack.error("Exception in updateGuestByTeleManager", e);
//            e.printStackTrace();
        }
        return "redirect:view_guest_by_tele_manager.res";
    }

    @RequestMapping(value = "guest_users_by_telecaller.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewGuestUsers(HttpServletRequest request) {
        try {
            HttpSession httpsession = request.getSession();
            String username = httpsession.getAttribute("username").toString();
            AppTrack.info("::viewGuestUsers::");
            //System.out.println("Username"+username);
            respObj = in_customerservice.viewGuestByTeleCaller(username);
            //System.out.println("Guest user"+guestlist.size());
            request.setAttribute("GUBList", respObj);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            AppTrack.error("::Exception in vuewGuestUsers::", e);
//            e.printStackTrace();
        }
        return "guest_users_by_telecaller";
    }

    @RequestMapping(value = "update_guest_by_tele_caller.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewGuestByTeleCaller(ModelMap model, HttpServletRequest request, @RequestParam(value = "id") String guestid) {
        //String guestid=request.getParameter("id");
        try {
            AppTrack.info("::viewGuestByTeleCaller::");
            //System.out.println("Id Is:\t"+guestid);
            model.addAttribute(new GuestUserBean());
            request.setAttribute("guestuserlist", in_customerservice.viewGuestByTeleDirectorById(guestid));
        } catch (Exception e) {
            // TODO Auto-generated catch block
//            e.printStackTrace();
            AppTrack.error("::Exception in viewGuestByTeleCaller::", e);
        }
        return "update_guest_by_tele_caller";
    }

    @RequestMapping(value = "updateGuestByTeleCaller.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateGuestByTeleCaller(@ModelAttribute GuestUserBean guestuser, HttpServletRequest request) {
        try {
            AppTrack.info("::updateGuestByTeleCaller::");
            //System.out.println("Hello");
            String guestid = request.getParameter("guestid");
            //System.out.println("Hello"+guestid);
            guestuser.setGuestid(Long.parseLong(guestid));
            in_customerservice.updateGuestUser(guestuser);
        } catch (NumberFormatException e) {
            // TODO Auto-generated catch block
            AppTrack.error("Exception in updateGuestByTeleCaller:: ", e);
//            e.printStackTrace();
        }
        return "redirect:guest_users_by_telecaller.res";
    }

    @RequestMapping(value = "tele_caller_guest_form.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createTeleCallerGuestUser(ModelMap model) {
        AppTrack.info("::createTeleCallerGuestUser::");
        model.addAttribute(new GuestUserBean());
        return "tele_caller_guest_form";
    }

    @RequestMapping(value = "guest_request_for_calls.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createRequestForCall(HttpServletRequest request) {
        try {
            AppTrack.info("::createRequestForCall::");
            HttpSession httpsession = request.getSession();
            String username = httpsession.getAttribute("username").toString();
            //System.out.println("Username Is"+username);
            request.setAttribute("RequestCallerList", in_customerservice.viewGuestRequestCalls(username));
        } catch (Exception e) {
            // TODO Auto-generated catch block
            AppTrack.error("::Exception in createRequestForCall::", e);
//            e.printStackTrace();
        }
        return "guest_request_for_calls";
    }

    @RequestMapping(value = "update_request_call.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateTeleCallerGuestCallReq(ModelMap model, HttpServletRequest request) {
        try {
            AppTrack.info(":: updateTeleCallerGuestCallReq::");
            model.addAttribute(new GuestUserBean());
            String id = request.getParameter("id");

            request.setAttribute("UpdateRequestCall", in_customerservice.viewGuestByTeleDirectorById(id));
        } catch (Exception e) {
            // TODO Auto-generated catch block
            AppTrack.error(":: Exception in updateTeleCallerGuestCallReq:: ", e);
            e.printStackTrace();
        }
        return "update_request_call";
    }

    @RequestMapping(value = "updated_request_call.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updatedTeleCallerGuestCallReq(@ModelAttribute GuestUserBean guestuser, HttpServletRequest request) {
        try {
            AppTrack.info("::updatedTeleCallerGuestCallReq ::");
            long id = Long.parseLong(request.getParameter("id"));

            in_customerservice.updateGuestRequestCalls(guestuser, id);
        } catch (NumberFormatException e) {
            // TODO Auto-generated catch block
            AppTrack.error("Exception in updatedTeleCallerGuestCallReq ", e);
            e.printStackTrace();
        }
        return "redirect:update_request_call.res";
    }

    @RequestMapping(value = "view_guest_by_agent.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewGuestByAgent(HttpServletRequest request) {

        try {
            AppTrack.info("::viewGuestByAgent ::");
            HttpSession httpsession = request.getSession();

            String agen_name = (String) httpsession.getAttribute("username");
            //System.out.println("Agent Id"+agen_name);
            request.setAttribute("GuestByAgent", in_customerservice.viewGuestByAgent(agen_name));
        } catch (Exception e) {
            // TODO Auto-generated catch block
            AppTrack.error("::Exception in viewGuestByAgent::", e);
//            e.printStackTrace();
        }
        return "view_guest_by_agent";
    }

    @RequestMapping(value = "delete_guest_user.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String deleteGuestUser(@ModelAttribute GuestUserBean guestuser, HttpServletRequest request) {
        try {
            AppTrack.info("::deleteGuestUser ::");
            long id = Long.parseLong(request.getParameter("id"));
            //System.out.println("Guest User ");
            in_customerservice.deleteGuestUser(id);
        } catch (NumberFormatException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            AppTrack.error(":: deleteGuestUser:: ", e);
        }
        return "redirect:update_request_call.res";
    }

    @RequestMapping(value = "guest_alloted_users.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewAllotedGuest(HttpServletRequest request) {
        AppTrack.info("::viewAllotedGuest::");
        return "guest_alloted_users";
    }
    @RequestMapping(value = "guest_alloted_usersGrid.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewAllotedGuestGrid(HttpServletRequest request) {
        AppTrack.info("::viewAllotedGuest::");
         respObj=in_customerservice.viewAllotedGuestUser();
        return respObj.toString();
    }

    @RequestMapping(value = "guest_conform_to_customer.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String convertingGuestToCustomer(HttpServletRequest request) {
        //request.getSession().getAttribute("username");
        try {
            AppTrack.info("::convertingGuestToCustomer::");
            long guestid = Long.parseLong(request.getParameter("id"));

            //System.out.println("Conformation");
            insertorupdate = in_customerservice.updateGuestToCustomer(guestid);
            if (insertorupdate) {
                request.getSession().setAttribute("updatemsg", updatesuccess);
            }
        } catch (NumberFormatException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            AppTrack.error("Exception in convertingGuestToCustomer::", e);
        }
        return "redirect:guest_users_by_telecaller.res";
    }

    @RequestMapping(value = "guest_to_customer_list.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String convertedGuestToCustomer(HttpServletRequest request) {
        //request.getSession().getAttribute("username");
        try {
            AppTrack.info("::convertedGuestToCustomer::");
            request.setAttribute("CGList", in_customerservice.viewConvertedGuestToCustomer());
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            AppTrack.error("::Exception in convertedGuestToCustomer::", e);
        }
        return "guest_to_customer_list";
    }

    @RequestMapping(value = "view_guest_users.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewAllGuestUsers(HttpServletRequest request) {
        //request.getSession().getAttribute("username");
        try {
            AppTrack.info("::viewAllGuestUsers::");
            request.setAttribute("AllGuestUsers", in_customerservice.viewGuestUser());
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            AppTrack.error("::Exception in viewAllGuestUsers::", e);
        }
        return "guest_users_by_admin";
    }

    //////////////////////////////////////////////////Customer  Starts////////////////////////////////////////////////// 
    /**
     *
     * @param model Setting CustomerBean Object.
     * @return to customer_form.jsp file.
     */
    @RequestMapping(value = "customer_form.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatingCustomer(ModelMap model, HttpServletRequest request, @RequestParam(value = "id") long guestid) {
        request.setAttribute("guest_list", in_customerservice.viewGuestById(guestid));
        model.addAttribute(new CustomerBean());

        return "customer_form";
    }

    /**
     *
     * @param customerbean
     * @return Sending data to service layer and return customer_form file.
     */
    @RequestMapping(value = "save_customer_form.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatedCustomer(@ModelAttribute CustomerBean customerbean, HttpServletRequest request) {
        try {
            AppTrack.info(":: generatedCustomer::");
            //System.out.println("Hai");
            String username = (String) request.getSession().getAttribute("username");
            long id = Long.parseLong(request.getParameter("id"));
            String manager = request.getParameter("manager");
            String department = request.getParameter("dept");

            customerbean.setManager(manager);
            customerbean.setDepartment(department);

            insertorupdate = in_customerservice.generateCustomer(customerbean, username, id);
            if (insertorupdate) {
                AppTrack.debug("Exception in generatedCustomer");
                request.getSession().setAttribute("successmsg", successmsg);
            }
        } catch (NumberFormatException e) {
            // TODO Auto-generated catch block
            AppTrack.error("::Exception in generatedCustomer:: ", e);
            e.printStackTrace();
        }
        return "redirect:guest_conform_to_customer.res";
    }

    @RequestMapping(value = "view_customer_details_list.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewCustomer(ModelMap model, HttpServletRequest request) {
        AppTrack.info("::viewCustomer::");
        request.setAttribute("customerlist", in_customerservice.viewCustomer());

        return "view_customer_details";
    }

    @RequestMapping(value = "view_customer_by_sales_executive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewCustomerBySalesExecutive(ModelMap model, HttpServletRequest request) {
        try {
            AppTrack.info("::viewCustomerBySalesExecutive::");
            String username = (String) request.getSession().getAttribute("username");
            //System.out.println("UserName"+username);
            request.setAttribute("customerlist", in_customerservice.viewCustomerByCustID(username));
        } catch (Exception e) {
            // TODO Auto-generated catch block
            AppTrack.error(":: Exception in viewCustomerBySalesExecutive ::", e);
//            e.printStackTrace();
        }

        return "view_customer_by_sales_executive";
    }

    @RequestMapping(value = "view_customer_by_sales_director.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewCustomerBySalesDirector(ModelMap model, HttpServletRequest request) {
        AppTrack.info("::viewCustomerBySalesDirector::");
        request.setAttribute("customerlist", in_customerservice.viewCustomer());

        return "view_customer_by_sl_director";
    }

    @RequestMapping(value = "view_customer_by_sales_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewCustomerBySalesManager(ModelMap model, HttpServletRequest request) {
        try {
            AppTrack.info("::viewCustomerBySalesManager::");
            String username = (String) request.getSession().getAttribute("username");
            request.setAttribute("customerlist", in_customerservice.viewCustomerBySalesManagerID(username));
        } catch (Exception e) {
            // TODO Auto-generated catch block
            AppTrack.error("Exception in viewCustomerBySalesManager::", e);
            e.printStackTrace();
        }
        return "view_customer_by_sl_manager";
    }

    @RequestMapping(value = "sl_allot_customer_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String allotCustomerBySLManager(ModelMap model, HttpServletRequest request, @RequestParam(value = "id") long id) {
        try {
            AppTrack.info("::allotCustomerBySLManager::");
            //System.out.println("sno is\t"+id);
            request.setAttribute("customerlist", in_customerservice.viewCustomerById(id));
            model.addAttribute(new CustomerBean());
        } catch (Exception e) {
            AppTrack.error("::allotCustomerBySLManager::", e);
            // TODO Auto-generated catch block
//            e.printStackTrace();
        }
        return "sl_allot_customer_by_manager";
    }

    @RequestMapping(value = "sl_update_allot_customer_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateAllotCustomerBySLManager(@ModelAttribute CustomerBean customerbean, HttpServletRequest request) {

        try {
            AppTrack.info("::updateAllotCustomerBySLManager::");
            insertorupdate = in_customerservice.updateCustomerAllotment(customerbean);
            if (insertorupdate) {
                AppTrack.debug("::Alloting Customer by Sales Manager :: Successfully");
                request.getSession().setAttribute("updatesuccess", updatesuccess);
            } else {
                AppTrack.debug("::Unable to Allot Customer by SL Manager::");
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            AppTrack.error("::Exception in updateAllotCustomerBySLManager::", e);
//            e.printStackTrace();
        }
        return "redirect:view_customer_by_sales_manager.res";
    }

    @RequestMapping(value = "view_customer_by_finance_director.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewCustomerByFinanceDirector(ModelMap model, HttpServletRequest request) {

        try {
            AppTrack.info("::viewCustomerByFinanceDirector::");
            request.setAttribute("customerlist", in_customerservice.viewCustomer());
        } catch (Exception e) {
            AppTrack.error("Exception in viewCustomerByFinanceDirector::", e);
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return "view_customer_details_by_fn_director";
    }

    @RequestMapping(value = "view_customer_by_tele_director.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewCustomerByTeleDirector(ModelMap model, HttpServletRequest request) {

        try {
            AppTrack.info("::viewCustomerByTeleDirector::");
            request.setAttribute("customerlist", in_customerservice.viewCustomer());
        } catch (Exception e) {
            // TODO Auto-generated catch block
            AppTrack.error("::Exception in viewCustomerByTeleDirector::", e);
//            e.printStackTrace();
        }

        return "tele_view_customer_by_director";
    }

    @RequestMapping(value = "view_customer_by_tele_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewCustomerByTeleManager(ModelMap model, HttpServletRequest request) {
        try {
            AppTrack.info("::viewCustomerByTeleManager::");
            String username = (String) request.getSession().getAttribute("username");
            //System.out.println("Manager User Name"+username);
            request.setAttribute("customerbymanager", in_customerservice.viewCustomerByManagerID(username));
        } catch (Exception e) {
            // TODO Auto-generated catch block
            AppTrack.error("::Exception in viewCustomerByTeleManager::", e);
//            e.printStackTrace();
        }

        return "tele_view_customer_by_manager";
    }

    @RequestMapping(value = "allot_customer_by_admin.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String allotingCustomerByAdmin(ModelMap model, HttpServletRequest request) {
        try {
            AppTrack.info("::allotingCustomerByAdmin::");
//            request.setAttribute("customerList", in_customerservice.viewCustomer());
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            AppTrack.error("Exception in allotingCustomerByAdmin::", e);
        }
        return "sl_cust_alloted_by_admin";
    }
    @RequestMapping(value = "allot_customer_by_adminGrid.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String allotingCustomerByAdminGrid(ModelMap model, HttpServletRequest request) {
        try {
            AppTrack.info("::allotingCustomerByAdmin::");
//            request.setAttribute("customerList", in_customerservice.viewCustomer());
            respObj=in_customerservice.viewCustomer();
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            AppTrack.error("Exception in allotingCustomerByAdmin::", e);
        }
        return respObj.toString();
    }

    @RequestMapping(value = "cust_allot_manager_by_admin.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewCustomerById(HttpServletRequest request, @RequestParam("id") long id, ModelMap model) {
        try {
            AppTrack.info("::viewCustomerById::");
            model.addAttribute(new CustomerBean());
            request.setAttribute("allotingcustomer", in_customerservice.viewCustomerById(id));
        } catch (Exception e) {
            AppTrack.error("Exception in viewCustomerById::", e);
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return "cust_allot_manager_by_admin";
    }

    @RequestMapping(value = "alloting_sl_manager_to_customer.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String allotingManagerToCustomer(@ModelAttribute CustomerBean custbean, HttpServletRequest request) {
        try {
            AppTrack.info("::allotingManagerToCustomer::");
            insertorupdate = in_customerservice.allotingSLManagerToCustomer(custbean);
            if (insertorupdate) {
                AppTrack.debug("allotingManagerToCustomer :: Successfull");
                request.getSession().setAttribute("updatemsg", updatesuccess);
            }
        } catch (Exception e) {
            AppTrack.error("Exception in allotingManagerToCustomer::", e);
//            e.printStackTrace();
        }
        return "redirect:allot_customer_by_admin.res";
    }

    @RequestMapping(value = "allot_customer_by_sl_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewAllotedCustomerBySLManager(ModelMap model, HttpServletRequest request) {
        try {
            AppTrack.info("::viewAllotedCustomerBySLManager::");
            String username = (String) request.getSession().getAttribute("username");
            request.setAttribute("allotedCustomerList", in_customerservice.viewAllotedCustomerBySalesManager(username));
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            AppTrack.error("::Exception in viewAllotedCustomerBySLManager::", e);
        }
        return "view_allotted_customer_by_sl_manager";
    }

    @RequestMapping(value = "view_allot_customer_by_admin.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewAllotedCustomerByAdmin(ModelMap model, HttpServletRequest request) {
        return "cust_view_allotment_details_by_admin";
    }
 @RequestMapping(value = "view_allot_customer_by_adminGrid.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewAllotedCustomerByAdminGrid(ModelMap model, HttpServletRequest request) {
        try {
            AppTrack.info("::viewAllotedCustomerByAdminGrid::");
            String username = (String) request.getSession().getAttribute("username");
            respObj=in_customerservice.viewAllCustomerList();
//            request.setAttribute("allCustomerList", in_customerservice.viewAllCustomerList());
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            AppTrack.error("Exception in viewAllotedCustomerByAdmin::", e);
        }
        return respObj.toString();
    }
    @RequestMapping(value = "tel_agent_percentage_details.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateAgentBrowcher(ModelMap model) {
        AppTrack.info("::generateAgentBrowcher::");
        model.addAttribute(new TeleAgentPercentageDetails());

        return "tel_browcher_details";
    }

}
