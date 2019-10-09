// Java Document
package com.svs.erp.leavecheck.DAO;

import java.sql.*;
import java.io.*;

import org.apache.log4j.Logger;

import  com.svs.erp.Hr.db.*;
import com.svs.erp.leavecheck.BO.statuscheck;
import com.svs.util.ConvertStackTracetoString;


public class statuscheckDAO 
{
	
	private String companyname;
	Connection con;
	Statement st;
	PreparedStatement pr,pr1;
	ResultSet rs;
	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	static Logger logger = Logger.getLogger(statuscheckDAO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	

	int oldslno=0;
	int slno=0;
	String id=null;


	public statuscheckDAO ()
	{
		try
		{
			//////System.out.println("statuscheckDAO::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("statuscheckDAO::ConnectionPool----->>>>After Open --->>>>Test");


		}
		catch(Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
	}

	public void delete(String empid,String fromdate,String todate)
	{
		try
		{
			pr=con.prepareStatement("update leavestatus set stat='hide' where employeecode=? and fromdate=? and todate=? and status='Approved' || 	status='Rejected'");
			pr.setString(1,empid);
			pr.setString(2,fromdate);
			pr.setString(3,todate);
			//////System.out.println("leave status checked out.........for"+empid+".....from..."+fromdate+"....todate....."+todate);
			pr.executeUpdate();
		}
		catch(Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			try
			{
				//////System.out.println("statuscheckDAO::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("statuscheckDAO::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
	}
	
	
	public String getNoOfLeaves(String empid){
			String noofleaves=null; 
		try{
		
			pr=con.prepareStatement("select noofleaves from leavestatus where employeecode=?");
			pr.setString(1,empid);
			rs=pr.executeQuery();
			while(rs.next()){
				noofleaves=rs.getString(1);
			}
			
			
		}catch(Exception ex){
			logger.error(util_stacktrace.sendingErrorAsString(ex));
		}finally {
			try
			{
				//////System.out.println("statuscheckDAO::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("statuscheckDAO::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		
		
		return noofleaves;
	}
}

