package com.svs.ensign.resort.helper;

import com.svs.ensign.resort.util.AppTrack;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.HashMap;

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

@Controller
public class C_ReportController {

    @Autowired
    DataSource ds;
    @Value("${logo.folder}")
    String logofolder;
    String imagename = "svs_logo.gif";

    @RequestMapping(value = "customer_report.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateWebReport(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/customer_details.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            jre.printStackTrace();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
        }
    }

    @RequestMapping(value = "rep_department.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateDepartment(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            String images = null;
            ServletOutputStream servletOutputStream = response.getOutputStream();

            InputStream inputstream = this.getClass().getResourceAsStream("/department.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            jre.printStackTrace();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
        }

    }

    @RequestMapping(value = "rep_designation.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateDesignation(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_designation.jasper");//Mapping jasper file to InputStream.
            //BufferedImage image = ImageIO.read(getClass().getResource("/svs_logo.gif"));

            HashMap<String, Object> parameters = new HashMap<String, Object>();//Passing Parameters to Jasper File.
            String imagePath = logofolder + imagename;
            //System.out.println("imagePath\t"+imagePath);
            parameters.put("imagePath", imagePath);

            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            jre.printStackTrace();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
        }

    }

    @RequestMapping(value = "rep_reportingto.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateReportingto(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/reportingto.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            String imagePath = logofolder + imagename;
            //System.out.println("imagePath\t"+imagePath);
            parameters.put("imagePath", imagePath);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            jre.printStackTrace();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
        }

    }

    @RequestMapping(value = "rep_villadetails.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateVillaDetails(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            AppTrack.info("Villa Details:::::::::::");
            System.out.println("Villa Details:::::::::");
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/villa_details.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            String imagePath = logofolder + imagename;
            //System.out.println("imagePath\t"+imagePath);
            parameters.put("imagePath", imagePath);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            jre.printStackTrace();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
        }

    }

    @RequestMapping(value = "rep_Employee.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateEmployeeDetails(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/employeedetails.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            String imagePath = logofolder + imagename;
            //System.out.println("imagePath\t"+imagePath);
            parameters.put("imagePath", imagePath);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            jre.printStackTrace();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
        }

    }

    @RequestMapping(value = "rep_guestuser.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateGuestDetails(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {
            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/guestuser.jasper");//Mapping jasper file to InputStream. 
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            String status = null;
            status = "OPEN";
            parameters.put("status", status);

            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            jre.printStackTrace();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
        }

    }

    @RequestMapping(value = "rep_driver_vehicle_incurence.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateVehicleInsurence(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/vehicle_insurence_by_driver.jasper");//Mapping jasper file to InputStream.
            String username = (String) request.getSession().getAttribute("username");//getting driver ID

            //System.out.println("Username\t"+username);
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("vehno", username);//driver ID.
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            jre.printStackTrace();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
        }

    }

    @RequestMapping(value = "rep_driver_vehicle_maintenance.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateVehicleMaintenance(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/vehicle_maintanence_for_driver.jasper");//Mapping jasper file to InputStream.
            String username = (String) request.getSession().getAttribute("username");

            //System.out.println("Username\t"+username);
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("driver_name", username);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            jre.printStackTrace();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
        }

    }

    @RequestMapping(value = "rep_customerbyid.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateCustomerDetailsById(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/report1.jasper");//Mapping jasper file to InputStream.
            long id = Long.parseLong(request.getParameter("id"));

            //System.out.println("Username\t"+id);
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("sno", id);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            jre.printStackTrace();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
        }

    }

    @RequestMapping(value = "rep_GuestDetails.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateGuestDetailsById(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/guest_user_total_details.jasper");//Mapping jasper file to InputStream.
            long id = Long.parseLong(request.getParameter("id"));

            //System.out.println("Username\t"+id);
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("sno", id);
            String imagePath = logofolder + imagename;
            //System.out.println("Image Path\t"+imagePath);
            parameters.put("imagePath", imagePath);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            jre.printStackTrace();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
        }

    }

    @RequestMapping(value = "rep_customer_installments.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateCustomerInstallments(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws ServletException {
        try {

            ServletOutputStream servletOutputStream = response.getOutputStream();
            InputStream inputstream = this.getClass().getResourceAsStream("/rep_finance_customer.jasper");//Mapping jasper file to InputStream.
            long id = Long.parseLong(request.getParameter("id"));

            //System.out.println("Username\t"+id);
            HashMap parameters = new HashMap();//Passing Parameters to Jasper File.
            parameters.put("sno", id);
            JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
            servletOutputStream.flush();
            servletOutputStream.close();
        } catch (JRException jre) {
            jre.printStackTrace();
        } catch (IOException ioe) {
            ioe.printStackTrace();
        } catch (SQLException sqlex) {
            sqlex.printStackTrace();
        }

    }
}
