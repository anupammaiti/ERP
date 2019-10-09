package com.svs.erp.Hr.BO;

import java.io.*;

import javax.servlet.http.*;
import javax.servlet.*;

import org.apache.log4j.Logger;

import java.sql.*;

import com.svs.erp.Hr.DAO.EmployeeloginsaveDAO;
import com.svs.util.ConvertStackTracetoString;


public class EmployeeloginsaveBO extends HttpServlet
{
	
	EmployeeloginsaveDAO loginsavedao=new EmployeeloginsaveDAO();
	final static Logger logger = Logger.getLogger(EmployeeloginsaveBO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
	    PrintWriter pw=res.getWriter();
		String s="";
		String stname="";
		
		String username=req.getParameter("username");
        String password=req.getParameter("password");
        stname=username;

		try
		{
		loginsavedao.insert(username,password);
		           //res.sendRedirect("employeeinformationform.jsp");		

		}
		catch(SQLException ex)
		{
			logger.error(util_stacktrace.sendingErrorAsString(ex));
		}
    ServletContext sc=getServletContext();
	RequestDispatcher rd=sc.getRequestDispatcher("/employeeinformationform.jsp");
	rd.include(req,res);
	//res.sendRedirect("fn_ledger_alter_or_display1.jsp");
	pw.println("<font color=#EF6216 face=verdana size=2>Employee Code <font color=#900F8E face=verdana size=2>"+stname+"</font><font color=#EF6216 face=verdana size=2> is Created</font>");
	
	}

}
