package com.svs.finance.reports;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperRunManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.svs.finance.service.IN_FinanceService;
import com.svs.finance.util.AppLogger;

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
    
    @Value("${folder}")
    String imagePath;
    
    @Autowired
    DataSource ds;
    @Autowired
    ServletContext servletcontext;
    @Autowired
    IN_FinanceService in_financeservice;

    //Ledger Details
    @RequestMapping(value = "rep_fn_ledgerdetails.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateWebReport(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("ledgername") String ledgername,
            @RequestParam("login_comp") String companyname,
            @RequestParam("under") String under,
            @RequestParam("getdate") String gendate) throws ServletException {
        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            System.out.println("Company Name1\t" + companyname);
            System.out.println("Ledger Name\t" + ledgername);
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_fn_ledger_details1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("companyname", companyname);
            parameters.put("under", under);
            parameters.put("ondate", gendate);
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Group Details
    @RequestMapping(value = "rep_fn_groupdetails.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateGropupDetails(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            String groupname=request.getParameter("name");
            String companyname=request.getParameter("login_comp");
                    
            AppLogger.debug("Group Details\t" +groupname +"Comapny Name"+companyname);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_groupdetails.jasper");//Mapping jasper file to InputStream.

            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("groupname", groupname);
            parameters.put("companyname", companyname);
//            String image = in_financeservice.viewImagePathByCompanyName(companyname);
//            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
//            System.out.println("Image Path\t" + imagePath1);
//            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateGropupDetails", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateGropupDetails", ioe);
//            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            AppLogger.error("SQL Exception in generateGropupDetails", sqlex);
//            sqlex.printStackTrace();
        }
    }

    //Group Details
    @RequestMapping(value = "rep_fn_group.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateGropup(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        //System.out.println("Group Details");
        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            String companyname = request.getParameter("comp_name");
            System.out.println("Company Name\t" + companyname);
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_grouplist.jasper");//Mapping jasper file to InputStream.
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("companyname", companyname);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Invoice Details
    @RequestMapping(value = "rep_fn_invoice.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateInvoiceDetails(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("name") String invoiceid,
            @RequestParam("ondate") String ondate,
            @RequestParam("login_comp") String companyname,
            @RequestParam("deltby") String deltby) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_fn_invoice1.jasper");//Mapping jasper file to InputStream.
            System.out.println("DeltBy\t" + deltby);
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("itemname", invoiceid);
            parameters.put("fromdate", ondate);
            parameters.put("deltby", deltby);
            parameters.put("companyname", companyname);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Expenses
    //Auto Travel Expenses
    @RequestMapping(value = "rep_fn_travelexp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateAutoTravelExp(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("gendate") String gendate, @RequestParam("ledgername") String ledgername,
            @RequestParam("auditedby") String auditedby, @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_DailyTravelExp1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("date1", gendate);
            parameters.put("ledgername", ledgername);
            parameters.put("auditedby", auditedby);
            parameters.put("companyname", companyname);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        }catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }
