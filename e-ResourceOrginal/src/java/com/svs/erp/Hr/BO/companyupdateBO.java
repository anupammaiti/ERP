package com.svs.erp.Hr.BO;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.DAO.companyupdateDAO;
import com.svs.util.ConvertStackTracetoString;

public class companyupdateBO extends HttpServlet
{
int empno;
		String empnoo;

		Collection employee_coll=new ArrayList();
		companyupdateDAO companyupdate=new companyupdateDAO();
		final static Logger logger = Logger.getLogger(companyupdateBO.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
		
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
	        HttpSession session=req.getSession();
String company=req.getParameter("company").trim();
String change=req.getParameter("change").trim();
//String date1=req.getParameter("date");
	
	try
	{
		empnoo=companyupdate.insert(company,change);
         HttpSession ses=req.getSession(true);
         session.setAttribute("company" , "Company name changed to ...."+change+"");
		// //////System.out.println("Empno in session"+empnoo);
		employee_coll.clear();
		res.sendRedirect("updatecompany.jsp");
	}
	catch (Exception e)
	{
		logger.error(util_stacktrace.sendingErrorAsString(e));
	}
		
	}
}