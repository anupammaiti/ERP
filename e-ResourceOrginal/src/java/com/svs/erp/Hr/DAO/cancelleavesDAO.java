package com.svs.erp.Hr.DAO;

import java.io.*;
import java.sql.*;
import java.util.*;

import org.apache.log4j.Logger;

import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;


public class cancelleavesDAO
{
	Connection con=null;
	ConnectionUtils connectionUtils=new ConnectionUtils();
	private static Logger logger = Logger.getLogger(cancelleavesDAO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	Statement st,st1;
	PreparedStatement pr,pr1,pr2,pr3,pr4,pr5;
	//DBConnection cc=new DBConnection();
	int a=0,b=0,c=0;
	public cancelleavesDAO()
	{
	
	try
	{
		//////System.out.println("cancelleavesDAO::ConnectionPool----->>>>Before Open --->>>>Test");
		con=connectionUtils.getDBConnection();
		//////System.out.println("cancelleavesDAO::ConnectionPool----->>>>After Open --->>>>Test");

	   		}
		catch (Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}

	}
	public String cancel(String id,String fromdate,String todate,String leavetype)throws Exception
	{
	String s="";
			try
	{
	
	pr4=con.prepareStatement("select * from empabsent where empid=? and date between ? and ? and authentication=?");
	pr4.setString(1,id);
	pr4.setString(2,fromdate);
	pr4.setString(3,todate);
	pr4.setString(4,leavetype);
       ResultSet rs=pr4.executeQuery();
		if(rs.next())
		{
	pr1=con.prepareStatement("delete from leavestatus where employeecode=? and fromdate=? and todate=?");
	pr1.setString(1,id);
	pr1.setString(2,fromdate);
	pr1.setString(3,todate);
       a=pr1.executeUpdate();
	   //////System.out.println("Cancel Leaves in Leavestatus table.....");
	   ///////////////////////////////inserting new one
	pr2=con.prepareStatement("delete from leaveapplications where empid=? and fromdate between ? and ?");
		pr2.setString(1,id);
	pr2.setString(2,fromdate);
	pr2.setString(3,todate);
       
		b=pr2.executeUpdate();
		 //////System.out.println("Cancel Leaves in LeaveApplication table.....");
		 if(b!=0)
		 {
		 if(leavetype.equals("CL"))
		 {
		 //////System.out.println(".........Cancellation of leaves...CL...no.of leaves cancelled...."+b);
		 pr5=con.prepareStatement("update leaveopen set CLBAL=(CLBAL+'"+b+"')");
		 pr5.executeUpdate();
		 }
		 if(leavetype.equals("SL"))
		 {
		 pr5=con.prepareStatement("update leaveopen set SLBAL=(SLBAL+'"+b+"')");
		 pr5.executeUpdate();
		 //////System.out.println(".........Cancellation of leaves...SL...no.of leaves cancelled...."+b);
		 }
		 if(leavetype.equals("PL"))
		 {
		 pr5=con.prepareStatement("update leaveopen set PLBAL=(PLBAL+'"+b+"')");
		 pr5.executeUpdate();
		 //////System.out.println(".........Cancellation of leaves...PL...no.of leaves cancelled...."+b);
		 }
		
		 }
		 //~~~~~~~~~~~~~~~~~~~~~for all in empinout1
		 pr3=con.prepareStatement("Update empabsent set authentication='AB' where empid=? and date between ? and ?");
		pr3.setString(1,id);
	pr3.setString(2,fromdate);
	pr3.setString(3,todate);
       
		c=pr3.executeUpdate();
		 //////System.out.println("Cancel Leaves in empabsent table.....");
		 if(a!=0&&b!=0&&c!=0)
		 {
		 s="Leaves Cancelled successfully from"+fromdate+"to"+todate+"";
		 
		 }
		  else if(a!=0&&c!=0)
		 {
		 s="Leaves Cancelled successfully from"+fromdate+"to"+todate+"";
		 }
		 else
		 {
		 s="LeaveApplications not found from"+fromdate+"to"+todate+"";
		 }
		 }//if main
		 else
		 {
		 s="LeaveApplications not found from"+fromdate+"to"+todate+"";
		 }
		 /*
		 //~~~~~~~~~~~~~~~~~~~~~for all in empabsent
		 pr4=con.prepareStatement("Update empabsent set designation=? where designation=?");
		pr4.setString(1,change);
	pr4.setString(2,designation);
       
		pr4.executeUpdate();
		 //////System.out.println("Updated Designation.....For all employees in empabsent");*/
				
				
				
		}
	catch(Exception e)
	{
		logger.error(util_stacktrace.sendingErrorAsString(e));
	}finally {
		try
		{

			if (con != null) connectionUtils.setDBClose();


		} catch (SQLException e)
		{

			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
	}
		
		return s;

	}
}