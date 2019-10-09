package com.svs.ensign.resort.helper;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.svs.ensign.resort.bean.EmployeeBean;
import com.svs.ensign.resort.dao.IN_EmployeeDAO;
import com.svs.ensign.resort.service.IN_EmployeeService;
import com.svs.ensign.resort.service.IN_HRService;
import com.svs.ensign.resort.util.AppTrack;
import com.svs.ensign.resort.util.ConvertStackTracetoString;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.ModelMap;

@Controller
public class C_HumanResourceHelperController {

    @Autowired
    DataSource ds;
    @Autowired
    IN_EmployeeDAO inEmployeeDAO;
    @Autowired
    IN_EmployeeService inEmployeeServ;
    @Autowired
    IN_HRService in_hrservice;

    @Autowired
    ConvertStackTracetoString util_stos;

//    final static Logger logger = Logger.getLogger(C_HumanResourceHelperController.class.getName());
    // Inventory
    @RequestMapping(value = "hlp_executive_list_by_manager.res", method = RequestMethod.GET)
    public void getProvisionAmount(HttpServletRequest request, HttpServletResponse response, @RequestParam("username") String username) {
        //System.out.println("Payment Mode");
        Connection con;
        PreparedStatement pr;
        ResultSet rs;
        JSONObject indirectexplist = new JSONObject();
        int i = 0;

        String result = null;
        String result1 = null;
        ////System.out.println("####################Second#####################################");
        try {

            PrintWriter out = response.getWriter();
            // con=dbconnection.getDBConnection();
            ////System.out.println("UserName in Finance\t"+username);
            con = ds.getConnection();
            pr = con.prepareStatement("select username from tl_employee where manager=?");
            pr.setString(1, username);
            rs = pr.executeQuery();

            while (rs.next()) {
                ////System.out.println("Result is\t"+rs.getString(1));	

                out.println("<option>" + rs.getString(1) + "</option>");
            }
            rs.close();
            pr.close();
            con.close();
        } catch (Exception e) {
//            e.printStackTrace();
            AppTrack.error("Exception in ::::::::getProvisionAmount::::::::::", e);
        }

        response.setContentType("plain/text");

    }

    @RequestMapping(value = "hlp_employee_username_list.res", method = RequestMethod.GET)
    public void getEmployeeList(HttpServletRequest request, HttpServletResponse response) {
        //System.out.println("Employee List");
        JSONObject empbeanObj=null;
        JSONObject indirectexplist = new JSONObject();

        String result = null;
        String result1 = null;
        ////System.out.println("####################Second#####################################");
        try {

            PrintWriter out = response.getWriter();
            // con=dbconnection.getDBConnection();
            ////System.out.println("UserName in Finance\t"+username);
            empbeanObj = inEmployeeDAO.viewEmployees();
            JSONArray empArr=new JSONArray();
            empArr=empbeanObj.getJSONArray("Data");
            for (int i = 0; i < empArr.size(); i++) {
                out.println("<option>" + empArr.getJSONObject(i).getString("username")  + "</option>");
            }

        } catch (Exception e) {
            AppTrack.error("Exception in getEmployeeList", e);
        }

        response.setContentType("plain/text");

    }

    @RequestMapping(value = "hlp_employee_list_at_hr_executive.res", method = RequestMethod.GET)
    public void viewEmployeeListAtHrExecutive(HttpServletRequest request, HttpServletResponse response) {
        //System.out.println("Employee List");
        JSONObject empbeanObj;
        JSONObject indirectexplist = new JSONObject();

        String result = null;
        String result1 = null;
        ////System.out.println("####################Second#####################################");
        try {
            String username = (String) request.getSession().getAttribute("username");

            PrintWriter out = response.getWriter();
            // con=dbconnection.getDBConnection();
            ////System.out.println("UserName in Finance\t"+username);
            empbeanObj = inEmployeeServ.viewListOfEmployeeByHRExecutive(username);
            JSONArray empArr=new JSONArray();
            empArr=empbeanObj.getJSONArray("Data");
            for (int i = 0; i < empArr.size(); i++) {
                out.println("<option>" + empArr.getJSONObject(i).getString("username") + "</option>");
            }

        } catch (Exception e) {
            AppTrack.error(":::::::::Exception in viewEmployeeAtHrExecutive::::::::", e);
        }

        response.setContentType("plain/text");

    }

    @Value("${employeeList}")
    String employeelistQuery;
    @Value("${hr.leave.cl}")
    String cl;
    @Value("${hr.leave.sl}")
    String sl;
    @Value("${hr.leave.pl}")
    String pl;

