// Java Document

package com.svs.erp.company.BO;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.log4j.Logger;

import com.svs.erp.company.DAO.*;
import com.svs.util.ConvertStackTracetoString;
public class deletecomapnyBO extends HttpServlet
{

	String id;
	String event;
	deletecomapnyDAO phdao=new deletecomapnyDAO();
	final static Logger logger = Logger.getLogger(CompanyRegistrationBO.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{
	id=req.getParameter("id");
	//event=req.getParameter("event");
	phdao.delete(id);
	res.sendRedirect("addcompany.jsp");
	
}
}