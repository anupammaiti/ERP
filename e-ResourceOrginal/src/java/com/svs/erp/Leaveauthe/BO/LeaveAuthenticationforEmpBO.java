package com.svs.erp.Leaveauthe.BO;
import com.svs.erp.Leaveauthe.DAO.*;
import com.svs.erp.Hr.Mail.BO.SendMailRM2EMP;
import com.svs.util.ConvertStackTracetoString;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import java.sql.*;
import java.lang.Exception;

import org.apache.log4j.Logger;


public class LeaveAuthenticationforEmpBO extends HttpServlet
{
	static Logger log = Logger.getLogger(LeaveAuthenticationforEmpBO.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		
		PrintWriter pw=res.getWriter();
		//String ledgername="";
		String empid="";
		String s1="";
		String s4=null;
		try
	{
			/////////////////////////////////////////////////////////////////////////////////////FOR  OD and PER
		LeaveauthenticationDAO ladao = new LeaveauthenticationDAO();
		//////////////////////////////////////////////////////////////////////////////////////////FOR TL/CL/PL in empabsent
		LeaveAuthenticationDaoTCS ladao1 = new LeaveAuthenticationDaoTCS();
		//////////////////////////////////////////////////////////////////////////////////////////FOR 1/2TL/1/2CL/1/2PL in empinout1
		LeaveauthenticationDAOhalf ladaohalf = new LeaveauthenticationDAOhalf();
		//////////////////////////////////////////////////////////////////////////////////////////FOR SL Only........................in empabsent
		LeaveauthenticationSLDAO ladaosl = new LeaveauthenticationSLDAO();
		//////////////////////////////////////////////////////////////////////////////////////////FOR SPL Only........................in empabsent
		LeaveauthenticationSPLDAO ladaospl = new LeaveauthenticationSPLDAO();
		//////////////////////////////////////////////////////////////////////////////////////////FOR LOP Only........................
		LeaveauthenticationLOPDAO ladaolop = new LeaveauthenticationLOPDAO();
		//////////////////////////////////////////////////////////////////////////////////////////FOR 1/2LOP Only........................
		LeaveauthenticationLOPhalfDAO ladaolophalf = new LeaveauthenticationLOPhalfDAO();
		////////////////////////////////////////////////////////////////////////////////////////// FOR insert INTO leaves table and to count leaves(~~~~~~~~~NOT USED~~~~~~~~~~)
		LeaveAuthenticationDaoLCSP ladao2 = new LeaveAuthenticationDaoLCSP();
		////////////////////////////////////////////////////////////////// FOR COUNT OF  LEAVES
		LeaveAuthenticationDaoCSP ladao3 = new LeaveAuthenticationDaoCSP();
		////////////////////////////////////////////////////////////////// FOR COUNT OF  LEAVES 1/2cl,sl,pl
		HalfLeaveAuthenticationDaoImpl ladaohalf1 = new HalfLeaveAuthenticationDaoImpl();
			//////////////////////////////////////////////////////////////////Leave Approve updates and send mail
		ApproveleaveHRRMDAO alhrrm=new ApproveleaveHRRMDAO();
		
		SendMailRM2EMP sm = new SendMailRM2EMP();
		
		///////////////////////////////////////////////////////////////////////////////////////////////////////////////
		empid=req.getParameter("employeecode").trim();
		//ledgername=ledgername1;
		String empname=req.getParameter("empname").trim();
		String designation=req.getParameter("designation").trim();
		String company=req.getParameter("company").trim();
		String leavetype=req.getParameter("leavetype").trim();
		String date1=req.getParameter("date1");
		String date2=req.getParameter("date2");
		String odhours=req.getParameter("odhours");
		String sess=req.getParameter("sess");
		int noofdays=1;
		////////System.out.println("NAMEEEEEEEEEE"+empname);
	//	//////System.out.println("L TYPEEEEEEEEE"+leavetype);
	////////System.out.println("FROM DATEEEEEEEEEE"+date1);
	////////System.out.println("TO DATEEEEEEEEEE"+date2);
			String s2=null;
			String s3=null;
			String from1=null;
			String tomailid=null;
			//////////////////////////////////////////~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			 from1=req.getParameter("frommail").trim();
					tomailid=req.getParameter("tomail").trim();
					  String empnumbertosend=req.getParameter("empnumbertosend").trim();
					  String empnametosend=req.getParameter("empnametosend").trim();
					  
					  //////System.out.println(".......from...."+from1+"..........tomail......"+tomailid+".....toempnum...."+empnumbertosend);
		  String password=req.getParameter("mailpassword").trim();
		  String sub="Leave Approved";
		String body="<table border=10  bordercolor=#006699 bgcolor=#FFFFCC><tr><td><table><tr><td><font face=Verdana, Arial, Helvetica, sans-serif color=#000066>Dear <font color=#FF6600>"+empname+"["+empid+"],</font> Greetings of the day!!!</font><br><br><br></td></tr><tr><td><table border=1 rules=all><tr><td><font color=#003366 face=Verdana, Arial, Helvetica, sans-serif>Leave Type:</font></td><td><font color=#FF6600>"+leavetype+"</font></td></tr><tr><td><font color=#003366 face=Verdana, Arial, Helvetica, sans-serif>OD Time:</font></td><td><font color=#FF6600>"+odhours+"</font><font size=1 color=#003366>&nbsp;(in case of on duty)</font></td></tr><tr><td><font color=#003366 face=Verdana, Arial, Helvetica, sans-serif>Session:</font></td><td><font color=#FF6600>"+sess+"</font><font size=1 color=#003366>&nbsp;(in case 1/2 day leaves)</font></td></table></td></tr><tr><td><br><br><br><font face=Verdana, Arial, Helvetica, sans-serif color=#000066>Leaves approved from</font> <font color=#FF6600>"+date1+"</font> <font face=Verdana, Arial, Helvetica, sans-serif color=#000066>and</font> <font color=#FF6600>"+date2+"</font></td></tr><tr><td><br><br><br><font face=Verdana, Arial, Helvetica, sans-serif color=#000066>Regards,<br><font color=#FF6600>"+empnametosend+"["+empnumbertosend+"].</font> </font></td></tr></table></td></tr><tr><td><br><font color=#003366 face=Verdana, Arial, Helvetica, sans-serif><a href=http://119.82.117.69:9999/e-Resource target=_blank>Click here to view leave status in the portal.</a></font></td></tr></table>";

			//////////~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		 if(leavetype.equals("OD")||leavetype.equals("PER"))//for OD and PER
  		{
		s1=ladao.submit(empid,empname,designation,company,leavetype,date1,odhours);
		//pw.println("<html><body><h3>"+s1+"</h3>");
		}
		   if(leavetype.equals("TL")||leavetype.equals("CL")||leavetype.equals("PL"))// FOR AUTHENTICATION 
  		{
		s1=ladao1.submit(empid,empname,designation,company,leavetype,date1,date2);
		s2=leavetype+" Authentication Successfully From "+date1+" to "+date2;
		log.debug("LeaveAuthenticationforEmpBO::Leave Type is"+s2 );
		//////System.out.println("~~~~~~~~~~~s1........"+s1);
		//pw.println("<html><body><h3>"+s1+"</h3>");
		}
		//////////////////////////////////////////for half leaves......................................
		 if(leavetype.equals("1/2TL")||leavetype.equals("1/2CL")||leavetype.equals("1/2PL")||leavetype.equals("1/2SL"))// FOR AUTHENTICATION 
  		{
		s1=ladaohalf.submit(empid,empname,designation,company,leavetype,date1,date2,sess);
		s2=leavetype+" Authentication Successfully From "+date1+" to "+date2;
		log.debug("LeaveAuthenticationforEmpBO::Leave Type is"+s2 );
		//////System.out.println("~~~~~~~~~~~s1........"+s1);
		//////System.out.println("~~~~~~~~~~~s2........"+s2);
		//pw.println("<html><body><h3>"+s1+"</h3>");
		}
		////////////////////////////////////////////////~~~~~~~~~~~~~~~~~~~end here
		
		 if(leavetype.equals("SL"))// FOR AUTHENTICATION 
  		{
		s1=ladaosl.submit(empid,empname,designation,company,leavetype,date1,date2);
		s2=leavetype+" Authentication Successfully From "+date1+" to "+date2;
		log.debug("LeaveAuthenticationforEmpBO::Leave Type is"+s2 );
		}
		
		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		 if(leavetype.equals("SPL"))// FOR AUTHENTICATION 
  		{
		s1=ladaospl.submit(empid,empname,designation,company,leavetype,date1,date2);
		s2=leavetype+" Authentication Successfully From "+date1+" to "+date2;
		log.debug("LeaveAuthenticationforEmpBO::Leave Type is"+s2 );
		}
		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		
		if(leavetype.equals("LOP"))  ////////FOR LOP AUTHENTICAATION
		{
		String fromdate=date1;
		String todate=date2;
		int cll=0;
		int sll=0;
		int pll=0;
		int lop=0;
		String employeecode=empid;
		s1=ladaolop.approve(employeecode,empname,leavetype,fromdate,todate,cll,sll,pll,lop);
		s2=leavetype+" Authentication Successfully From "+date1+" to "+date2;
		log.debug("LeaveAuthenticationforEmpBO::Leave Type is"+s2 );
			//~~~~~~~~~~~~~~code to approve in leavestatus and send mail
		s3=alhrrm.approve(empid,fromdate,todate,leavetype);
		log.debug("LeaveAuthenticationforEmpBO::Leave Type is"+s3 );

		if(s3.equals("Approved"))
		{
		s4=sm.sendmail2emp(tomailid,from1,password,sub,body);
		}
		}
		
		/*~~~~~~~~~~~~~~~~~~~~~~~~~*/
		if(leavetype.equals("1/2LOP"))  ////////FOR 1/2LOP AUTHENTICAATION
		{
		String fromdate=date1;
		String todate=date2;
		int cll=0;
		int sll=0;
		int pll=0;
		int lop=0;
		String employeecode=empid;
		//s1=ladaolophalf.approve(employeecode,empname,leavetype,fromdate,todate,cll,sll,pll,lop);
	s1=ladaolophalf.submit(empid,empname,designation,company,leavetype,date1,date2,sess);
		s2=leavetype+" Authentication Successfully From "+date1+" to "+date2;
		log.debug("LeaveAuthenticationforEmpBO::Leave Type is"+s2 );
			//~~~~~~~~~~~~~~code to approve in leavestatus and send mail
		s3=alhrrm.approve(empid,fromdate,todate,leavetype);
		log.debug("LeaveAuthenticationforEmpBO::Leave Type is"+s3 );
	if(s3.equals("Approved"))
		{
		s4=sm.sendmail2emp(tomailid,from1,password,sub,body);
		}
		}
		/*~~~~~~~~~~~~~~~~~~~~~~~~~~*/
		
		 if(leavetype.equals("CL")||leavetype.equals("SL")||leavetype.equals("PL")) // FOR LEAVE CALCULATION
  		{
		String fromdate=date1;
		String todate=date2;
		int cll=0;
		int sll=0;
		int pll=0;
		int lop=0;
		String employeecode=empid;
		
		if(s1.equals(s2))
		{
		//////System.out.println("~~~~~~~~~~~"+s2);
		ladao3.approve(employeecode,empname,leavetype,fromdate,todate,cll,sll,pll,lop);
		//~~~~~~~~~~~~~~code to approve in leavestatus and send mail
		s3=alhrrm.approve(empid,fromdate,todate,leavetype);
		log.debug("LeaveAuthenticationforEmpBO::Leave Type is"+s3 );
if(s3.equals("Approved"))
		{
		s4=sm.sendmail2emp(tomailid,from1,password,sub,body);
		}
		}//equls if
		}
		//////////////////////////////////////////////////////////
		 if(leavetype.equals("TL")) // FOR LEAVE CALCULATION
  		{
		String fromdate=date1;
		String todate=date2;
		int cll=0;
		int sll=0;
		int pll=0;
		int lop=0;
		String employeecode=empid;
		
		if(s1.equals(s2))
		{
		//////System.out.println("~~~~~~~~~~~"+s2);
		//~~~~~~~~~~~~~~code to approve in leavestatus and send mail
		s3=alhrrm.approve(empid,fromdate,todate,leavetype);
		log.debug("LeaveAuthenticationforEmpBO::Leave Type is"+s3 );
		if(s3.equals("Approved"))
		{
		s4=sm.sendmail2emp(tomailid,from1,password,sub,body);
		}
		}//equls if
		}
		//////////////////////////////////////////////////////////
		//////////////////////////////////////////////////////////
		 if(leavetype.equals("SPL")) // FOR LEAVE Authentication mail and approved in status table
  		{
		String fromdate=date1;
		String todate=date2;
		int cll=0;
		int sll=0;
		int pll=0;
		int lop=0;
		String employeecode=empid;
		
		if(s1.equals(s2))
		{
		//////System.out.println("~~~~~~~~~~~"+s2);
		//~~~~~~~~~~~~~~code to approve in leavestatus and send mail
		s3=alhrrm.approve(empid,fromdate,todate,leavetype);
		log.debug("LeaveAuthenticationforEmpBO::Leave Type is"+s3 );
		if(s3.equals("Approved"))
		{
		s4=sm.sendmail2emp(tomailid,from1,password,sub,body);
		}
		}//equls if
		}
		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
		
		
		
		 if(leavetype.equals("1/2CL")||leavetype.equals("1/2SL")||leavetype.equals("1/2PL")) // FOR LEAVE CALCULATION
  		{
		//////System.out.println(".....Leave TYPE.........."+leavetype);
		String fromdate=date1;
		String todate=date2;
		int cll=0;
		int sll=0;
		int pll=0;
		int lop=0;
		String employeecode=empid;
		
		if(s1.equals(s2))
		{
		//////System.out.println("~~~~~~~~~~~"+s2);
		ladaohalf1.approve(employeecode,empname,leavetype,fromdate,todate,cll,sll,pll,lop);
		//pw.println("<html><body><h3>"+s1+"</h3>");
			//~~~~~~~~~~~~~~code to approve in leavestatus and send mail
		s3=alhrrm.approve(empid,fromdate,todate,leavetype);
		log.debug("LeaveAuthenticationforEmpBO::Leave Type is"+s3 );
				//////System.out.println("~~~~~~~~Result of Approve is........."+s3);
if(s3.equals("Approved"))
		{
		s4=sm.sendmail2emp(tomailid,from1,password,sub,body);
		}
		}//equls if
		}
		/////////////////////////////////////////////////////////
	}
	catch(Exception ex)
	{
		
		log.error(util_stacktrace.sendingErrorAsString(ex));
	}
	s1="<font color=blue face=verdana size=2>"+empid +"</font>&nbsp;<font color=red face=verdana size=2>"+s1+"</font>";
	HttpSession se=req.getSession(true);
	se.setAttribute("response",s1);
	se.setAttribute("response1",s4);
	//ServletContext sc=getServletContext();
	//RequestDispatcher rd=sc.getRequestDispatcher("/searchingforauthe.jsp");
	//rd.include(req,res);
	res.sendRedirect("Approve Leave");
	//pw.println("<font color=#900F8E face=verdana size=2>"+empid +"</font>&nbsp;<font color=#900F8E face=verdana size=2>"+s1+"</font>");
	}
}


		