//rep_phone_bill_exp.jasper				

    //Phone Bill Expenses
    @RequestMapping(value = "rep_fn_phonebillexp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generatePhoneBillExp(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("ledgername") String ledgername,
            @RequestParam("provider") String provider,
            @RequestParam("approvedby") String approvedby,
            @RequestParam("companyname") String companyname,
            @RequestParam("deltby") String deltby, @RequestParam("gendate") String gendate) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_phone_bill_exp1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("provider", provider);
            parameters.put("approvedby", approvedby);
            parameters.put("gendate", gendate);
            parameters.put("companyname", companyname);
            parameters.put("deltby", deltby);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Food Exp Expenses
    @RequestMapping(value = "rep_fn_foodexp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateFoodExp(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("gendate") String gendate, @RequestParam("ledgername") String ledgername,
            @RequestParam("empname") String empname, @RequestParam("phoneno") String phoneno,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_food_exp.jasper");//Mapping jasper file to InputStream.
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("gendate", gendate);
            parameters.put("ledgername", ledgername);
            parameters.put("companyname", companyname);
            parameters.put("empname", empname);
            parameters.put("phoneno", phoneno);
            parameters.put("imagePath", imagePath1);
            
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Food Exp Expenses
    @RequestMapping(value = "rep_fn_orfoodexp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateOrFoodExp(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("gendate") String gendate,
            @RequestParam("ledgername") String ledgername,
            @RequestParam("empname") String empname,
            @RequestParam("phoneno") String phoneno,
            @RequestParam("login_comp") String companyname,
            @RequestParam("deltby") String deltby) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_food_exp1.jasper");//Mapping jasper file to InputStream.
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("gendate", gendate);
            parameters.put("ledgername", ledgername);
            parameters.put("empname", empname);
            parameters.put("phoneno", phoneno);
            parameters.put("companyname", companyname);
            parameters.put("deltby", deltby);
            parameters.put("imagePath", imagePath1);
            
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        }catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Food Exp Expenses
    @RequestMapping(value = "rep_fn_hotelexp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateHotelExp(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("ledgername") String ledgername,
            @RequestParam("gendate") String gendate,
            @RequestParam("approvedby") String approvedby,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_hotelexp.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("gendate", gendate);
            parameters.put("approvedby", approvedby);
            parameters.put("companyname", companyname);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Food Exp Expenses
    @RequestMapping(value = "rep_fn_orhotelexp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateOrHotelExp(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("ledgername") String ledgername,
            @RequestParam("gendate") String gendate,
            @RequestParam("approvedby") String empname,
            @RequestParam("deltby") String deltby,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_hotelexp1.jasper");//Mapping jasper file to InputStream.
            System.out.println("Company Name\t" + companyname);
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("gendate", gendate);
            parameters.put("empname", empname);
            parameters.put("companyname", companyname);
            parameters.put("deltby", deltby);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Entertainment Exp Expenses
    @RequestMapping(value = "rep_fn_entertainment_exp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateEntertainmentExp(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("ledgername") String ledgername,
            @RequestParam("gendate") String gendate,
            @RequestParam("empname") String empname,
            @RequestParam("approvedby") String approvedby,
            @RequestParam("deltby") String deltby,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_entertainmentexp1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("gendate", gendate);
            parameters.put("empname", empname);
            parameters.put("companyname", companyname);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Entertainment Exp Expenses
    @RequestMapping(value = "rep_fn_orentertainment_exp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateOrEntertainmentExp(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("ledgername") String ledgername, @RequestParam("gendate") String gendate,
            @RequestParam("empname") String empname, @RequestParam("approvedby") String approvedby,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_entertainmentexp.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("gendate", gendate);
            parameters.put("empname", empname);
            parameters.put("approvedby", approvedby);
            parameters.put("companyname", companyname);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Mislineous Expenses
    @RequestMapping(value = "rep_fn_misleneous_exp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateMisleneousExp(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("ledgername") String ledgername, @RequestParam("approvedby") String approvedby,
            @RequestParam("empname") String empname, @RequestParam("gendate") String gendate,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_misleneous_exp.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("approvedby", approvedby);
            parameters.put("empname", empname);
            parameters.put("gendate", gendate);
            parameters.put("companyname", companyname);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        }catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Mislineous Expenses
    @RequestMapping(value = "rep_fn_ormisleneous_exp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateOrMisleneousExp(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("ledgername") String ledgername,
            @RequestParam("approvedby") String approvedby,
            @RequestParam("empname") String empname,
            @RequestParam("gendate") String gendate,
            @RequestParam("login_comp") String companyname,
            @RequestParam("deltby") String deltby) throws ServletException {
        try {
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_misleneous_exp1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("approvedby", approvedby);
            parameters.put("empname", empname);
            parameters.put("gendate", gendate);
            parameters.put("deltby", deltby);
            parameters.put("companyname", companyname);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Non Trading Expenses
    @RequestMapping(value = "rep_fn_notrading_exp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateNonTradingExp(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("ledgername") String ledgername, @RequestParam("gendate") String gendate,
            @RequestParam("itemname") String itemname, @RequestParam("approvedby") String approvedby,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_nontradingexp1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("gendate", gendate);
            parameters.put("itemname", itemname);
            parameters.put("approvedby", approvedby);
            parameters.put("companyname", companyname);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Non Trading Expenses
    @RequestMapping(value = "rep_fn_ornotrading_exp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateOrNonTradingExp(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("ledgername") String ledgername,
            @RequestParam("gendate") String gendate,
            @RequestParam("itemname") String itemname,
            @RequestParam("approvedby") String approvedby,
            @RequestParam("login_comp") String companyname,
            @RequestParam("deltby") String deltby) throws ServletException {
        try {
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_nontradingexp1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("gendate", gendate);
            parameters.put("itemname", itemname);
            parameters.put("approvedby", approvedby);
            parameters.put("companyname", companyname);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }
    //Internet Expenses1

    @RequestMapping(value = "rep_fn_internet_exp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateInternetExp(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_internetexp1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", request.getParameter("ledgername"));
            parameters.put("companyname", request.getParameter("companyname"));
            parameters.put("gendate", request.getParameter("gendate"));
            parameters.put("login_comp", request.getParameter("login_comp"));
            
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Internet Expenses1
    @RequestMapping(value = "rep_fn_orinternet_exp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateOrInternetExp(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            String companyname = request.getParameter("login_comp");
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_internetexp.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", request.getParameter("ledgername"));
            parameters.put("companyname", request.getParameter("companyname"));
            parameters.put("gendate", request.getParameter("gendate"));
            parameters.put("login_comp", request.getParameter("login_comp"));
            parameters.put("deltby", request.getParameter("deltby"));
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Advertisement Expenses
    @RequestMapping(value = "rep_fn_advertisement_exp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateAdvertisementExp(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("ledgername") String ledgername,
            @RequestParam("onissues") String onissue,
            @RequestParam("gendate") String gendate,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            System.out.println("Company Name1212121\t" + companyname);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_advertisementexp1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.

            parameters.put("ledgername", ledgername);
            parameters.put("onissue", onissue);
            parameters.put("gendate", gendate);
            parameters.put("companyname", companyname);
            
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Advertisement Expenses
    @RequestMapping(value = "rep_fn_oradvertisement_exp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateOrAdvertisementExp(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("ledgername") String ledgername,
            @RequestParam("onissues") String onissue,
            @RequestParam("gendate") String gendate,
            @RequestParam("login_comp") String companyname,
            @RequestParam("deltby") String deltby) throws ServletException {
        try {
            
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_advertisementexp.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("onissue", onissue);
            parameters.put("gendate", gendate);
            parameters.put("companyname", companyname);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Group Mapping
    @RequestMapping(value = "rep_fn_group_mapping.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateGroupMappingReport(HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestParam("comp_name") String companyname) throws ServletException {
        try {
            String path = null;
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_group_mapping.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("companyname", companyname);
            
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Voucher Type Details
    @RequestMapping(value = "rep_fn_voucher_type.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateVoucherTypeReport(HttpServletRequest request, HttpServletResponse response, ModelMap model, @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_voucher_type.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("companyname", companyname);
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Voucher Type Details
    @RequestMapping(value = "rep_fn_voucher_type_details.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateVoucherTypeDetailsReport(HttpServletRequest request, HttpServletResponse response,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            String name = request.getParameter("name");
            System.out.println("Voucher Name\t" + name);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_voucher_type_details.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.

            parameters.put("name", name);
            parameters.put("login_comp", companyname);
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Stock Group List
    @RequestMapping(value = "rep_fn_stock_group.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateStockGroupReport(HttpServletRequest request, HttpServletResponse response, @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_stock_group.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("companyname", companyname);
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Stock Group Details
    @RequestMapping(value = "rep_fn_stock_group_details.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateStockGroupDetailsReport(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_stock_group_details.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("name", request.getParameter("name"));
            
            parameters.put("companyname", request.getParameter("login_comp"));
            String image = in_financeservice.viewImagePathByCompanyName(request.getParameter("login_comp"));
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Stock Group Details
    @RequestMapping(value = "rep_fn_stock_item_details.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateStockItemDetailsReport(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_stock_item.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("name", request.getParameter("name"));
            parameters.put("gendate", request.getParameter("gendate"));
            parameters.put("under", request.getParameter("under"));
            parameters.put("companyname", request.getParameter("login_comp"));
            
            String image = in_financeservice.viewImagePathByCompanyName(request.getParameter("login_comp"));
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Office Expenses
    @RequestMapping(value = "rep_fn_office_exp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateOfficeExpReport(HttpServletRequest request, HttpServletResponse response,
            @RequestParam("ledgername") String ledgername, @RequestParam("itemname") String itemname,
            @RequestParam("gendate") String gendate,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_office_exp.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("gendate", gendate);
            parameters.put("itemname", itemname);
            parameters.put("companyname", companyname);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Office Expenses
    @RequestMapping(value = "rep_fn_oroffice_exp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateOrOfficeExpReport(HttpServletRequest request, HttpServletResponse response,
            @RequestParam("ledgername") String ledgername,
            @RequestParam("itemname") String itemname,
            @RequestParam("gendate") String gendate,
            @RequestParam("login_comp") String companyname,
            @RequestParam("deltby") String deltby) throws ServletException {
        try {
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_office_exp.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("gendate", gendate);
            parameters.put("itemname", itemname);
            parameters.put("companyname", companyname);
            parameters.put("deltby", deltby);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Repair Expenses
    @RequestMapping(value = "rep_fn_repair_exp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateRepairsExpReport(HttpServletRequest request, HttpServletResponse response,
            @RequestParam("ledgername") String ledgername, @RequestParam("itemname") String itemname,
            @RequestParam("gendate") String gendate,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_fn_repairsandmaintenance.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("gendate", gendate);
            parameters.put("itemname", itemname);
            parameters.put("companyname", companyname);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Repair Expenses
    @RequestMapping(value = "rep_fn_orrepair_exp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateorRepairsExpReport(HttpServletRequest request, HttpServletResponse response,
            @RequestParam("ledgername") String ledgername, @RequestParam("itemname") String itemname,
            @RequestParam("gendate") String gendate,
            @RequestParam("login_comp") String companyname) throws ServletException {
        System.out.println("Repair Maintenance");
        try {
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_fn_repairsandmaintenance1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("gendate", gendate);
            parameters.put("itemname", itemname);
            parameters.put("companyname", companyname);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Postage Expenses
    @RequestMapping(value = "rep_fn_postage_exp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generatePostageExpReport(HttpServletRequest request, HttpServletResponse response,
            @RequestParam("ledgername") String ledgername, @RequestParam("to_name") String to_name,
            @RequestParam("gendate") String gendate,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_postage_exp.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("gendate", gendate);
            parameters.put("toname", to_name);
            parameters.put("companyname", companyname);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Postage Expenses
    @RequestMapping(value = "rep_fn_orpostage_exp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateOrPostageExpReport(HttpServletRequest request, HttpServletResponse response,
            @RequestParam("ledgername") String ledgername, @RequestParam("to_name") String to_name,
            @RequestParam("gendate") String gendate,
            @RequestParam("login_comp") String companyname,
            @RequestParam("deltby") String deltby) throws ServletException {
        try {
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_postage_exp1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("gendate", gendate);
            parameters.put("toname", to_name);
            parameters.put("companyname", companyname);
            parameters.put("deltby", deltby);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Auto Travel Expenses
    @RequestMapping(value = "rep_fn_travelexp_individual.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateAutoTravelExpindIvidual(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("gendate") String gendate,
            @RequestParam("ledgername") String ledgername,
            @RequestParam("empname") String empname,
            @RequestParam("auditedby") String auditedby,
            @RequestParam("login_comp") String companyname,
            @RequestParam("deltby") String deltby) throws ServletException {
        try {
            
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_DailyTravelExp.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("date1", gendate);
            //System.out.println("Date\t"+gendate);
            parameters.put("ledgername", ledgername);
            //System.out.println("Ledger Name\t"+ledgername);
            parameters.put("empname", empname);
            //System.out.println("Audited By\t"+auditedby);
            parameters.put("auditedby", auditedby);
            //System.out.println("Company Name\t"+companyname);
            parameters.put("companyname", companyname);
            //System.out.println("Deltby\t"+deltby);
            parameters.put("deltby", deltby);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Phone Bill Expenses
    @RequestMapping(value = "rep_fn_orphonebillexp.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateOrPhoneBillExp(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("ledgername") String ledgername,
            @RequestParam("provider") String provider,
            @RequestParam("approvedby") String approvedby,
            @RequestParam("login_comp") String companyname,
            @RequestParam("deltby") String deltby) throws ServletException {
        try {
            System.out.println("Company Name\t" + companyname);
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_phone_bill_exp.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("provider", provider);
            parameters.put("approvedby", approvedby);
            parameters.put("companyname", companyname);
            //parameters.put("", deltby);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

//Voucher Types 
    //Voucher Recipt
    @RequestMapping(value = "rep_fn_voucher_recipt.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateVoucherRecipt(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("particulars") String particular,
            @RequestParam("date") String date,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_voucher_reciept.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", particular);
            parameters.put("date1", date);
            parameters.put("companyname", companyname);
            
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Voucher Recipt
    @RequestMapping(value = "rep_fn_orvoucher_recipt.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateOrVoucherRecipt(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("particulars") String particular,
            @RequestParam("date") String date,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_voucher_reciept1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", particular);
            parameters.put("date1", date);
            parameters.put("companyname", companyname);
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Voucher Payment
    @RequestMapping(value = "rep_fn_orvoucher_payment.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateOrVoucherPayment(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("particulars") String particular, @RequestParam("date") String date,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_voucher_payment1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("particulars", particular);
            parameters.put("gendate", date);
            parameters.put("companyname", companyname);
            
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Voucher Payment
    @RequestMapping(value = "rep_fn_voucher_payment.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateVoucherPayment(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("particulars") String particular, @RequestParam("date") String date,
            @RequestParam("companyname") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_voucher_payment.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("particulars", particular);
            parameters.put("date1", date);
            parameters.put("companyname", companyname);
            
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Voucher Journal
    @RequestMapping(value = "rep_fn_voucher_journal.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateVoucherJournal(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("particularby") String particularby, @RequestParam("date") String date,
            @RequestParam("nameofitem") String itemname, @RequestParam("particulars") String particulars,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_voucher_journal.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("particularby", particularby);
            parameters.put("date1", date);
            parameters.put("itemname", itemname);
            parameters.put("particulars", particulars);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Voucher JournalOR
    @RequestMapping(value = "rep_fn_orvoucher_journal.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateOrVoucherJournal(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("particularby") String particularby, @RequestParam("date") String date,
            @RequestParam("nameofitem") String itemname, @RequestParam("particulars") String particulars,
            @RequestParam("login_comp") String login_comp) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_voucher_journal1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("particularby", particularby);
            parameters.put("date", date);
            parameters.put("itemname", itemname);
            parameters.put("particulars", particulars);
            parameters.put("companyname", login_comp);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Voucher Purchase 
    @RequestMapping(value = "rep_fn_voucher_purchase.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateVoucherPurchase(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("purchaseledger") String puchaseledger, @RequestParam("date") String date,
            @RequestParam("nameofitems") String itemname,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_voucher_purchases1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("purchaseledger", puchaseledger);
            parameters.put("purchaseddate", date);
            parameters.put("itemname", itemname);
            parameters.put("companyname", companyname);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Voucher Purchase 
    @RequestMapping(value = "rep_fn_orvoucher_purchase.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateVoucherOrPurchase(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("purchaseledger") String puchaseledger, @RequestParam("date") String date,
            @RequestParam("nameofitems") String itemname, @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_voucher_purchases.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("purchaseledger", puchaseledger);
            parameters.put("purchaseddate", date);
            parameters.put("itemname", itemname);
            parameters.put("companyname", companyname);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Voucher Purchase Return 
    @RequestMapping(value = "rep_fn_purchase_returns.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateVoucherPurchaseReturns(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("purchaseledger") String puchaseledger, @RequestParam("date") String date,
            @RequestParam("nameofitem") String itemname, @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_voucher_purchase_return.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("purchaseledger", puchaseledger);
            parameters.put("date", date);
            parameters.put("nameofitem", itemname);
            parameters.put("companyname", companyname);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Voucher Purchase Return 
    @RequestMapping(value = "rep_fn_orpurchase_returns.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateVoucherOrPurchaseReturns(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("purchaseledger") String puchaseledger,
            @RequestParam("date") String date,
            @RequestParam("nameofitem") String itemname,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_voucher_purchase_return1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("purchaseledger", puchaseledger);
            parameters.put("date", date);
            parameters.put("nameofitem", itemname);
            parameters.put("companyname", companyname);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Voucher Sales 
    @RequestMapping(value = "rep_fn_sales.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateVoucherSales(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("salesledger") String puchaseledger, @RequestParam("date") String date,
            @RequestParam("nameofitem") String itemname,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_voucher_sales.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("purchaseledger", puchaseledger);
            parameters.put("purchaseddate", date);
            parameters.put("itemname", itemname);
            parameters.put("companyname", companyname);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Voucher Sales 
    @RequestMapping(value = "rep_fn_orsales.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateVoucherOrSales(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("salesledger") String puchaseledger, @RequestParam("date") String date,
            @RequestParam("nameofitem") String itemname,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_voucher_sales1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("salesledger", puchaseledger);
            parameters.put("date", date);
            parameters.put("nameofitem", itemname);
            parameters.put("companyname", companyname);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }
    //Sales Return	

    @RequestMapping(value = "rep_fn_salesreturn.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateVoucherSalesReturn(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("salesledger") String puchaseledger, @RequestParam("date") String date,
            @RequestParam("nameofitem") String itemname,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_voucher_sales_return.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("salesledger", puchaseledger);
            parameters.put("date", date);
            parameters.put("nameofitem", itemname);
            parameters.put("companyname", companyname);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Sales Return	
    @RequestMapping(value = "rep_fn_orsalesreturn.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateVoucherOrSalesReturn(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("salesledger") String puchaseledger, @RequestParam("date") String date,
            @RequestParam("nameofitem") String itemname, @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_voucher_sales_return1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("salesledger", puchaseledger);
            parameters.put("date", date);
            parameters.put("nameofitem", itemname);
            parameters.put("companyname", companyname);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Voucher Contra
    @RequestMapping(value = "rep_fn_vouchercontra.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateVoucherContra(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("particular") String puchaseledger, @RequestParam("gendate") String date,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_voucher_contra.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("particular", puchaseledger);
            parameters.put("date", date);
            parameters.put("companyname", companyname);
            
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Voucher Contra
    @RequestMapping(value = "rep_fn_orvouchercontra.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateOrVoucherContra(HttpServletRequest request, HttpServletResponse response, ModelMap model,
            @RequestParam("particular") String puchaseledger, @RequestParam("date") String date,
            @RequestParam("login_comp") String companyname) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_voucher_contra1.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("particular", puchaseledger);
            parameters.put("date", date);
            parameters.put("companyname", companyname);
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            parameters.put("imagePath", imagePath1);
            
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }
    
    public void generateCompanyRegistration(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_companyRegistration.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.

            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        }  catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Cash Distribution Journal	
    @RequestMapping(value = "rep_fn_cash_distribution_journal.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateCashDistributionJournal(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            String ledgername = request.getParameter("ledgerno");
            System.out.println("Ledgername");
            String fromdate = request.getParameter("fromdate");
            String todate = request.getParameter("todate");
            String companyname = request.getParameter("login_comp");
            String deltby = request.getParameter("deltby");
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_cash_distribution_journal.jasper");//Mapping jasper file to InputStream. 
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("fromdate", fromdate);
            parameters.put("todate", todate);
            parameters.put("companyname", companyname);
            parameters.put("deltby", deltby);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        }  catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Cash Reciept Journal	
    @RequestMapping(value = "rep_fn_cash_reciept_journal.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateCashRecieptJournal(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            String ledgername = request.getParameter("ledgerno");
            System.out.println("Ledgername");
            String fromdate = request.getParameter("fromdate");
            String todate = request.getParameter("todate");
            String companyname = request.getParameter("login_comp");
            String deltby = request.getParameter("deltby");
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_cashRecieptJournal.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("ledgername", ledgername);
            parameters.put("fromdate", fromdate);
            parameters.put("todate", todate);
            parameters.put("companyname", companyname);
            parameters.put("deltby", deltby);
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        }  catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Cash Reciept Journal	
    @RequestMapping(value = "rep_fn_daily_cash_report.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateDailyCashReport(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            
            String fromdate = request.getParameter("fromdate");
            String todate = request.getParameter("todate");
            String companyname = request.getParameter("login_comp");
            String deltby = request.getParameter("deltby");
            System.out.println("Company Namqwqwe\t" + companyname);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_dailyCashReport.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("fromdate", fromdate);
            parameters.put("todate", todate);
            parameters.put("companyname", companyname);
            parameters.put("deltby", deltby);
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        }  catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Cash Reciept Journal	
    @RequestMapping(value = "rep_fn_pettycashjournal.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generatePettyCashJournal(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            
            String fromdate = request.getParameter("fromdate");
            String todate = request.getParameter("todate");
            String companyname = request.getParameter("login_comp");
            String deltby = request.getParameter("deltby");
            
            System.out.println("Company Name\t" + companyname);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_petty_cash_jouranl.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("fromdate", fromdate);
            parameters.put("todate", todate);
            parameters.put("companyname", companyname);
            parameters.put("deltby", deltby);
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        }  catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }

    //Petty Cash Voucher
    @RequestMapping(value = "rep_fn_pettycashvoucher.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generatePettyCashVoucher(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            
            String fromdate = request.getParameter("fromdate");
            String todate = request.getParameter("todate");
            String companyname = request.getParameter("login_comp");
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_petty_cash_voucher.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("fromdate", fromdate);
            parameters.put("todate", todate);
            parameters.put("companyname", companyname);
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        }  catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }
    
    @RequestMapping(value = "rep_fn_aging_of_account_payable.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateAgingOfAccountPayable(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            
            String fromdate = request.getParameter("fromdate");
            String todate = request.getParameter("todate");
            String companyname = request.getParameter("login_comp");
            String deltby = request.getParameter("deltby");
            System.out.println("Company Name\t" + companyname);
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_aging_of_account_payable.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("fromdate", fromdate);
            parameters.put("todate", todate);
            parameters.put("companyname", companyname);
            parameters.put("deltby", deltby);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        }  catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }
    
    @RequestMapping(value = "rep_fn_aging_of_account_recivable.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateAgingOfAccountRecivable(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            
            String fromdate = request.getParameter("fromdate");
            String todate = request.getParameter("todate");
            String companyname = request.getParameter("login_comp");
            System.out.println("Company Name\t" + companyname);
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
            System.out.println("Image Path\t" + imagePath1);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_aging_of_account_recivable.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("fromdate", fromdate);
            parameters.put("todate", todate);
            parameters.put("companyname", companyname);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        }  catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }
    
    @RequestMapping(value = "rep_fn_employee_list.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateEmployeeList(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            AppLogger.info(":: generateEmployeeList::");
            String companyname = (String) request.getSession().getAttribute("compname");
            //System.out.println("Company Name1212\t"+(String)request.getSession().getAttribute("compname"));
            ServletOutputStream servletOutputStream = response.getOutputStream();
            String image = in_financeservice.viewImagePathByCompanyName(companyname);
            String imagePath1 = imagePath + image;//Merging(Concatinate) the Path and ImageName.
             AppLogger.debug("Image Path\t" + imagePath1);
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_employee_details.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("companyname", companyname);
            parameters.put("imagePath", imagePath1);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            AppLogger.error("Jasper Exception in generateEmployeeList", jre);
//            jre.printStackTrace();
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generateEmployeeList", ioe);
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
            AppLogger.error("SQLException in generateEmployeeList", sqlex);
        }
    }
    
    @RequestMapping(value = "rep_fn_payslip.fin", method = {RequestMethod.GET, RequestMethod.POST})
    public void generatePaySlip(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            AppLogger.info(":: generatePaySlip::");
            long id = Long.parseLong(request.getParameter("sno"));
            //System.out.println("Company Name1212\t"+(String)request.getSession().getAttribute("compname"));
            AppLogger.debug("generatePaySlip id is::" + id);
            ServletOutputStream servletOutputStream = response.getOutputStream();
            
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_finalpayslip.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("id", id);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
//            jre.printStackTrace();
            AppLogger.error("Jasper Exception in generatePaySlip :: ", jre);
        } catch (IOException ioe) {
            AppLogger.error("IO Exception in generatePaySlip", ioe);
//            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            AppLogger.error("SQL Exception in generatePaySlip ", sqlex);
//            sqlex.printStackTrace();
        }
    }
    
}