    @RequestMapping(value = "hlp_hr_employee_by_username.res", method = RequestMethod.GET)
    public void displayEmployeeList(HttpServletRequest request, HttpServletResponse response) {
        Connection con = null;
        Connection con1 = null;
        PreparedStatement prstmt, prstmt1;
        ResultSet rs, rs1;
        JSONObject leaveObj = new JSONObject();

        try {
            AppTrack.info("::Enter into hr_leave data::");

            String username = (String) request.getSession().getAttribute("username");
            System.out.println("UserName\t" + username);
            AppTrack.info("UserName::::\t" + username);
//            con = ds.getConnection();
//            prstmt = con.prepareStatement("select clopen,slopen,plopen from tl_leaveopen where empid=?");
//            prstmt.setString(1, username);
//            rs = prstmt.executeQuery();
//            while (rs.next()) {
//                System.out.println("Employee List ");
//                leaveObj.put("clopen", rs.getString("clopen"));
//                leaveObj.put("slopen", rs.getString("slopen"));
//                leaveObj.put("plopen", rs.getString("plopen"));
//                System.out.println("Employee leave List\t" + leaveObj);
//            }
            AppTrack.info(":::::::::Getting Employee Data::::::::::");
            AppTrack.info("Query to get Employee Details>>>\t" + employeelistQuery);
            con1 = ds.getConnection();
            prstmt1 = con1.prepareStatement(employeelistQuery);
            prstmt1.setString(1, username);
            rs1 = prstmt1.executeQuery();
            while (rs1.next()) {
                leaveObj.put("empno", rs1.getString("empno"));
                leaveObj.put("firstName", rs1.getString("firstname"));
                leaveObj.put("lastName", rs1.getString("lastname"));
                leaveObj.put("designation", rs1.getString("designation"));
            }
            AppTrack.info(":::::::::::::Cls" + cl + "SL" + sl + "PL" + pl + "::::::::::::::::::::");
            leaveObj.put("cls", cl);
            leaveObj.put("sls", pl);
            leaveObj.put("pls", sl);
            System.out.println("Employee leave List\t" + leaveObj);
            AppTrack.info("::::::::::::::Employee leave List:::::::::::::\t" + leaveObj);

            response.getWriter().println(leaveObj);
        } catch (Exception e) {
//            e.printStackTrace();
            AppTrack.error("::::::::::::::::;;Exception in displayEmployeeList::::::::::::", e);
        } finally {
            try {
                if (con != null) {
                    con.close();
                    con = null;
                }

            } catch (Exception e) {
//                e.printStackTrace();
                AppTrack.error("Exception in ", e);
            }

        }
        response.setContentType("plain/text");
    }

    @Value("${grid.employeeList}")
    String employeeGridData;

    @RequestMapping(value = "hlp_hr_employee_attList.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void displayHREmployeeList(HttpServletRequest request, HttpServletResponse response, @RequestParam("username") String username) {
        Connection con;
        PreparedStatement prstmt;
        ResultSet rs;
        JSONObject employeeObj = new JSONObject();
        JSONObject finalempObj = new JSONObject();
        JSONArray empJArray = new JSONArray();
        try {

            con = ds.getConnection();
            prstmt = con.prepareStatement(employeeGridData);
//            prstmt.setString(1, username);
            rs = prstmt.executeQuery();
            while (rs.next()) {
                AppTrack.debug("empno for employee Grid::in Executive:::" + rs.getString("empno"));
                employeeObj.put("empno", rs.getString("empno"));
                employeeObj.put("empid", rs.getString("username"));
                employeeObj.put("empname", rs.getString("Name"));
                employeeObj.put("qulification",rs.getString("qualification"));
                employeeObj.put("department", rs.getString("department"));
                employeeObj.put("designation",rs.getString("designation"));
                empJArray.add(employeeObj);
                AppTrack.debug("employee Object::::" + employeeObj);
            }
            finalempObj.put("finalEmpList", empJArray);
//            System.out.println("Final Employee Obj::::::\t" + finalempObj);
            AppTrack.info("Final Employee Obj::::::\t" + finalempObj);
            response.getWriter().println(finalempObj);
        } catch (Exception e) {
            AppTrack.error("Exception in displayHREmployeeList", e);
        }
    }
    @Value("${grid.employeeleavedetails}")
    String employeeLeaveGridData;

