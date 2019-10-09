
package com.svs.erp.leavecheck.BO;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.log4j.Logger;

import com.svs.erp.Leaveauthe.BO.forgetswipeBO;
import com.svs.erp.leavecheck.DAO.*;
import com.svs.util.ConvertStackTracetoString;
public class statuscheck extends HttpServlet
{
static Logger logger = Logger.getLogger(statuscheck.class.getName());
ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();

	statuscheckDAO scdao=new statuscheckDAO();

public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{

String fromdate=req.getParameter("fromdate");
String todate=req.getParameter("todate");
String empid=req.getParameter("empid");
	try{
		scdao.delete(empid,fromdate,todate);	
	}catch(Exception e){
		logger.error(util_stacktrace.sendingErrorAsString(e));
	}
	
	res.sendRedirect("Home");
	
}
}