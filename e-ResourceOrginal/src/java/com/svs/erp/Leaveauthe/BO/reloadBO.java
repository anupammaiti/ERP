package com.svs.erp.Leaveauthe.BO;
import com.svs.erp.Leaveauthe.DAO.*;
import com.svs.util.ConvertStackTracetoString;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.log4j.Logger;

import java.sql.*;
import java.lang.Exception;

public class reloadBO extends HttpServlet
{
	
	static Logger log = Logger.getLogger(LeaveAuthenticationforEmpHRBO.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		
		PrintWriter pw=res.getWriter();
		//String ledgername="";
		String empid="";
		String s1="";
		try
	{
			//////System.out.println("Employee Swiping");
			
		reloadDAO rdao = new reloadDAO();
		
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
		log.error(util_stacktrace.sendingErrorAsString(ex));
	}
	HttpSession se=req.getSession(true);
	//req.setAttribute("msg2",s1);
	se.setAttribute("msg2",s1);
		//RequestDispatcher dispatcher = req.getRequestDispatcher("/inoutreload.jsp");
       //dispatcher.forward(req, res);

	res.sendRedirect("inoutreload.jsp");
	pw.println("<font color=#900F8E face=verdana size=2>"+empid +"</font>&nbsp;<font color=#EF6216 face=verdana size=2>"+s1+"</font>");
	}
}


		