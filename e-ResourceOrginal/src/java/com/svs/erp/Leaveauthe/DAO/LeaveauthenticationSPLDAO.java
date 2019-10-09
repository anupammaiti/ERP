package com.svs.erp.Leaveauthe.DAO;
import java.io.*;
import java.sql.*;
import java.lang.*;
import java.util.Date;
import java.util.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

import org.apache.log4j.Logger;

public class LeaveauthenticationSPLDAO
{
	
	static Logger log = Logger.getLogger(LeaveauthenticationSPLDAO.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	Connection con=null;
	ConnectionUtils connectionUtils=new ConnectionUtils();
	PreparedStatement ps=null;
	PreparedStatement ps1=null;
	PreparedStatement ps2=null;
	PreparedStatement ps3=null;
	ResultSet rs=null;
	ResultSet rs1=null;
	ResultSet rs2=null;
		ResultSet rs3=null;
	String authentication=null;
String s1="";
String abtothrs="08:15:00";
	public LeaveauthenticationSPLDAO() throws IOException,SQLException,Exception
	{
		try
		{
			//////System.out.println("LeaveauthenticationSPLDAO::ConnectionPool----->>>>Before Open --->>>>Test");

			con=connectionUtils.getDBConnection();
			//////System.out.println("LeaveauthenticationSPLDAO::ConnectionPool----->>>>After Open --->>>>Test");

		}catch(Exception ex)
		{
			                      log.error(util_stacktrace.sendingErrorAsString(ex));
		}
		//Class.forName("com.mysql.jdbc.Driver");
		//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"hrerp","root","root");
		//Connection con=null;
	//DBConnection cc=new DBConnection();
	//con=cc.connection1();
	}//constructor

	public String submit(String empid,String empname,String designation,String company,String leavetype,String date1,String date2) throws  IOException,Exception,SQLException
	{
	//////System.out.println("LeaveAuthenticationSPLDAO:::ladao.submit():::..Leavetype........."+leavetype);
	 try
  { 
   
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// calculating date difffffffffffffff
	Calendar cal1 = Calendar.getInstance();
	Calendar cal2 = Calendar.getInstance();
	//////////////String splitting for first date
	String array[]=date1.split("-");
		String val1=array[0].trim();	
		int val11=Integer.parseInt(val1);	
		////////System.out.println(val11);
						String val2=array[1].trim();
							int val12=Integer.parseInt(val2);	
							////////System.out.println(val12);
						String val3=array[2].trim();
							int val13=Integer.parseInt(val3);	
							////////System.out.println("END OF FIRST DATE"+val13);
							////////System.out.println("FD"+val11+val12+val13);
///////////////////////////////////////////
//////////////String splitting for last date
	String arr[]=date2.split("-");
		String val4=arr[0].trim();	
		int val14=Integer.parseInt(val4);
		////////System.out.println(val14);	
						String val5=arr[1].trim();
							int val15=Integer.parseInt(val5);	
							////////System.out.println(val15);
						String val6=arr[2].trim();
							int val16=Integer.parseInt(val6);	
							////////System.out.println("END OF LAST DATE"+val16);
							////////System.out.println("FD"+val14+val15+val16);
///////////////////////////////////////////
		
	cal1.set(val11, val12, val13);

	cal2.set(val14, val15, val16);
	
long milis1 = cal1.getTimeInMillis();
long milis2 = cal2.getTimeInMillis();
long diff = milis2 - milis1;
long diffDays = diff / (24 * 60 * 60 * 1000);
//////System.out.println("date diff is"+diffDays);
int  findiff=(int)diffDays+1;
//////System.out.println("date diff is"+findiff);
	///////////////////////////////////////////////////////////////////////////////////////////////NEW CODE TO AUTHENTICATE ~~~~~SPL~~~~~~ only~~~~~~~~~
for(int i=0;i<findiff;i++)
	{
	String dt = date1;  // Start date specify here
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c = Calendar.getInstance();
		c.setTime(sdf.parse(dt));
		c.add(Calendar.DATE, i);  // number of days to add
		dt = sdf.format(c.getTime());
		//////System.out.println("LeaveAuthenticationSPLDAO:::ladao.submit():::Authenticated on the date is...................."+dt);
	/////////////////////////////////////////////////////////////////~~~~~~~~~~~~~~~CODE STARTS HERE TO AUTHENTICATION SPL only~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	//  //////System.out.println("LeaveAuthenticationSPLDAO:::ladao.submit():::starting of the if condition......"+leavetype);
       if(leavetype.equals("SPL"))
  {
  // //////System.out.println("LeaveAuthenticationSPLDAO:::ladao.submit():::inside the if condition......"+leavetype);
     String s3="select empid,date,authentication from empabsent where empid=? and date=?";
		PreparedStatement ps=null;
		 ps=con.prepareStatement(s3);
		ps.setString(1,empid);	
		ps.setString(2,dt);	
			// //////System.out.println("DAO1...SL..."+empid);
			// //////System.out.println("DAO1....SL.."+dt);
		  rs=ps.executeQuery();
			
  		if(rs.next()==true)
		{
		String LT=rs.getString(3).trim();
		//////System.out.println(LT);
		 if(LT.equals("AB")){
	    //while(rs3.next()==true)
		//{
		  ////////System.out.println("4");
        ps=con.prepareStatement("update empabsent  set  authentication=?,tothrs=? where (empid=? and date=?)");
		ps.setString(1,leavetype);
		//ps2.setString(2,odhours);
		ps.setString(2,abtothrs);
		ps.setString(3,empid);
		
		ps.setString(4,dt);
		//ps.executeUpdate();
		int ins2 =0;
        ins2 = ps.executeUpdate();
		s1=leavetype+" Authentication Successfully From "+date1+" to "+date2;
		////////System.out.println(" Authenticated success... if RECORD FOUND.......SPL.."+leavetype+"...on"+dt);
        //}//while
		}//if
		else
		{
		s1="Authentication records are there on "+date1+" please check once";
		}/////////////~~~~~~~~~~~~~~~~~~~~~inner if closed if AB
 		 }//~~~~~~~~~~~~if   true
		 else if(rs.next()==false)
		{ String employname=null;
		PreparedStatement pname=con.prepareStatement("select name from employee where empno=?");
		pname.setString(1,empid);
		ResultSet rsname=pname.executeQuery();
		while(rsname.next())
		{
		employname=rsname.getString(1);
		}//while closed
		ps=con.prepareStatement("insert into empabsent(empid,empname,date,authentication,tothrs) values(?,?,?,?,?)");
		
		ps.setString(1,empid);
		ps.setString(2,employname);
		ps.setString(3,dt);
		ps.setString(4,leavetype);
		ps.setString(5,abtothrs);
		//ps.executeUpdate();
		int ins2 =0;
        ins2 = ps.executeUpdate();
			////////System.out.println(" Authenticated success....If RECORD NOT FOUND........SL...."+leavetype+"...on"+dt);
		s1=leavetype+" Authentication Successfully From "+date1+" to "+date2;
		log.debug("LeaveauthenticationSPLDAO::Leave Type is "+s1);
		//s1="No records are there on "+date1+" please check once";
		}
  
  }//if SL
  else
			{
			s1="No records on "+dt;
					log.debug("LeaveauthenticationSPLDAO::Leave Type is "+s1);

 			 }
			 /////////////////////////////!!!!!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ AuTHENTICATION CODE END HERE
	}///////// 2nd main for loop
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
	
  }//try
	 catch(SQLException e)
	 {
	 			
		 log.error(util_stacktrace.sendingErrorAsString(e)); 
	}
	 	finally {
					try
       				 {
						//////System.out.println("LeaveauthenticationSPLDAO::ConnectionPool--Before Close --->>>>Test");
						if (con != null) connectionUtils.setDBClose();
						//////System.out.println("LeaveauthenticationSPLDAO::ConnectionPool--After Close--->>>>Test");
        				} catch (SQLException e)
        				{
        					log.error(util_stacktrace.sendingErrorAsString(e));
        				}
					}
//if(ins==1)
//{
//s1="<h4>Successfully Inserted </h4>";
//}
return s1;
	}
}
