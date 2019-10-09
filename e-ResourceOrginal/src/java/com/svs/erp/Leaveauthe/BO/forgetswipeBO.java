package com.svs.erp.Leaveauthe.BO;
import com.svs.erp.Hr.Mail.BO.SendMailRM2EMPREJECTHR;
import com.svs.erp.Leaveauthe.DAO.*;
import com.svs.util.ConvertStackTracetoString;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.log4j.Logger;

import java.sql.*;
import java.lang.Exception;

public class forgetswipeBO extends HttpServlet
{
	static Logger logger = Logger.getLogger(forgetswipeBO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		
		PrintWriter pw=res.getWriter();
		//String ledgername="";
		String empid="";
		String s1="";
		try
	{
			
		forgetswipeDAO rdao = new forgetswipeDAO();
		
		empid=req.getParameter("empno").trim();
		//ledgername=ledgername1;
		String empname=req.getParameter("empname").trim();
		String department=req.getParameter("department").trim();
		String designation=req.getParameter("designation").trim();
		String RM=req.getParameter("RM").trim();
		String HOD=req.getParameter("HOD").trim();
		String date=req.getParameter("date");
		String first=req.getParameter("first");
		String last=req.getParameter("last");
		String tothrs=req.getParameter("tothrs");
		//////System.out.println(empname);
		//////System.out.println(tothrs);
		////////System.out.println(date1);
		s1=rdao.submit(empid,empname,department,designation,RM,HOD,date,first,last,tothrs);
		
	}
	catch(Exception ex)
	{
		logger.error(util_stacktrace.sendingErrorAsString(ex));
	}
HttpSession se=req.getSession(true);
	//req.setAttribute("msg2",s1);
	se.setAttribute("msg2",s1);
		//RequestDispatcher dispatcher = req.getRequestDispatcher("/forgetswipe.jsp");
       //dispatcher.forward(req, res);

	res.sendRedirect("forgetswipe.jsp");
	pw.println("<font color=#900F8E face=verdana size=2>"+empid +"</font>&nbsp;<font color=#EF6216 face=verdana size=2>"+s1+"</font>");
	}
}


		