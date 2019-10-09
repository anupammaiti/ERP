// Java Document

package com.svs.erp.paidholidays.BO;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.log4j.Logger;

import com.svs.erp.loan.DAO.LoanDAO;
import com.svs.erp.paidholidays.DAO.*;
import com.svs.util.ConvertStackTracetoString;
public class deletepaidholidaysBO extends HttpServlet
{

	String date;
	String event;
	deletepaidholidaysDAO phdao=new deletepaidholidaysDAO();
	static Logger logger = Logger.getLogger(deletepaidholidaysBO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	

public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{
	date=req.getParameter("date");
	//event=req.getParameter("event");
	try{
	phdao.delete(date);
	}catch(Exception e){
		logger.error(util_stacktrace.sendingErrorAsString(e));
	}
	res.sendRedirect("paidholidays.jsp");
	
}
}