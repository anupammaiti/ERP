package com.svs.erp.Hr.BO;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import  com.svs.erp.Hr.db.*;
import com.svs.erp.Hr.DAO.LeaveApplicationDaoImpl;
import com.svs.erp.Hr.DAO.LeaveApplicationDao;
import com.svs.erp.Hr.Mail.BO.*;
import com.svs.util.ConvertStackTracetoString;

import org.apache.log4j.Logger;


public class LeaveApplicationBO extends HttpServlet
{
	final static Logger logger = Logger.getLogger(LeaveApplicationBO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();


	
	Collection leave_coll=new ArrayList();
	LeaveApplicationDao leaveApplication1=new LeaveApplicationDao();//call  class to  find leaves are there r  not

	LeaveApplicationDaoImpl leaveApplication=new LeaveApplicationDaoImpl();
	Connection con=null;
	ConnectionUtils connectionUtils=new ConnectionUtils();

	SendMailRM sm = new SendMailRM();
	int rr;
	String result=null;
	int res1=0;
	String ack=null;
	String s1=null;
	String fromemail=null;
	String tomail=null;
	String tomail1=null;
	String odhours="HH:MM";
	String sess="not select";
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
		String empid=req.getParameter("employeecode");		
		String name=req.getParameter("empname");
		String designation=req.getParameter("designation");
		String company=req.getParameter("company");
		String reporting=req.getParameter("reporting");
		String leavetype=req.getParameter("leavetype");
		odhours=req.getParameter("odhours");
		String date1=req.getParameter("date1");
		String date2=req.getParameter("date2");
		sess=req.getParameter("sess");
		//String purposeofleave=req.getParameter("purposeofleave");
		//String phone=req.getParameter("addressonleave");
		fromemail=req.getParameter("frommail");
		tomail=req.getParameter("tomail");
		String rmname=req.getParameter("rmname");
		String rmid=req.getParameter("rmid");
		String password=req.getParameter("mailpassword");
		String purposeofleave=req.getParameter("mailpurpose");
		leave_coll.add(name);
		leave_coll.add(company);
		leave_coll.add(empid);
		leave_coll.add(designation);
		leave_coll.add(date1);
		leave_coll.add(date2);
		leave_coll.add("Open");
		leave_coll.add("-");
		leave_coll.add(reporting);
		leave_coll.add(leavetype);
		leave_coll.add(sess);
		leave_coll.add(odhours);
		leave_coll.add(purposeofleave);
		HttpSession session=req.getSession(true);

		//session.setAttribute("empname",name);
		//session.setAttribute("designation",designation);
		//session.setAttribute("company",company);
		//session.setAttribute("reporting",reporting);
		//session.setAttribute("leavetype",leavetype);
		//session.setAttribute("odhours",odhours);
		//session.setAttribute("date1",date1);
		//session.setAttribute("date2",date2);
		//session.setAttribute("sess",sess);
		//session.setAttribute("purposeofleave",purposeofleave);
		//session.setAttribute("phone",phone);
		//session.setAttribute("fromemail",fromemail);
		//session.setAttribute("toemail",tomail);
		String open="Open";
		String ref="-";
		//////System.out.println("LeaveApplicationBO::----->>>"+leave_coll);
		

		try
		{
			String comp=(String)req.getSession().getAttribute("comp");

			ResultSet rs=null;
			PreparedStatement pr=null;
			//DBConnection cc=new DBConnection();
			//con=cc.connection1();
			//////System.out.println("LeaveApplicationBO::ConnectionPool--Before Open--->>>>Test1");
			con=connectionUtils.getDBConnection();
			//////System.out.println("LeaveApplicationBO::ConnectionPool--After Open--->>>>Test2");

			pr=con.prepareStatement("select empid,name from employee where empno=?");
			pr.setString(1,reporting);
			rs=pr.executeQuery();
			while(rs.next())
			{
				tomail1=rs.getString(1);
				rmname=rs.getString(2);
			}
			//////System.out.println("LeaveApplicationBO ::--->>From Application........"+fromemail);
			//////System.out.println("LeaveApplicationBO ::--->>To Application........"+tomail1);

			//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			res1=leaveApplication1.insert(empid,leavetype,date1,date2);
			//////System.out.println("LeaveApplicationBO ::--->>Recoed Available Checked.......RETURN VALUE..........."+res1);
			if(res1==1)
			{
				leave_coll.add(rmname);
				rr=leaveApplication.insert(name,company,empid,designation,date1,date2,open,ref,reporting,leavetype,sess,odhours,purposeofleave,rmname,comp);

				//////System.out.println("LeaveApplicationBO ::---->>>DAO RETURN VALUE..........."+rr);
				//////////////////////////////calling function to send mail
				//String from1="leaveadmin@kvkenergy.com";
				leave_coll.clear();
				if(rr==1)
				{
					String from1=fromemail;
					String emailid=tomail1;
					////////System.out.println(".......from...."+from1+"..........tomail......"+emailid);
					//String password="sss123456789";
					String sub="Leave Application";

					//////////////////////////////calling function to send mail
					String body="<table border=10  bordercolor=#006699 bgcolor=#FFFFCC><tr><td><table><tr><td><font face=Verdana, Arial, Helvetica, sans-serif color=#000066>Dear <font color=#FF6600>"+rmname+"["+reporting+"],</font> Greetings of the day!!!</font><br><br><br></td></tr><tr><td><table border=1 rules=all><tr><td><font color=#003366 face=Verdana, Arial, Helvetica, sans-serif>Leave Type:</font></td><td><font color=#FF6600>"+leavetype+"</font></td></tr><tr><td><font color=#003366 face=Verdana, Arial, Helvetica, sans-serif>OD Time:</font></td><td><font color=#FF6600>"+odhours+"</font><font size=1 color=#003366>&nbsp;(in case of on duty)</font></td></tr><tr><td><font color=#003366 face=Verdana, Arial, Helvetica, sans-serif>Session:</font></td><td><font color=#FF6600>"+sess+"</font><font size=1 color=#003366>&nbsp;(in case 1/2 day leaves)</font></td></tr><tr><td colspan=2><font size=3 color=#003366>Purpose of leave:: "+purposeofleave+"</font></td></tr></table></td></tr><tr><td><font size=3 color=#003366></font></td></tr><tr><td><br><br><br><font face=Verdana, Arial, Helvetica, sans-serif color=#000066>Please approve leaves from</font> <font color=#FF6600>"+date1+"</font> <font face=Verdana, Arial, Helvetica, sans-serif color=#000066>and</font> <font color=#FF6600>"+date2+"</font></td></tr><tr><td><br><br><br><font face=Verdana, Arial, Helvetica, sans-serif color=#000066>Regards,<br><font color=#FF6600>"+name+"["+empid+"],</font> </font></td></tr></table></td></tr><tr><td><br><font color=#003366 face=Verdana, Arial, Helvetica, sans-serif><a href=http://119.82.117.69:9999/e-Resource target=_blank>Click here to approve / reject leaves.</a></font></td></tr></table>";



					///////////////////////////////////////////////////////////////////////////////////////

					//////////////////////////////////////////////////////////////////////////////////////////////////
					//////System.out.println("LeaveApplicationBO::--------------->>>>>>>>>>>>>>");
					s1=sm.sendmail(emailid,from1,password,sub,body);
					//////System.out.println("LeaveApplicationBO::--------------->>>>>>>>>>>>>>Test");


					ack="Leave application have been sent. "+s1;
					//////System.out.println("LeaveApplicationBO::--------------->>>"+s1);
					logger.debug("LeaveApplicationBO::------->>"+s1+"EmployeeId is "+empid);
					session.setAttribute("ackmsg",ack);
					res.sendRedirect("EmployeeProRata?empid="+empid+"");
				}
				else if(rr==0)
				{
					//////System.out.println("LeaveApplicationBO::--------------->>>11111111");
					ack="Leave application request have been not processed.....try again";
					session.setAttribute("ackmsg",ack);
					res.sendRedirect("EmployeeProRata?empid="+empid+"");
				}
				else if(rr==2)
				{
					ack="Leave application requests already there on the same days.....try another date";
					session.setAttribute("ackmsg",ack);
					res.sendRedirect("EmployeeProRata?empid="+empid+"");
				}
			}//main if
			else if(res1==0)
			{
				ack="No records found to take leave on the day"+date1+"";
				session.setAttribute("ackmsg",ack);
				res.sendRedirect("EmployeeProRata?empid="+empid+"");
			}
		}
		catch (Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			try
			{
				
				if (con != null) connectionUtils.setDBClose();
				
			}  

			catch (Exception e) {
			logger.error("LeaveApplicationBO::Exception Raised" , e);
				
			}

		}		
	}
}