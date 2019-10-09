package com.svs.ensign.resort.resources.reports;

import com.svs.ensign.resort.util.AppTrack;
import com.svs.ensign.resort.util.C_Util_Misleneous;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.HashMap;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperRunManager;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.svs.ensign.resort.util.ConvertStackTracetoString;

/**
 * C_FinanceReportController.java
 *
 * @author ravi
 *
 * This class will have Reports of Finance.
 *
 */
@Controller
public class C_FinanceReportController {

    @Autowired
    DataSource ds;
    @Value("${logo.folder}")
    String logofolder;
    String imagename = "svs_logo.gif";
    @Autowired
    ConvertStackTracetoString util_stos;
    final static Logger logger = Logger.getLogger(C_FinanceReportController.class.getName());

    //Invoice Report.
    @RequestMapping(value = "rep_fn_invoice_by_admin.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateWebReport(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_invoice.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());

        } catch (Exception ex) {
            AppTrack.error("Error in generateWebReport", ex);

        }
    }

    //Invoice Report.
    @RequestMapping(value = "rep_fn_invoice_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateInvoiceReportByManager(HttpServletRequest request, HttpServletResponse response, ModelMap model
    ) throws ServletException {
        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_invoice_by_executive1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            //System.out.println("Department\t"+request.getParameter("department1"));
            parameters.put("department", request.getParameter("department1"));
            //System.out.println("Manager\t"+request.getParameter("manager"));
            parameters.put("manager", request.getParameter("manager"));
            /*//System.out.println("Delt By\t"+request.getParameter("deltby"));
             parameters.put("deltby", request.getParameter("deltby"));
             //System.out.println("Customer Name\t"+request.getParameter("custname"));
             parameters.put("custname", request.getParameter("custname"));
			
             parameters.put("fromdate", request.getParameter("fromdate"));
             parameters.put("todate", request.getParameter("todate"));*/
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

    //Auto TravelExpenses By Expenses
    @RequestMapping(value = "rep_fn_auto_expenses_travel_by_executive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateReportAutoExpensesTravelByExecutive(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            long id = Long.parseLong(request.getParameter("sno"));
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_daily_auto_expensives_by_executive.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("sno", id);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

    //AutoTravelExpenses By Admin
    @RequestMapping(value = "rep_fn_auto_expenses_travel_by_admin.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateReportAutoExpensesTravelByAdmin(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_daily_auto_expensives_by_admin.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            String department = "Finance";
            parameters.put("department", department);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

    //AutoTravelExpenses By Manager
    @RequestMapping(value = "rep_fn_auto_expenses_travel_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateReportAutoExpensesTravelByManager(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_daily_auto_expensives_by_manager.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("manager", request.getParameter("manager"));
            //System.out.println("Parameter1\t"+request.getParameter("manager"));
            parameters.put("empname", request.getParameter("empname"));
            //System.out.println("Parameter3\t"+request.getParameter("empname"));
            parameters.put("location", request.getParameter("location"));
            //System.out.println("Parameter4"+request.getParameter("location"));
            parameters.put("fromdate", request.getParameter("fromdate"));
            //System.out.println("From Date\t"+request.getParameter("fromdate"));
            parameters.put("todate", request.getParameter("todate"));
            //System.out.println("To Date\t"+request.getParameter("todate"));
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);

            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

    //AutoTravelExpenses By Manager
    @RequestMapping(value = "rep_fn_phone_bill_exp_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateReportPhoneBillExpByManager(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_phone_bill_exp.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", request.getParameter("manager"));//Manager Name.
            //System.out.println("Manager\t"+request.getParameter("manager"));
            parameters.put("companyname", request.getParameter("department1"));//Department Details.
            //System.out.println("Company Name\t"+request.getParameter("department1"));
            parameters.put("provider", request.getParameter("provider"));
            //System.out.println("Provider"+request.getParameter("provider"));
            parameters.put("approvedby", request.getParameter("phno"));//Phone No.
            //System.out.println("Approved By\t"+request.getParameter("phno"));
            parameters.put("fromdate", request.getParameter("fromdate"));
            parameters.put("todate", request.getParameter("todate"));
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());

        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

//Phone Bill Expenses By Executive  
    @RequestMapping(value = "rep_viewPhoneBillExpensesByExecutive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generatePhoneBillExpensesByExecutive(HttpServletRequest request, HttpServletResponse response) {
        try {

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_phone_bill_by_executive.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("sno", Long.parseLong(request.getParameter("sno")));
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }
    //Food Expenses By Executive  

    @RequestMapping(value = "rep_fn_food_exp_by_executive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateFoodExpensesByExecutive(HttpServletRequest request, HttpServletResponse response,
            ModelMap model) throws ServletException {
        try {

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_food_exp1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("empname", request.getParameter("empname"));
            parameters.put("gendate", request.getParameter("fromdate"));
            parameters.put("todate", request.getParameter("todate"));
            parameters.put("phoneno", request.getParameter("phoneno"));
            parameters.put("companyname", request.getParameter("manager"));
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

    //Hotel Expenses By Executive
    @RequestMapping(value = "rep_fn_hotel_exp_by_executive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateHotelExpensesByExecutive(HttpServletRequest request, HttpServletResponse response,
            ModelMap model) throws ServletException {
        try {

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_hotelexp_by_executive.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("sno", Long.parseLong(request.getParameter("sno")));
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }
    //EntertainmentExpenses

    @RequestMapping(value = "rep_fn_entertainment_exp_by_executive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateEntertainmentExpenses(HttpServletRequest request, HttpServletResponse response
    ) {

        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_entertainment_exp_by_executive.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("sno", Long.parseLong(request.getParameter("sno")));
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }

    }
    //Miselinious Expenses By Executive.

    @RequestMapping(value = "rep_fn_mis_exp_by_executive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateMisleneousExpensesByExecutive(HttpServletRequest request, HttpServletResponse response
    ) {

        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_misleneous_exp_by_executive.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("sno", Long.parseLong(request.getParameter("sno")));
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }

    }
    //rep_aging_of_account_payable_by_executive.jasper

    @RequestMapping(value = "rep_aging_of_account_payable_by_executive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateAgingOfAccountPayable(HttpServletRequest request, HttpServletResponse response
    ) {
        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_aging_of_account_payable_by_executive.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("sno", Long.parseLong(request.getParameter("sno")));
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

    //Reprort For Ledger Details.
    @RequestMapping(value = "rep_fn_food_exp_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateFoodExpensesByManagerReport(HttpServletRequest request, HttpServletResponse response,
            ModelMap model) throws ServletException {
        try {

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_food_exp1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("empname", request.getParameter("empname"));
            parameters.put("gendate", request.getParameter("fromdate"));
            parameters.put("todate", request.getParameter("todate"));
            parameters.put("phoneno", request.getParameter("phoneno"));
            parameters.put("companyname", request.getParameter("manager"));
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

    //Reprort For Ledger Details.
    @RequestMapping(value = "rep_fn_hotel_exp_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateHotelExpenByManagerReport(HttpServletRequest request, HttpServletResponse response,
            ModelMap model) throws ServletException {
        try {

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_hotelexp1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("empname", request.getParameter("empname"));
            parameters.put("gendate", request.getParameter("fromdate"));
            parameters.put("todate", request.getParameter("todate"));
            parameters.put("phoneno", request.getParameter("phoneno"));
            parameters.put("companyname", request.getParameter("manager"));
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

    //Reprort For Ledger Details.
    @RequestMapping(value = "rep_fn_entertainment_exp_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateEntertainmentExpenByManagerReport(HttpServletRequest request, HttpServletResponse response,
            ModelMap model) throws ServletException {
        try {

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_entertainmentexp1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("empname", request.getParameter("empname"));
            parameters.put("gendate", request.getParameter("fromdate"));
            parameters.put("todate", request.getParameter("todate"));
            parameters.put("phoneno", request.getParameter("phoneno"));
            parameters.put("companyname", request.getParameter("manager"));
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

    //Reprort For Ledger Details.
    @RequestMapping(value = "rep_fn_misleneous_exp_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateMisleneousExpenByManagerReport(HttpServletRequest request, HttpServletResponse response,
            ModelMap model) throws ServletException {
        try {

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_misleneous_exp1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("empname", request.getParameter("empname"));
            parameters.put("gendate", request.getParameter("fromdate"));
            parameters.put("todate", request.getParameter("todate"));
            parameters.put("phoneno", request.getParameter("phoneno"));
            parameters.put("companyname", request.getParameter("manager"));
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }
    //rep_nontradingexp1.jasper
    //Reprort For Ledger Details.

    @RequestMapping(value = "rep_fn_non_trading_exp_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateNonTradingExpenByManagerReport(HttpServletRequest request, HttpServletResponse response,
            ModelMap model) throws ServletException {
        try {

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_nontradingexp1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("empname", request.getParameter("empname"));
            parameters.put("gendate", request.getParameter("fromdate"));
            parameters.put("todate", request.getParameter("todate"));
            parameters.put("phoneno", request.getParameter("phoneno"));
            parameters.put("companyname", request.getParameter("manager"));
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }
    //Reprort For Ledger Details.

    @RequestMapping(value = "rep_fn_ledger_details_by_admin.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateLedgerDetailsReport(HttpServletRequest request, HttpServletResponse response,
            ModelMap model) throws ServletException {
        try {
            File logoimage = new File("svs_logo.gif");
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_ledger_detauls_by_admin.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            String path = logoimage.getAbsolutePath();
            //System.out.println("Path is"+path);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

    //Report For Ledger Details By Executive.
    @RequestMapping(value = "rep_fn_ledger_details_by_executive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateVoucherDetailsReport(HttpServletRequest request, HttpServletResponse response,
            ModelMap model) throws ServletException {
        try {
            File logoimage = new File("svs_logo.gif");
            String username = request.getSession().getAttribute("username").toString();
            //System.out.println("Username\t"+username);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_ledger_detauls_by_executive.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            String path = logoimage.getAbsolutePath();
            //System.out.println("Path is"+path);

            parameters.put("username", username);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

    //Report For Ledger Details By Manager.
    @RequestMapping(value = "rep_fn_ledger_details_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateLedgerDetailsReportForManager(HttpServletRequest request, HttpServletResponse response,
            ModelMap model) throws ServletException {
        try {
            File logoimage = new File("svs_logo.gif");
            String username = request.getSession().getAttribute("username").toString();
            //System.out.println("User Name\t"+username);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_ledger_detauls_by_manager.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            String path = logoimage.getAbsolutePath();
            //System.out.println("Path is"+path);
            parameters.put("logo", path);
            parameters.put("username", username);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

    @RequestMapping(value = "rep_group_details.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateGroupdDetails(HttpServletRequest request, HttpServletResponse response
    ) {

        try {

            String username = request.getSession().getAttribute("username").toString();
            //System.out.println("User Name\t"+username);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_ledger_detauls_by_manager.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("username", username);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

    //ClassLoader.getSystemResource("logo.jpg").getPath()
    @RequestMapping(value = "rep_sample1.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateSample1(HttpServletRequest request, HttpServletResponse response
    ) {

        try {

            //String username=request.getSession().getAttribute("username").toString();
            ////System.out.println("User Name\t"+username);
            //String logopath=ClassLoader.getSystemResource("svs_logo.gif").getPath();
            ////System.out.println("Logo\t"+this.getClass().getResourceAsStream("svs_logo.gif"));
            BufferedImage image = ImageIO.read(getClass().getResource("svs_logo.gif"));

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/sample1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            //parameters.put("username", username);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

    //ClassLoader.getSystemResource("logo.jpg").getPath()
    @RequestMapping(value = "rep_mng_voucher_reciept.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateMngVoucherReciept(HttpServletRequest request, HttpServletResponse response
    ) {

        try {

            //String username=request.getSession().getAttribute("username").toString();
            ////System.out.println("User Name\t"+username);
            //String logopath=ClassLoader.getSystemResource("svs_logo.gif").getPath();
            ////System.out.println("Logo\t"+this.getClass().getResourceAsStream("svs_logo.gif"));
            BufferedImage image = ImageIO.read(getClass().getResource("svs_logo.gif"));

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            //parameters.put("username", username);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

    /**
     * Finance Manager Reports .
     *
     */
    //ClassLoader.getSystemResource("logo.jpg").getPath()
    @RequestMapping(value = "rep_mng_ledger.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateLedgerReportByManager(HttpServletRequest request, HttpServletResponse response
    ) {

        try {

            String username = request.getSession().getAttribute("username").toString();
            System.out.println("User Name\t" + username);
            //String logopath=ClassLoader.getSystemResource("svs_logo.gif").getPath();
            ////System.out.println("Logo\t"+this.getClass().getResourceAsStream("svs_logo.gif"));
            //BufferedImage image=ImageIO.read(getClass().getResource("svs_logo.gif"));

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_ledger_detauls_by_manager.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("username", username);//Manager Name
            parameters.put("ledgername", request.getParameter("ledgername"));//Ledger Name
            parameters.put("deltby", request.getParameter("deltby"));//Executive Who generated The Ledger.
            parameters.put("leaddate", request.getParameter("leddate"));//Ledger Generated Date.
            parameters.put("imagePath", imagePath);
            //parameters.put("username", username);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

    //ClassLoader.getSystemResource("logo.jpg").getPath()
    @RequestMapping(value = "rep_mng_group.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateGroupReportByManager(HttpServletRequest request, HttpServletResponse response
    ) {

        try {

            String username = request.getSession().getAttribute("username").toString();
            System.out.println("User Name\t" + username);
            //String logopath=ClassLoader.getSystemResource("svs_logo.gif").getPath();
            ////System.out.println("Logo\t"+this.getClass().getResourceAsStream("svs_logo.gif"));
            //BufferedImage image=ImageIO.read(getClass().getResource("svs_logo.gif"));

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_fn_mng_groupdetails1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("manager", username);//Manager Name
            parameters.put("ledgername", request.getParameter("name"));//Group Name
            parameters.put("deltby", request.getParameter("deltby"));//Executive Who generated The Ledger.
            parameters.put("leaddate", request.getParameter("getdate"));//Ledger Generated Date.
            //parameters.put("manager", request.getParameter("reportingto"));
            parameters.put("imagePath", imagePath);
            //parameters.put("username", username);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

    //ClassLoader.getSystemResource("logo.jpg").getPath()
    @RequestMapping(value = "rep_mng_stk_group.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateStockGroupReportByManager(HttpServletRequest request, HttpServletResponse response
    ) {

        try {

            String username = request.getSession().getAttribute("username").toString();
            System.out.println("User Name\t" + username);
            //String logopath=ClassLoader.getSystemResource("svs_logo.gif").getPath();
            ////System.out.println("Logo\t"+this.getClass().getResourceAsStream("svs_logo.gif"));
            //BufferedImage image=ImageIO.read(getClass().getResource("svs_logo.gif"));

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_fn_mng_groupdetails1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("manager", username);//Manager Name
            parameters.put("ledgername", request.getParameter("name"));//Group Name
            parameters.put("deltby", request.getParameter("deltby"));//Executive Who generated The Ledger.
            parameters.put("leaddate", request.getParameter("getdate"));//Ledger Generated Date.
            //parameters.put("manager", request.getParameter("reportingto"));
            parameters.put("imagePath", imagePath);
            //parameters.put("username", username);
            C_Util_Misleneous.prepareReport(inputstream, response, parameters, ds.getConnection());
        } catch (Exception sqlex) {
            logger.error(util_stos.sendingErrorAsString(sqlex));

        }
    }

    /**
     * Fianance Director Reports.
     */
}
