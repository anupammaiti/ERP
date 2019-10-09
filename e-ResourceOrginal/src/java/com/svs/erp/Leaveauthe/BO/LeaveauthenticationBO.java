package com.svs.erp.Leaveauthe.BO;
import com.svs.erp.Leaveauthe.DAO.*;
import com.svs.util.ConvertStackTracetoString;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.log4j.Logger;

import java.sql.*;
import java.lang.Exception;

public class LeaveauthenticationBO extends HttpServlet
{
	
	static Logger logger = Logger.getLogger(LeaveadjustmentBO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		
		PrintWriter pw=res.getWriter();
		//String ledgername="";
		String empid="";
		String s1="";
		
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
		////////System.out.println(empname);
		////////System.out.println(leavetype);
		////////System.out.println(date1);
		String s2=null;
		 if(leavetype.equals("OD")||leavetype.equals("PER"))//for OD and PER
  		{
		s1=ladao.submit(empid,empname,designation,company,leavetype,date1,odhours);
		//pw.println("<html><body><h3>"+s1+"</h3>");
		}
		   if(leavetype.equals("TL")||leavetype.equals("CL")||leavetype.equals("PL"))// FOR AUTHENTICATION 
  		{
		s1=ladao1.submit(empid,empname,designation,company,leavetype,date1,date2);
		s2=leavetype+" Authentication Successfully From "+date1+" to "+date2;
		////////System.out.println("~~~~~~~~~~~s1........"+s1);
		//pw.println("<html><body><h3>"+s1+"</h3>");
		}
		//////////////////////////////////////////for half leaves......................................
		 if(leavetype.equals("1/2TL")||leavetype.equals("1/2CL")||leavetype.equals("1/2PL")||leavetype.equals("1/2SL"))// FOR AUTHENTICATION 
  		{
		s1=ladaohalf.submit(empid,empname,designation,company,leavetype,date1,date2,sess);
		s2=leavetype+" Authentication Successfully From "+date1+" to "+date2;
		////////System.out.println("~~~~~~~~~~~s1........"+s1);
		//pw.println("<html><body><h3>"+s1+"</h3>");
		}
		////////////////////////////////////////////////~~~~~~~~~~~~~~~~~~~end here
		
		 if(leavetype.equals("SL"))// FOR AUTHENTICATION 
  		{
		s1=ladaosl.submit(empid,empname,designation,company,leavetype,date1,date2);
		s2=leavetype+" Authentication Successfully From "+date1+" to "+date2;
		////////System.out.println("~~~~~~~~~~~s1........"+s1);
		//pw.println("<html><body><h3>"+s1+"</h3>");
		}
		
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
		//pw.println("<html><body><h3>"+s1+"</h3>");
		
		}//equls if
		}
		//////////////////////////////////////////////////////////
		 if(leavetype.equals("1/2CL")||leavetype.equals("1/2SL")||leavetype.equals("1/2PL")) // FOR LEAVE CALCULATION
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
		ladaohalf1.approve(employeecode,empname,leavetype,fromdate,todate,cll,sll,pll,lop);
		//pw.println("<html><body><h3>"+s1+"</h3>");
		}//equls if
		}
		/////////////////////////////////////////////////////////
	}
	catch(Exception ex)
	{
		logger.error(util_stacktrace.sendingErrorAsString(ex));
	}
	s1="<font color=blue face=verdana size=2>"+empid +"</font>&nbsp;<font color=red face=verdana size=2>"+s1+"</font>";
	HttpSession se=req.getSession(true);
	se.setAttribute("response",s1);
	//ServletContext sc=getServletContext();
	//RequestDispatcher rd=sc.getRequestDispatcher("/searchingforauthe.jsp");
	//rd.include(req,res);
	res.sendRedirect("searchingforauthe.jsp");
	//pw.println("<font color=#900F8E face=verdana size=2>"+empid +"</font>&nbsp;<font color=#900F8E face=verdana size=2>"+s1+"</font>");
	}
}


		