    @RequestMapping(value = "hlp_hr_employee_leaveList.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void displayHREmpLeaveList(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

        Connection con;
        PreparedStatement prstmt;
        ResultSet rs;
        JSONObject employeeObj = new JSONObject();
        JSONObject finalempObj = new JSONObject();
        JSONArray empJArray = new JSONArray();
        try {
            AppTrack.debug("displayHREmployeeLeaveList");
            String username = request.getParameter("username");
            AppTrack.info("UserName :: " + username);
            AppTrack.debug("employeeLeaveGridDataQuery :: \t" + employeeLeaveGridData);
            con = ds.getConnection();
            prstmt = con.prepareStatement(employeeLeaveGridData);
            prstmt.setString(1, username);
            rs = prstmt.executeQuery();
            while (rs.next()) {
                System.out.println("empid" + rs.getString("empid"));
                employeeObj.put("empid", rs.getString("empid"));
                employeeObj.put("cl", rs.getString("cl"));
                employeeObj.put("pl", rs.getString("pl"));
                employeeObj.put("sl", rs.getString("sl"));
                employeeObj.put("lop", rs.getString("lop"));
                employeeObj.put("totalcl", rs.getString("totalcl"));
                employeeObj.put("totalsl", rs.getString("totalsl"));
                employeeObj.put("totalpl", rs.getString("totalpl"));
                employeeObj.put("noofleaves", rs.getString("noofleaves"));
                employeeObj.put("totalleaves", rs.getString("totalleaves"));
                employeeObj.put("bcl", rs.getString("bcl"));
                employeeObj.put("bsl", rs.getString("bsl"));
                employeeObj.put("bpl", rs.getString("bpl"));

                AppTrack.info("employee Object::::" + employeeObj);
            }
            finalempObj.put("finalEmpList", employeeObj);
//            System.out.println("Final Employee Obj::::::\t" + finalempObj);
            AppTrack.info("Final Employee Leave DetailsObj::::::\t" + finalempObj);
            response.getWriter().println(finalempObj);
        } catch (Exception e) {
            AppTrack.error("Exception in displayHREmpLeaveList::\t", e);
        }
    }
    @Value("${grid.leaveApprovalDetails}")
    String leaveaprovalQuery;
    @RequestMapping(value = "hlp_hr_employee_leaveApprovalList.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void displayHREmpLeaveApprovalList(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        Connection con;
        PreparedStatement prstmt;
        ResultSet rs;
        JSONObject employeeObj = new JSONObject();
        JSONObject finalempObj = new JSONObject();
        JSONArray empJArray = new JSONArray();
        try {
            AppTrack.debug(":::displayHREmployeeLeaveApprovalList::");
            String username = request.getParameter("username");
            AppTrack.info("UserName :: " + username);
            AppTrack.debug("employeeLeaveGridDataQuery :: \t" + leaveaprovalQuery);
            con = ds.getConnection();
            prstmt = con.prepareStatement(leaveaprovalQuery);
            prstmt.setString(1, username);
            rs = prstmt.executeQuery();
            while (rs.next()) {
                employeeObj.put("empid", rs.getString("empid"));
                employeeObj.put("cl", rs.getString("cl"));
                employeeObj.put("pl", rs.getString("pl"));
                employeeObj.put("sl", rs.getString("sl"));
                employeeObj.put("lop", rs.getString("lop"));
                employeeObj.put("totalcl", rs.getString("totalcl"));
                employeeObj.put("totalsl", rs.getString("totalsl"));
                employeeObj.put("totalpl", rs.getString("totalpl"));
                employeeObj.put("noofleaves", rs.getString("noofleaves"));
                employeeObj.put("totalleaves", rs.getString("totalleaves"));
                employeeObj.put("bcl", rs.getString("bcl"));
                employeeObj.put("bsl", rs.getString("bsl"));
                employeeObj.put("bpl", rs.getString("bpl"));
            }
            finalempObj.put("finalEmpApprovalList", employeeObj);
//            System.out.println("Final Employee Obj::::::\t" + finalempObj);
            AppTrack.info("s\t" + finalempObj);
            response.getWriter().println(finalempObj);
        } catch (Exception e) {
            AppTrack.error("Exception in displayHREmpLeaveApprovalList", e);
        }
    }
    @Value("${grid.leaveGridList}")
    String leaveGridList;    
    @RequestMapping(value = "hlp_hr_employee_leaveGridList.res", method = {RequestMethod.GET, RequestMethod.POST})
    public void displayHREmpLeaveGridList(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
        Connection con;
        PreparedStatement prstmt;
        ResultSet rs;
        JSONObject employeeObj = new JSONObject();
        JSONObject finalempObj = new JSONObject();
        JSONArray empJArray = new JSONArray();
        try {
            AppTrack.debug(":::displayHREmployeeLeaveApprovalList::");
           
            String username =  request.getSession().getAttribute("username").toString();
            AppTrack.info("UserName :: " + username);
            AppTrack.debug("Query::displayHREmpLeaveGridList :: \t" + leaveGridList);
            JSONArray respArr=new JSONArray();
            con = ds.getConnection();
            prstmt = con.prepareStatement(leaveGridList);
            prstmt.setString(1, username);
            rs = prstmt.executeQuery();
            while (rs.next()) {
                employeeObj.put("empid", rs.getString("empid"));
                employeeObj.put("empname", rs.getString("empname"));
                employeeObj.put("fromdate",rs.getString("fromdate"));
                employeeObj.put("todate",rs.getString("todate"));
                employeeObj.put("remainingleaves",rs.getString("remainingleaves"));
                respArr.add(employeeObj);
            }
            finalempObj.put("finalEmpLeaveList", respArr);
//            System.out.println("Final Employee Obj::::::\t" + finalempObj);
            AppTrack.info("" + finalempObj);
            response.getWriter().println(finalempObj);
        } catch (Exception e) {
            AppTrack.error("Exception in displayHREmpLeaveGridList", e);
        }
    }
    
}
