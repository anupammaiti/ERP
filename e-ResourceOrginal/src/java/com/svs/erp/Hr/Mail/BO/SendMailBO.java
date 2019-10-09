package com.svs.erp.Hr.Mail.BO;
import com.svs.erp.Hr.Mail.BO.*;

 import java.util.ArrayList;
 
import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.log4j.Logger;

import java.sql.*;
import java.lang.Exception;

import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

public class SendMailBO extends HttpServlet
{
Connection con=null;
//DBConnection cc=new DBConnection();
ConnectionUtils connectionUtils=new ConnectionUtils();

static Logger logger = Logger.getLogger(SendMailBO.class.getName());
ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();

public SendMailBO(){
	
		try
		{
			//////System.out.println("SendMailBO::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("SendMailBO::ConnectionPool----->>>>After Open --->>>>Test");

		}catch(Exception ex)
		{
			                      logger.error(util_stacktrace.sendingErrorAsString(ex));
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
	{
		
		PrintWriter pw=response.getWriter();
		//String ledgername="";
		//String empid="";
		String s1="";
		String date1;
		String from1=(request.getParameter("from")).trim();
		String password=(request.getParameter("pass")).trim();
		String sub=(request.getParameter("sub")).trim();
		//////System.out.println("SendMail:::From mail............"+from1);
		try
	{
	PreparedStatement ps=con.prepareStatement("select * from templeave");
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
	//////System.out.println("SendMail:::To mail............"+rs.getString(3));
	String empid=rs.getString(2);
	String empname=rs.getString(1);
	String emailid=rs.getString(3);
	String fromdate=rs.getString(4);
	String todate=rs.getString(5);
	double cl=rs.getDouble(6);
	double sl=rs.getDouble(7);
	double pl=rs.getDouble(8);
	double lop=rs.getDouble(9);
	double totalleaves=rs.getDouble(10);
	double remain=rs.getDouble(11);
	double takenleaves=rs.getDouble(12);
	double ab=rs.getDouble(13);
	double tl=rs.getDouble(14);
////////System.out.println("Leave Details............"+emailid+"..."+cl+"..."+sl+"..."+pl+"..."+lop+"..."+ab+"..."+totalleaves+"..."+remain+"..."+takenleaves+"...");
ArrayList<String> date2 = new ArrayList<String>();
PreparedStatement ps1=con.prepareStatement("select date from empabsent where empid=? and authentication=? and date between ? and ?");
ps1.setString(1,empid);
ps1.setString(2,"AB");
ps1.setString(3,fromdate);
ps1.setString(4,todate);
	ResultSet rs1=ps1.executeQuery();
	while(rs1.next())
	{
	date1=rs1.getString(1);
	date2.add(rs1.getString(1));
	}
	/*-------------------------------------*/
	ArrayList<String> casual = new ArrayList<String>();
PreparedStatement ps2=con.prepareStatement("select date from empabsent where empid=? and authentication=? and date between ? and ?");
ps2.setString(1,empid);
ps2.setString(2,"CL");
ps2.setString(3,fromdate);
ps2.setString(4,todate);
	ResultSet rs2=ps2.executeQuery();
	while(rs2.next())
	{
	//date1=rs2.getString(1);
	casual.add(rs2.getString(1));
	}
	/*------------------------------------*/
	/*-------------------------------------*/
	ArrayList<String> sick = new ArrayList<String>();
PreparedStatement ps3=con.prepareStatement("select date from empabsent where empid=? and authentication=? and date between ? and ?");
ps3.setString(1,empid);
ps3.setString(2,"SL");
ps3.setString(3,fromdate);
ps3.setString(4,todate);
	ResultSet rs3=ps3.executeQuery();
	while(rs3.next())
	{
	//date1=rs2.getString(1);
	sick.add(rs3.getString(1));
	}
	/*------------------------------------*/
	/*-------------------------------------*/
	ArrayList<String> prev = new ArrayList<String>();
PreparedStatement ps4=con.prepareStatement("select date from empabsent where empid=? and authentication=? and date between ? and ?");
ps4.setString(1,empid);
ps4.setString(2,"PL");
ps4.setString(3,fromdate);
ps4.setString(4,todate);
	ResultSet rs4=ps4.executeQuery();
	while(rs4.next())
	{
	//date1=rs2.getString(1);
	prev.add(rs4.getString(1));
	}
	/*------------------------------------*/
	/*-------------------------------------*/
	ArrayList<String> LOP = new ArrayList<String>();
PreparedStatement ps5=con.prepareStatement("select date from empabsent where empid=? and authentication=? and date between ? and ?");
ps5.setString(1,empid);
ps5.setString(2,"LOP");
ps5.setString(3,fromdate);
ps5.setString(4,todate);
	ResultSet rs5=ps5.executeQuery();
	while(rs5.next())
	{
	//date1=rs2.getString(1);
	LOP.add(rs5.getString(1));
	}
	/*------------------------------------*/
	/*-------------------------------------*/
	ArrayList<String> cl1 = new ArrayList<String>();
PreparedStatement ps6=con.prepareStatement("select date from empabsent where empid=? and authentication=? and date between ? and ?");
ps6.setString(1,empid);
ps6.setString(2,"1/2CL");
ps6.setString(3,fromdate);
ps6.setString(4,todate);
	ResultSet rs6=ps6.executeQuery();
	while(rs6.next())
	{
	//date1=rs2.getString(1);
	cl1.add(rs6.getString(1));
	}
	/*------------------------------------*/
	/*-------------------------------------*/
	ArrayList<String> sl1 = new ArrayList<String>();
PreparedStatement ps7=con.prepareStatement("select date from empabsent where empid=? and authentication=? and date between ? and ?");
ps7.setString(1,empid);
ps7.setString(2,"1/2SL");
ps7.setString(3,fromdate);
ps7.setString(4,todate);
	ResultSet rs7=ps7.executeQuery();
	while(rs7.next())
	{
	//date1=rs2.getString(1);
	sl1.add(rs7.getString(1));
	}
	/*------------------------------------*/
	/*-------------------------------------*/
	ArrayList<String> pl1 = new ArrayList<String>();
PreparedStatement ps8=con.prepareStatement("select date from empabsent where empid=? and authentication=? and date between ? and ?");
ps8.setString(1,empid);
ps8.setString(2,"1/2PL");
ps8.setString(3,fromdate);
ps8.setString(4,todate);
	ResultSet rs8=ps8.executeQuery();
	while(rs8.next())
	{
	//date1=rs2.getString(1);
	pl1.add(rs8.getString(1));
	}
	/*------------------------------------*/
	/*-------------------------------------*/
	ArrayList<String> LOP1 = new ArrayList<String>();
PreparedStatement ps9=con.prepareStatement("select date from empabsent where empid=? and authentication=? and date between ? and ?");
ps9.setString(1,empid);
ps9.setString(2,"1/2LOP");
ps9.setString(3,fromdate);
ps9.setString(4,todate);
	ResultSet rs9=ps9.executeQuery();
	while(rs9.next())
	{
	//date1=rs2.getString(1);
	LOP1.add(rs9.getString(1));
	}
	/*------------------------------------*/
	/*-------------------------------------*/
	ArrayList<String> cl2 = new ArrayList<String>();
PreparedStatement ps11=con.prepareStatement("select date from empinout1 where empid=? and leavetype=? and date between ? and ?");
ps11.setString(1,empid);
ps11.setString(2,"1/2CL");
ps11.setString(3,fromdate);
ps11.setString(4,todate);
	ResultSet rs11=ps11.executeQuery();
	while(rs11.next())
	{
	//date1=rs2.getString(1);
	cl2.add(rs11.getString(1));
	}
	cl2.addAll(cl1);
	/*------------------------------------*/
	/*-------------------------------------*/
	ArrayList<String> sl2 = new ArrayList<String>();
PreparedStatement ps12=con.prepareStatement("select date from empinout1 where empid=? and leavetype=? and date between ? and ?");
ps12.setString(1,empid);
ps12.setString(2,"1/2SL");
ps12.setString(3,fromdate);
ps12.setString(4,todate);
	ResultSet rs12=ps12.executeQuery();
	while(rs12.next())
	{
	//date1=rs2.getString(1);
	sl2.add(rs12.getString(1));
	}
	sl2.addAll(sl1);
	/*------------------------------------*/
	/*-------------------------------------*/
	ArrayList<String> pl2 = new ArrayList<String>();
PreparedStatement ps13=con.prepareStatement("select date from empinout1 where empid=? and leavetype=? and date between ? and ?");
ps13.setString(1,empid);
ps13.setString(2,"1/2PL");
ps13.setString(3,fromdate);
ps13.setString(4,todate);
	ResultSet rs13=ps13.executeQuery();
	while(rs13.next())
	{
	//date1=rs2.getString(1);
	pl2.add(rs13.getString(1));
	}
	pl2.addAll(pl1);
	/*------------------------------------*/
	/*-------------------------------------*/
	ArrayList<String> lop2 = new ArrayList<String>();
PreparedStatement ps14=con.prepareStatement("select date from empinout1 where empid=? and leavetype=? and date between ? and ?");
ps14.setString(1,empid);
ps14.setString(2,"1/2LOP");
ps14.setString(3,fromdate);
ps14.setString(4,todate);
	ResultSet rs14=ps14.executeQuery();
	while(rs14.next())
	{
	//date1=rs2.getString(1);
	lop2.add(rs14.getString(1));
		}
		lop2.addAll(LOP1);
	/*------------------------------------*/
		/*-------------------------------------*/
	ArrayList<String> half = new ArrayList<String>();
PreparedStatement ps15=con.prepareStatement("select date from empinout1 where empid=? and leavetype='XX' and tothrs<=? and date between ? and ?");
ps15.setString(1,empid);
ps15.setString(2,"04:15:00");
ps15.setString(3,fromdate);
ps15.setString(4,todate);
	ResultSet rs15=ps15.executeQuery();
	while(rs15.next())
	{
	//date1=rs2.getString(1);
	half.add(rs15.getString(1));
		}
		
	/*------------------------------------*/
	
		/*-------------------------------------*/
	ArrayList<String> half1= new ArrayList<String>();
PreparedStatement ps16=con.prepareStatement("select date from empinout1 where empid=? and leavetype='OD' and totnod<=? and date between ? and ?");
ps16.setString(1,empid);
ps16.setString(2,"04:15:00");
ps16.setString(3,fromdate);
ps16.setString(4,todate);
	ResultSet rs16=ps16.executeQuery();
	while(rs16.next())
	{
	//date1=rs2.getString(1);
	half1.add(rs16.getString(1));
		}
		half.addAll(half1);
	/*------------------------------------*/
	/*-------------------------------------*/
	ArrayList<String> half2= new ArrayList<String>();
PreparedStatement ps17=con.prepareStatement("select date from empinout1 where empid=? and leavetype='PER' and totnod<=? and date between ? and ?");
ps17.setString(1,empid);
ps17.setString(2,"04:15:00");
ps17.setString(3,fromdate);
ps17.setString(4,todate);
	ResultSet rs17=ps17.executeQuery();
	while(rs17.next())
	{
	//date1=rs2.getString(1);
	half2.add(rs17.getString(1));
		}
		half.addAll(half2);
	/*------------------------------------*/
	
	
	
			//////////////////////////////calling function to send mail
String body="<table border=10  bordercolor=#006699 bgcolor=#FFFFCC><tr><td><table><tr><td><font color=#000099><strong><br>Dear "+empname+"[<font color=#006600>"+empid+"</font>],</strong> Greetings of the day!<br><br><br><table align=center><tr align=center><td align=center> <font color=#CC00FF size=3 ><strong><u>Leave Details</u></strong></font></td></tr><br><tr align=center><td align=center><table border=0 align=center bordercolor=#999999 style=border-bottom-style:outset style=border-right-style:outset ><tr align=center bgcolor=#FFFFCC><td width=40><font color=#CC00FF><strong>CL</strong></font></td><td width=40><font color=#CC00FF><strong>SL</strong></font></td><td width=40><font color=#CC00FF><strong>PL</strong></font></td><td width=40><font color=#CC00FF><strong>Tour</strong></font></td><td width=70><font color=#CC00FF><strong>AB(without Inform)</strong></font></td><td width=40><font color=#CC00FF><strong>LOP</strong></font></td><td width=140><font color=#CC00FF><strong>Total Consumed Leaves</strong></font></td></tr><tr align=center bgcolor=#FFFF99><td>"+cl+"</td><td>"+sl+"</td><td>"+pl+"</td><td>"+tl+"</td><td>"+ab+"</td><td><font color=#FC0C06>"+lop+"</font></td><td>"+takenleaves+"</td></tr></table><br><table border=0 align=center style=border-right-color:#999999 style=border-bottom-color:#999999><tr bgcolor=#FFFFCC><td width=15><font color=#CC00FF><strong>AB </strong></font></td><td><font color=navy>"+date2+"</font></td></tr><tr bgcolor=#FFFF99><td width=15><font color=#CC00FF><strong>1/2Day </strong></font></td><td><font color=navy>"+half+"</font></td></tr><tr bgcolor=#FFFFCC><td width=15 ><font color=#CC00FF><strong>CL </strong></font></td><td><font color=navy>"+casual+"</font></td></tr><tr bgcolor=#FFFF99><td width=15><font color=#CC00FF><strong>SL </strong></font></td><td><font color=navy>"+sick+"</font></td></tr><tr bgcolor=#FFFFCC><td width=15><font color=#CC00FF><strong>PL </strong></font></td><td><font color=navy>"+prev+"</font></td></tr><tr bgcolor=#FFFF99><td width=15><font color=#CC00FF><strong>LOP </strong></font></td><td><font color=navy>"+LOP+"</font></td></tr><tr bgcolor=#FFFFCC><td width=15><font color=#CC00FF><strong>1/2CL </strong></font></td><td><font color=navy>"+cl2+"</font></td></tr><tr bgcolor=#FFFF99><td width=15><font color=#CC00FF><strong>1/2SL </strong></font></td><td><font color=navy>"+sl2+"</font></td></tr><tr bgcolor=#FFFFCC><td width=15><font color=#CC00FF><strong>1/2PL </strong></font></td><td><font color=navy>"+pl2+"</font></td></tr><tr bgcolor=#FFFF99><td width=15><font color=#CC00FF><strong>1/2LOP </strong></font></td><td><font color=navy>"+lop2+"</font></td></tr></table><br><br>Please revert us regarding your leaves taken between <font color=#006600>"+fromdate+" and "+todate+"</font>.<hr></font><br><font color=#CC00FF>Regards,<br>HR Team.</font></td></tr></table></td></tr><tr><td><br><font color=#003366 face=Verdana, Arial, Helvetica, sans-serif><a href=http://119.82.117.69:9999/e-Resource target=_blank>Click here to apply leave in the portal.</a></font></td></tr></table> ";
		SendMail sm = new SendMail();
		///////////////////////////////////////////////////////////////////////////////////////
		s1=sm.sendmail(empid,empname,emailid,fromdate,todate,cl,sl,pl,lop,totalleaves,remain,takenleaves,ab,from1,password,sub,body);
		//pw.println("<html><body><h3>"+s1+"</h3>");
		}//while
	}
	catch(Exception ex)
	{
		logger.error(util_stacktrace.sendingErrorAsString(ex));
	}
/*finally {
					try
       				 {
						//////System.out.println("SendMailBO::ConnectionPool--Before Close --->>>>Test");
						if (con != null) connectionUtils.setDBClose();
						//////System.out.println("SendMailBO::ConnectionPool--After Close--->>>>Test");
        				} catch (SQLException e)
        				{
            			//logger.error("The statement cannot be closed.", e);
						//////System.out.println("Exception"+e);
        				}
					}*/
	//ServletContext sc=getServletContext();
	//RequestDispatcher rd=sc.getRequestDispatcher("/leavesearch.jsp");
	//rd.include(request,response);
	s1="<font color=red face=verdana size=2>"+s1+"</font";
	HttpSession se=request.getSession(true);
	se.setAttribute("msg",s1);
	response.sendRedirect("leavesearchmail");
	pw.println("<font color=red face=verdana size=2>"+s1+"</font>");
	}
}


		