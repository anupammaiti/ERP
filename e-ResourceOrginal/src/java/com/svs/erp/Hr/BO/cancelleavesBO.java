package com.svs.erp.Hr.BO;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.DAO.cancelleavesDAO;
import com.svs.erp.designation.DAO.deletedesigDAO;
import com.svs.util.ConvertStackTracetoString;

public class cancelleavesBO extends HttpServlet
{
int empno;
		String result=null;

		//Collection employee_coll=new ArrayList();
		cancelleavesDAO cancelleave=new cancelleavesDAO();
		final static Logger logger = Logger.getLogger(cancelleavesBO.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
	        HttpSession session=req.getSession();
String id=req.getParameter("id").trim();
String fromdate=req.getParameter("fromdate").trim();
String todate=req.getParameter("todate");
String leavetype=req.getParameter("leavetype");
	
	try
	{
		result=cancelleave.cancel(id,fromdate,todate,leavetype);
         HttpSession ses=req.getSession(true);
         session.setAttribute("cancelresult",result);
			res.sendRedirect("cancelleaves.jsp");
	}
	catch (Exception e)
	{
		logger.error(util_stacktrace.sendingErrorAsString(e));
	}
		
	}
}