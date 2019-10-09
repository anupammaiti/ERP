package com.svs.erp.Hr.BO;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.DAO.descupdateDAO;
import com.svs.util.ConvertStackTracetoString;

public class descupdateBO extends HttpServlet
{
int empno;
		String empnoo;

		Collection employee_coll=new ArrayList();
		descupdateDAO desupdate=new descupdateDAO();
		final static Logger logger = Logger.getLogger(descupdateBO.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
	        HttpSession session=req.getSession();
String designation=req.getParameter("designation").trim();
String change=req.getParameter("change").trim();
String date1=req.getParameter("date");
	
	try
	{
		empnoo=desupdate.insert(designation,change,date1);
         HttpSession ses=req.getSession(true);
         session.setAttribute("desc" , "Designation changed to ...."+change+"");
		// //////System.out.println("Empno in session"+empnoo);
		employee_coll.clear();
		res.sendRedirect("updatedesignation.jsp");
	}
	catch (Exception e)
	{
		logger.error(util_stacktrace.sendingErrorAsString(e));
	}
		
	}
}