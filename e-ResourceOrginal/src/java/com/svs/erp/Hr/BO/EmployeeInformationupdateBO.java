package com.svs.erp.Hr.BO;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.log4j.Logger;

import  com.svs.erp.Hr.db.*;
import com.svs.erp.Hr.DAO.EmployeeInformationupdateDAO;
import com.svs.util.ConvertStackTracetoString;

public class EmployeeInformationupdateBO extends HttpServlet
{
int empno;
		String empnoo;

		Collection employee_coll=new ArrayList();
		EmployeeInformationupdateDAO empupdate=new EmployeeInformationupdateDAO();
		Connection con=null;
		ConnectionUtils connectionUtils=new ConnectionUtils();
		final static Logger logger = Logger.getLogger(EmployeeInformationupdateBO.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();

	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
	        HttpSession session=req.getSession();

	////////System.out.println("Start coll");
		//employee_coll.add(empno);
		//////System.out.println("1........"+req.getParameter("name")+"........."+req.getParameter("sex"));
		employee_coll.add(req.getParameter("name"));//a[0]
		employee_coll.add(req.getParameter("lname"));//a[1]
		employee_coll.add(req.getParameter("fathername"));//a[2]
		employee_coll.add(req.getParameter("dob"));//a[3]
		employee_coll.add(req.getParameter("sex"));//a[4]
		employee_coll.add(req.getParameter("joiningdate"));//a[5]
		employee_coll.add(req.getParameter("designation"));//a[6]
		employee_coll.add(req.getParameter("department"));//a[7]
		employee_coll.add(req.getParameter("reportingto"));//a[8]
		employee_coll.add(req.getParameter("joblevel"));//a[9]
		employee_coll.add(req.getParameter("location"));//a[10]
		employee_coll.add(req.getParameter("entrymanner"));//a[11]
		employee_coll.add(req.getParameter("nomination"));//a[12]
		employee_coll.add(req.getParameter("birthplace"));//a[13]
		employee_coll.add(req.getParameter("phoneno"));//a[14]
		employee_coll.add(req.getParameter("address"));//a[15]
		employee_coll.add(req.getParameter("religion"));//a[16]
		employee_coll.add(req.getParameter("pannumber"));//a[17]
		employee_coll.add(req.getParameter("passportnumber"));//a[18]
		employee_coll.add("-");//a[19]
		employee_coll.add("-");//a[20]
		employee_coll.add(req.getParameter("companyname"));//a[21]
    	employee_coll.add(req.getParameter("qualification"));//a[22]
		employee_coll.add(req.getParameter("presentsalary"));//a[23]
		employee_coll.add("00000");//a[24]
		employee_coll.add("00000");//a[25]
		employee_coll.add(req.getParameter("BankAcno"));//a[26]
		employee_coll.add("-");//a[27]
		employee_coll.add("00");//a[28]////////////joining time
		employee_coll.add(req.getParameter("hod"));//a[29]
		employee_coll.add(req.getParameter("emailid"));//a[30]
		employee_coll.add(req.getParameter("moe"));//a[31]
				employee_coll.add(req.getParameter("emailidd"));//a[32]
employee_coll.add(req.getParameter("empno"));//a[33]
employee_coll.add(req.getParameter("resigndate"));//a[34]
employee_coll.add(req.getParameter("status"));//a[35]

	
	try
	{
		empnoo=empupdate.insert(employee_coll);
         HttpSession ses=req.getSession(true);
         session.setAttribute("empno" , empnoo);
		 session.setAttribute("empno1" , ""+empnoo+"  Updated Successfully...");
		 ////////System.out.println("Empno in session"+empnoo);
		employee_coll.clear();
		res.sendRedirect("empupdate2.jsp");
	}
	catch (Exception e)
	{
		logger.error(util_stacktrace.sendingErrorAsString(e));
	}finally {
			try
			{
				
				if (con != null) connectionUtils.setDBClose();
				

			} catch (SQLException e)
			{
				
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		
	}
}