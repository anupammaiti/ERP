package com.svs.erp.Leaveauthe.DAO;

import java.io.IOException;
import java.sql.*;

import com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

import org.apache.log4j.Logger;


public class LeaveauthenticationLOPhalfDAO{
static Logger log = Logger.getLogger(LeaveauthenticationLOPhalfDAO.class);
ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	HalfLOPLeaveAuthenticationDao lopLeaveAuthenticationDao=new HalfLOPLeaveAuthenticationDao();
	
	HalfLOPLeaveAuthentication lopLeaveAuthentication=new HalfLOPLeaveAuthentication();
	
	Connection con;

	//DBConnection connection=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();

	private int date1;

	private int date2;

	private String leavetype;
	String s1="";
	
	String s2=leavetype+" Authentication Successfully From "+date1+" to "+date2;

	public LeaveauthenticationLOPhalfDAO()throws IOException,SQLException,Exception
	{
		
			try
			{
				//////System.out.println("LeaveauthenticationLOPhalfDAO::ConnectionPool----->>>>Before Open --->>>>Test");

				con=connectionUtils.getDBConnection();
				//////System.out.println("LeaveauthenticationLOPhalfDAO::ConnectionPool----->>>>After Open --->>>>Test");


			}catch(Exception ex)
			{
				log.error(util_stacktrace.sendingErrorAsString(ex));
			}
		}
	
	public String submit(String empid,String empname,String designation,String company,String leavetype,String date1,String date2,String sess) throws  IOException,Exception,SQLException
	{
	////////System.out.println("in DAO1 HALF....Leave......"+leavetype+"..........Session......."+sess);
	 try
  { 
	
		if(leavetype.equals("1/2LOP"))
			{
			 s1=lopLeaveAuthenticationDao.HalfLopSubmit(empid, empname, designation, company, leavetype, date1, date2, sess);
			 
			 //////System.out.println("LeaveauthenticationLOPhalfDAO::lopLeaveAuthenticationDao::HalfLopSubmit(1/2lop)-->>>");
			 log.debug("LeaveauthenticationLOPhalfDAO::Leave Type Is"+s1);
			}
		
		String s2=leavetype+" Authentication Successfully From "+date1+" to "+date2;
		
		
		//////System.out.println("LeaveauthenticationLOPhalfDAO::------------>>"+s1+"and"+s2+"date"+date1+"TO"+date2);
		
		if(leavetype.equals("1/2LOP") && s2.equals(s1))
		 {
			 lopLeaveAuthentication.LopSubmit(empid, empname, designation, company, leavetype, date1, date2, sess);
			 
			 //////System.out.println("LeaveAuthenticationLOPHalfDAO::lopLeaveAuthentication::LopSubmit(1/2lop&S2)-->>>");
			  log.debug("LeaveauthenticationLOPhalfDAO::Leave Type Is"+s2);
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			//////System.out.println("Exception"+e);
		}finally {
			try
			{
				//////System.out.println("LeaveauthenticationLOPhalfDAO::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("LeaveauthenticationLOPhalfDAO::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				log.error("LeaveauthenticationLOPhalfDAO:: Exception Raised", e);
				//////System.out.println("Exception"+e);
			}
		}
	return s1;
	
		
	}
	
	
}
