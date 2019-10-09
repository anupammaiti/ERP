// Java Document

package com.svs.erp.paidholidays.BO;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.log4j.Logger;

import com.svs.erp.paidholidays.DAO.*;
import com.svs.util.ConvertStackTracetoString;
public class paidholidaysBO extends HttpServlet
{

	String date;
	String event;
	String s=null;
	paidholidaysDAO phdao=new paidholidaysDAO();
	static Logger logger = Logger.getLogger(paidholidaysBO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	

public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{
	date=req.getParameter("date");
	event=req.getParameter("event");
	try{
	s=phdao.insert(event,date);}catch(Exception e){
		logger.error(util_stacktrace.sendingErrorAsString(e));
	}
	HttpSession se=req.getSession(true);
	se.setAttribute("msg1",s);
	res.sendRedirect("paidholidays.jsp");
	
}
}