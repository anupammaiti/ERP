package com.svs.ensign.resort.helper;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.svs.ensign.resort.cms.bean.GuestUserBean;
import com.svs.ensign.resort.service.IN_AdminService;
import com.svs.ensign.resort.util.AppTrack;
import com.svs.ensign.resort.util.ConvertStackTracetoString;
import com.svs.ensign.resort.util.Response;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class C_MislaniousHelperController {

    @Autowired
    DataSource ds;
    @Autowired
    ConvertStackTracetoString util_stos;

    private boolean duplicate;
    private Connection con;
    private PreparedStatement pr;
    private ResultSet rs;
    private Statement st;
    private int noofrecords = 0;
    JSONObject respObj = new JSONObject();
    final static Logger logger = Logger.getLogger(C_MislaniousHelperController.class);

    @RequestMapping(value = "tele_caller.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void generateTelecallers(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            pr = con.prepareStatement("select username from tl_employee");
            rs = pr.executeQuery();
            while (rs.next()) {
                out.println("<option>" + rs.getString(1) + "</option>");
            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "discription_list.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void listDesicription(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            pr = con.prepareStatement("select designation_id from tl_designation");
            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println("<option>" + rs.getString(1) + "</option>");
            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "villa_list.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void listOfDepartment(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            pr = con.prepareStatement("select villa_type from tl_villatype");
            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println("<option>" + rs.getString(1) + "</option>");

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "departmentId.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void listOfDepartmentId(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            pr = con.prepareStatement("select department from tl_department where department='TeleMarketing'");
            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println("<option>" + rs.getString(1) + "</option>");
            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "departmentdesignation.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void listOfDepartmentList(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;

        try {

            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String department = request.getParameter("department");
            AppTrack.info("Input for fetch Designation by using departmentID" + department);
            pr = con.prepareStatement("SELECT designation FROM tl_designation WHERE department_id=?");
            pr.setString(1, department);
            rs = pr.executeQuery();

            while (rs.next()) {

                //System.out.println("Hello"+rs.getString(1));
                AppTrack.info("Department data is:::" + rs.getString(1));
                out.println("<option>" + rs.getString(1) + "</option>");
            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "reportingto.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void listOfReportingTo(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;

        try {

            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String designation = request.getParameter("designation1");
            ////System.out.println("Designation is"+designation);
            pr = con.prepareStatement("SELECT reportingto FROM tl_reportingto WHERE designation=?");
            pr.setString(1, designation);
            rs = pr.executeQuery();

            while (rs.next()) {

                //System.out.println("Hello"+rs.getString(1));
                out.println("<option>" + rs.getString(1) + "</option>");
            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "des_id_by_designaion.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingDesignationByDesignation(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String designation = request.getParameter("designation");
            pr = con.prepareStatement("SELECT designation_id FROM tl_designation WHERE designation=?");
            pr.setString(1, designation);
            rs = pr.executeQuery();
            while (rs.next()) {

                //System.out.println("Designation is\t"+rs.getString(1));
                out.println(rs.getString(1));
            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "get_reference1.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingReferenceByDesignation(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String designation = request.getParameter("designation");
            pr = con.prepareStatement("SELECT username FROM tl_employee WHERE manager=?");
            pr.setString(1, designation);
            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println("<option>" + rs.getString(1) + "</option>");
            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "get_reference2.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingReferenceByReference1(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String reportingto = request.getParameter("refer1");
            String department = request.getParameter("department");
            ////System.out.println("Reporting To"+reportingto);
            ////System.out.println("Department"+department);
            pr = con.prepareStatement("SELECT username FROM tl_employee WHERE reportingto=? AND department=?");
            pr.setString(1, reportingto);
            pr.setString(2, department);
            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println("<option>" + rs.getString(1) + "</option>");

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    public boolean isDuplicate(String guestid) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        String guest_id = null;
        try {
            con = ds.getConnection();
            pr = con.prepareStatement("SELECT guest_id from tl_guest_user where guest_id=?");
            pr.setString(1, guestid);
            rs = pr.executeQuery();
            while (rs.next()) {
                ////System.out.println("Hello"+rs.getString(1));
                guest_id = rs.getString(1);
            }
            if (guest_id.equals(null)) {
                duplicate = false;
            } else {
                duplicate = true;
            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        return duplicate;

    }

    @RequestMapping(value = "remainder_alert.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingRemainder(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String requestforcall = request.getParameter("requestforcall");
            ////System.out.println("Request Call"+requestforcall);
            String username = request.getParameter("username");
            ////System.out.println("Username"+username);
            String status = request.getParameter("status");
            ////System.out.println("Status"+status);
            pr = con.prepareStatement("SELECT guest_name FROM tl_guest_user WHERE reqforcall=? and refered1=? and status=?");
            pr.setString(1, requestforcall);
            pr.setString(2, username);
            pr.setString(3, status);
            rs = pr.executeQuery();
            while (rs.next()) {

                //System.out.println("Hello"+rs.getString(1));
                out.println(rs.getString(1));

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "tele_agent.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingAgent(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();

            pr = con.prepareStatement("select distinct(username) from tl_employee where designation='tele_agent'");

            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println("<option>" + rs.getString(1) + "</option>");

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "drivers.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingDrivers(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();

            pr = con.prepareStatement("SELECT username FROM tl_employee WHERE designation='Driver'");

            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println("<option>" + rs.getString(1) + "</option>");

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "vehicle.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingVehicle(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();

            pr = con.prepareStatement("SELECT vehicle_no FROM tl_vehicledetails;");

            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println("<option>" + rs.getString(1) + "</option>");

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "vehicle_allocation.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingVehicleAllotment(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String driver_name = request.getParameter("driver_name");
            String vehicle_no = request.getParameter("vehicle_no");

            pr = con.prepareStatement("");

            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println("<option>" + rs.getString(1) + "</option>");

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "mangers.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingManagers(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String username = request.getParameter("username");

            pr = con.prepareStatement("select username from tl_employee where reportingto=(select designation from tl_employee where username=?)");
            pr.setString(1, username);
            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println("<option>" + rs.getString(1) + "</option>");

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "driver_name.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingDriverName(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String username = request.getParameter("username");

            pr = con.prepareStatement("select firstname from tl_employee where username=?");
            pr.setString(1, username);
            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println(rs.getString(1));

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "tele_manager_name.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingManagerName(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String username = request.getParameter("username");
            pr = con.prepareStatement("SELECT firstname FROM tl_employee WHERE username=?");
            pr.setString(1, username);
            rs = pr.executeQuery();
            while (rs.next()) {

                //System.out.println("Hello"+rs.getString(1));
                out.println(rs.getString(1));

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "veh_model.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingVehicleModelByNo(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String vehno = request.getParameter("veh_no");
            pr = con.prepareStatement("SELECT vehicle_model FROM tl_vehicledetails WHERE vehicle_no=?");
            pr.setString(1, vehno);
            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println(rs.getString(1));

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "veh_details.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingVehicleDetails(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        JSONObject job = new JSONObject();
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String vehno = request.getParameter("vhno");
            pr = con.prepareStatement("SELECT company_name,vehicle_model,vehicle_type FROM tl_vehicledetails WHERE vehicle_no=?");
            pr.setString(1, vehno);
            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                job.put("cname", rs.getString(1));
                job.put("veh_model", rs.getString(2));
                job.put("vh_type", rs.getString(3));
                out.println(job);
            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "agent_name.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingAgentName(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        JSONObject job = new JSONObject();
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String vehno = request.getParameter("vhno");
            pr = con.prepareStatement("SELECT username FROM tl_employee WHERE designation='tele_agent'");
            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println("<option>" + rs.getString(1) + "</option>");
            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "vehicle1.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingVehicle1(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();

            pr = con.prepareStatement("SELECT vehicle_no FROM tl_vehicledetails;");

            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println(rs.getString(1));

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "customer_id.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingGuestList(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String id = request.getParameter("id");
            pr = con.prepareStatement("select Max(sno) from tl_customer");
            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println(rs.getString(1));

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "departments.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingDepartmentList(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String id = request.getParameter("id");
            pr = con.prepareStatement("select department from tl_department");
            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println("<option>" + rs.getString(1) + "</option>");

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "view_manager_by_department.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingManagerByDepartment(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String deparment = request.getParameter("department");
            pr = con.prepareStatement("SELECT username FROM tl_employee WHERE reportingto=(SELECT designation FROM tl_employee WHERE department=? AND reportingto='CEO');");
            pr.setString(1, deparment);
            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println("<option>" + rs.getString(1) + "</option>");

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "villa_facing.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingFacingVillas(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String deparment = request.getParameter("department");
            pr = con.prepareStatement("SELECT villa_facing FROM tl_villatype;");

            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println("<option>" + rs.getString(1) + "</option>");

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "viewdepartmentbyusername.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingDepartmentByManagerId(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String username = request.getParameter("username");
            pr = con.prepareStatement("select department from tl_employee where username=?");
            pr.setString(1, username);
            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println(rs.getString(1));

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "viewexecutiveslist.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingExecutiveList(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String username = request.getParameter("username");
            pr = con.prepareStatement("select username from tl_employee where manager=?");
            pr.setString(1, username);
            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println("<option>" + rs.getString(1) + "</option>");

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "view_manager_by_executive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingMangerByExecutiveID(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String username = request.getParameter("username");
            pr = con.prepareStatement("select manager from tl_employee where username=?");
            pr.setString(1, username);
            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                out.println(rs.getString(1));

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "gettinginvoicenos.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingInvoiceIDS(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        JSONObject invoiceid = new JSONObject();
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            pr = con.prepareStatement("SELECT MAX(invoiceno),MAX(invoiceid),MAX(referenceno) FROM tl_sl_invoice;");
            rs = pr.executeQuery();
            while (rs.next()) {

                ////System.out.println("Hello"+rs.getString(1));
                invoiceid.put("invoiceno", rs.getString(1));
                invoiceid.put("invoiceid", rs.getString(2));
                invoiceid.put("referenceno", rs.getString(3));
                out.println(invoiceid);

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "gettingmanagersbydept.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingMangersListByDepartment(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        String department = request.getParameter("department");
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            pr = con.prepareStatement("SELECT username FROM tl_employee WHERE reportingto=(select designation from tl_employee where reportingto='CEO' and department=?);");
            pr.setString(1, department);
            rs = pr.executeQuery();
            while (rs.next()) {

                //System.out.println("Hello"+rs.getString(1));
                out.println("<option>" + rs.getString(1) + "</option>");

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "gettingorderno.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingOrderNo(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;

        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            pr = con.prepareStatement("select MAX(sno) from tl_sl_orderform");
            rs = pr.executeQuery();
            while (rs.next()) {

                //System.out.println("Hello"+rs.getString(1));
                out.println(rs.getString(1));

            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "gettingexecutivedata.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingExecutiveData(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        JSONObject executivedata = new JSONObject();
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String username = request.getParameter("username");
            pr = con.prepareStatement("select department,manager from tl_employee where username=?");
            pr.setString(1, username);
            rs = pr.executeQuery();
            while (rs.next()) {
                executivedata.put("depart1", rs.getString(1));
                executivedata.put("manager", rs.getString(2));
                out.println(executivedata);
            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "gettingmanagerdata.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingManagerData(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        JSONObject executivedata = new JSONObject();
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String username = request.getParameter("username");
            ////System.out.println("User Name\t"+username);
            pr = con.prepareStatement("select department from tl_employee where username=?");
            pr.setString(1, username);
            rs = pr.executeQuery();
            while (rs.next()) {
                ////System.out.println("Department"+rs.getString(1));
                out.println(rs.getString(1));
            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "gettingfiancedetial.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingFinanceDetails(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        JSONObject financecustomer = new JSONObject();
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String username = request.getParameter("username");
            pr = con.prepareStatement("SELECT MAX(installmentspaid),SUM(amountpaid) FROM tl_fn_customer WHERE custid=?");
            pr.setString(1, username);
            rs = pr.executeQuery();
            while (rs.next()) {
                ////System.out.println("Finance Details\t"+rs.getString(1));
                financecustomer.put("installment", rs.getString(1));
                financecustomer.put("amount", rs.getString(2));
                out.println(financecustomer);
            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    @RequestMapping(value = "payinginstallments.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingPayingInstallment(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        JSONObject executivedata = new JSONObject();
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            String username = request.getParameter("username");
            pr = con.prepareStatement("select Max(installmentspaid) from tl_fn_customer where custid=?");
            pr.setString(1, username);
            rs = pr.executeQuery();
            while (rs.next()) {
                ////System.out.println("Finance Details\t"+rs.getString(1));
                out.println(rs.getString(1));
            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }
    //Getting Villa Details.

    @RequestMapping(value = "villadetails12.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void gettingVillaDetails(HttpServletRequest request, HttpServletResponse response) {
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        JSONObject villadetails = new JSONObject();
        try {
            con = ds.getConnection();
            PrintWriter out = response.getWriter();
            //String username=request.getParameter("username");
            pr = con.prepareStatement("select * from tl_villatype");

            rs = pr.executeQuery();
            while (rs.next()) {
                //System.out.println("Finance Details\t"+rs.getString(1));
                villadetails.put("villaname", rs.getString(2));
                villadetails.put("villafacing", rs.getString(4));
                villadetails.put("villatype", rs.getString(6));
                villadetails.put("totalvillas", rs.getString(9));
                villadetails.put("villasleft", rs.getString(10));
                //System.out.println(villadetails);
                out.println(villadetails);
            }
            con.close();
            pr.close();
        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        }
        response.setContentType("plian/text");
    }

    //Pagination.
    public List<GuestUserBean> viewGuestAuthenticationByAdmin(int offset, int noofrecords) {
        List<GuestUserBean> guestauth = new ArrayList<GuestUserBean>();
        GuestUserBean guestuser = null;
        //System.out.println("Off Set \t"+offset);
        //System.out.println("No Of Records\t"+noofrecords);
        String query1 = "select SQL_CALC_FOUND_ROWS * from tl_guest_user limit ?,?";
        try {
            con = ds.getConnection();
            pr = con.prepareStatement(query1);
            pr.setInt(1, offset);
            pr.setInt(2, noofrecords);
            rs = pr.executeQuery();
            while (rs.next()) {
                ////System.out.println("Guest Name"+rs.getString(2));
                guestuser = new GuestUserBean();
                guestuser.setGuestid(rs.getLong(1));
                guestuser.setGuest_name(rs.getString(2));
                guestuser.setGuest_last_name(rs.getString(3));
                guestuser.setReqforquote(rs.getString(9));
                guestuser.setMobileno(rs.getString(4));
                guestuser.setStatus(rs.getString(6));
                guestauth.add(guestuser);

            }
            pr = con.prepareStatement("Select FOUND_ROWS()");
            rs = pr.executeQuery();
            ////System.out.println("Hello");
            if (rs.next()) {
                this.noofrecords = rs.getInt(1);
                ////System.out.println("No of Records\t"+noofrecords);
            } else {
                ////System.out.println("No Record Count");
            }
            rs.close();

        } catch (Exception e) {
            logger.error(util_stos.sendingErrorAsString(e));
        } finally {
            try {
                if (pr != null) {
                    pr.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                logger.error(util_stos.sendingErrorAsString(e));
            }
        }

        return guestauth;
    }

    public int getNoOfRecords() {
        return noofrecords;
    }
    @Autowired
    IN_AdminService in_adminservice;



}
