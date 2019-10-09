package com.svs.erp.Leaveauthe.BO;
import com.svs.erp.Leaveauthe.DAO.*;
import com.svs.util.ConvertStackTracetoString;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.log4j.Logger;

import java.sql.*;
import java.lang.Exception;

public class LeaveadjustmentBO extends HttpServlet
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
			
		//////////////////////////////////////////////////////////////////////////////////////////FOR 1/2TC/1/2CS/1/2PS/1/2ST/1/2TP in empabsent
		LeaveAdjustmentDaoImpl ladao1 = new LeaveAdjustmentDaoImpl();
			////////////////////////////////////////////////////////////////// FOR COUNT OF  LEAVES in leaveapplications
		HalfLeaveAdjustmentDao ladao3 = new HalfLeaveAdjustmentDao();
		/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
		//////////////////////////////////////////////////////////////////////////////////////////FOR 1/2TC/1/2CS/1/2PS/1/2ST/1/2TP in empabsent and 1/2 LOP also
		HalfLOPLeaveAdjustmentDao ladaolop1 = new HalfLOPLeaveAdjustmentDao();
			////////////////////////////////////////////////////////////////// FOR COUNT OF  LEAVES in leaveapplications 1/2 LOP and 1/2 Leaves
		HalfLOPLeaveAdjustmentDaoImpl ladaolop3 = new HalfLOPLeaveAdjustmentDaoImpl();
		/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
		
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
		
		  
		//////////////////////////////////////////for half leaves......................................
		 if(leavetype.equals("1/2CS")||leavetype.equals("1/2SP")||leavetype.equals("1/2PC")||leavetype.equals("1/2TC")||leavetype.equals("1/2TS")||leavetype.equals("1/2TP"))// FOR AUTHENTICATION 
  		{
		s1=ladao1.submit(empid,empname,designation,company,leavetype,date1,date2);
		s2=leavetype+" Authentication Successfully From "+date1+" to "+date2;
		//////System.out.println("~~~~~~~~~~~s1........"+s1);
		//pw.println("<html><body><h3>"+s1+"</h3>");
		}
		////////////////////////////////////////////////~~~~~~~~~~~~~~~~~~~end here
		
		 if(leavetype.equals("1/2CS")||leavetype.equals("1/2SP")||leavetype.equals("1/2PC")||leavetype.equals("1/2TC")||leavetype.equals("1/2TS")||leavetype.equals("1/2TP")) // FOR LEAVE CALCULATION
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
		//////System.out.println("~~~~~~s2~~~~~"+s2);
		ladao3.approve(employeecode,empname,leavetype,fromdate,todate,cll,sll,pll,lop);
		//pw.println("<html><body><h3>"+s1+"</h3>");
		}//equls if
		}
		//////////////////////////////////////////////////////////
		//////////////////////////////////////////for 1/2leaves...........and  1/2LOP...........................
		 if(leavetype.equals("1/2LOPC")||leavetype.equals("1/2LOPS")||leavetype.equals("1/2LOPP")||leavetype.equals("1/2LOPT"))// FOR AUTHENTICATION 
  		{
		s1=ladaolop1.submit(empid,empname,designation,company,leavetype,date1,date2);
		s2=leavetype+" Authentication Successfully From "+date1+" to "+date2;
		//////System.out.println("~~~~~~~~~~~s1........"+s1);
		//pw.println("<html><body><h3>"+s1+"</h3>");
		}
		////////////////////////////////////////////////~~~~~~~~~~~~~~~~~~~end here
		
		 if(leavetype.equals("1/2LOPC")||leavetype.equals("1/2LOPS")||leavetype.equals("1/2LOPP")||leavetype.equals("1/2LOPT")) // FOR LEAVE CALCULATION
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
		//////System.out.println("~~~~~~s2~~~~~"+s2);
		ladaolop3.approve(employeecode,empname,leavetype,fromdate,todate,cll,sll,pll,lop);
		//pw.println("<html><body><h3>"+s1+"</h3>");
		}//equls if
		}
		//////////////////////////////////////////////////////////

		
	}
	catch(Exception ex)
	{
		logger.error(util_stacktrace.sendingErrorAsString(ex));
	}

	//ServletContext sc=getServletContext();
	//RequestDispatcher rd=sc.getRequestDispatcher("/searchingforautheadjust.jsp");
	//rd.include(req,res);
	s1="<font color=blue face=verdana size=2>"+empid +"</font>&nbsp;<font color=red face=verdana size=2>"+s1+"</font>";
	HttpSession se=req.getSession(true);
	se.setAttribute("response",s1);
	res.sendRedirect("searchingforautheadjust.jsp");
	if(s1=="")
	{
	s1="No Records Found";
	}
	//pw.println("<font color=#900F8E face=verdana size=2>"+empid +"</font>&nbsp;<font color=#900F8E face=verdana size=2>"+s1+"</font>");
	}
}


		