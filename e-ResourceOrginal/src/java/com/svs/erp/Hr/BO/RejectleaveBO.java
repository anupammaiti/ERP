package com.svs.erp.Hr.BO;

import java.io.*;

import javax.servlet.http.*;
import javax.servlet.*;

import org.apache.log4j.Logger;

import java.sql.*;

import com.svs.erp.Leaveauthe.DAO.ApproveleaveHRRMDAO;
import com.svs.erp.Hr.Mail.BO.SendMailRM2EMPREJECT;
import com.svs.erp.Hr.Mail.BO.SendMailRM2EMPREJECTHR;
import com.svs.util.ConvertStackTracetoString;

public class RejectleaveBO extends HttpServlet
{
	static Logger logger = Logger.getLogger(RejectleaveBO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();

	ApproveleaveHRRMDAO rejectedleavedao=new ApproveleaveHRRMDAO();

	SendMailRM2EMPREJECT sm = new SendMailRM2EMPREJECT();
	SendMailRM2EMPREJECTHR sm11 = new SendMailRM2EMPREJECTHR();

	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession se=req.getSession(true);

		//////System.out.println("...welcome");
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		String s4=null;
		String password=null;
		String employeecode=req.getParameter("employeecode");
		//////System.out.println("...1......"+employeecode);
		String fromdate=req.getParameter("fromdate");
		//////System.out.println("...2......"+fromdate);
		String todate=req.getParameter("todate");
		//////System.out.println("...3......"+todate);
		String empname=req.getParameter("empname").trim();
		//////System.out.println("...4......"+empname);
		String from1=req.getParameter("frommail").trim();
		//////System.out.println("...5....."+from1);
		String tomailid=req.getParameter("tomail").trim();
		//////System.out.println("...6....."+tomailid);
		String empnumbertosend=req.getParameter("empnumbertosend").trim();
		//					  //////System.out.println("...//7....."+from1);
		String empnametosend=req.getParameter("empnametosend").trim();
		//////System.out.println("...EMPNAME TO SEND....."+empnametosend);
		String lt=req.getParameter("ltype").trim();
		//////System.out.println("...7....."+lt);
		String odh=req.getParameter("odh").trim();
		//////System.out.println("...8....."+odh);
		String sess=req.getParameter("sess").trim();
		//////System.out.println("...9....."+sess);

		//////System.out.println("...REJECT....from...."+from1+"..........tomail......"+tomailid+".....toempnum...."+empnumbertosend);
		if(empnametosend.equals("HR Team"))
		{
			//////System.out.println("...if HRTEAM......");
			password="leaveadmin123";
		}
		else
		{
			password=req.getParameter("mailpassword");
		}
		String sub="Leave Rejected";
		String body="<table border=10  bordercolor=#006699 bgcolor=#FFFFCC><tr><td><table><tr><td><font face=Verdana, Arial, Helvetica, sans-serif color=#000066>Dear <font color=#FF6600>"+empname+"["+employeecode+"],</font> Greetings of the day!!!</font><br><br><br></td></tr><tr><td><table border=1 rules=all><tr><td><font color=#003366 face=Verdana, Arial, Helvetica, sans-serif>Leave Type:</font></td><td><font color=#FF6600>"+lt+"</font></td></tr><tr><td><font color=#003366 face=Verdana, Arial, Helvetica, sans-serif>OD Time:</font></td><td><font color=#FF6600>"+odh+"</font><font size=1 color=#003366>&nbsp;(in case of on duty)</font></td></tr><tr><td><font color=#003366 face=Verdana, Arial, Helvetica, sans-serif>Session:</font></td><td><font color=#FF6600>"+sess+"</font><font size=1 color=#003366>&nbsp;(in case 1/2 day leaves)</font></td></table></td></tr><tr><td><br><br><br><font face=Verdana, Arial, Helvetica, sans-serif color=#000066>Leaves are rejected from</font> <font color=#FF6600>"+fromdate+"</font> <font face=Verdana, Arial, Helvetica, sans-serif color=#000066>and</font> <font color=#FF6600>"+todate+"</font></td></tr><tr><td><br><br><br><font face=Verdana, Arial, Helvetica, sans-serif color=#000066>Regards,<br><font color=#FF6600>"+empnametosend+"["+empnumbertosend+"],</font> </font></td></tr></table></td></tr><tr><td><br><font color=#003366 face=Verdana, Arial, Helvetica, sans-serif><a href=http://119.82.117.69:9999/e-Resource target=_blank>Click here to view leave status in the portal.</a></font></td></tr></table>";

		String q;
		try
		{

			q=rejectedleavedao.reject(employeecode,fromdate,todate);


			if(q.equals("Rejected the leave applications"))
			{
				if(empnametosend.equals("HR Team"))
				{
					logger.info("...if HRTEAM..mail and redirect....");
					
					s4=sm11.sendmail2emprejecthr(tomailid,from1,password,sub,body);
					res.sendRedirect("Approve Leave HR");

				}
				else
				{ 	logger.info("...if RM..mail and redirect....");
					
					s4=sm.sendmail2empreject(tomailid,from1,password,sub,body);
					res.sendRedirect("Approve Leave");
				}
			}


			q=q+"..."+s4;

			se.setAttribute("response2",q);
		}
		catch(Exception ex)
		{
			logger.error(util_stacktrace.sendingErrorAsString(ex));
			

		}

		// res.sendRedirect("index.jsp");		
	}
}
