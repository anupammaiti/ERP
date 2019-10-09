package com.svs.erp.Leaveauthe.DAO;

import java.io.IOException;
import java.sql.*;

import com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

import org.apache.log4j.Logger;


public class LeaveauthenticationLOPDAO {
	
	static Logger log = Logger.getLogger(LeaveauthenticationLOPDAO.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	LossOfPayLeaveAuthenticationStatusDao statusLopAuthenticationDao=new LossOfPayLeaveAuthenticationStatusDao();
	
	LossOfPayLeaveAuthenticationApplicationDao apllicationLopAuthenticationDao=new LossOfPayLeaveAuthenticationApplicationDao();
	
	
	Connection con;

	//DBConnection connection=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();

	private String leavetype;

	private String fromdate;

	private String todate;
	String s1="";
	
	//String s2=leavetype+" Authentication Successfully From "+fromdate+" to "+todate;
	
	public  LeaveauthenticationLOPDAO()throws IOException,SQLException,Exception
	{
		
			try
			{
				//////System.out.println("LeaveauthenticationLOPDAO::ConnectionPool----->>>>Before Open --->>>>Test");

				con=connectionUtils.getDBConnection();
				//////System.out.println("LeaveauthenticationLOPDAO::ConnectionPool----->>>>After Open --->>>>Test");


			}catch(Exception ex)
			{
				log.error(util_stacktrace.sendingErrorAsString(ex));
			}
		}
	
	public String approve(String employeecode,String empname,String leavetype,String fromdate,String todate,double cll,double sll,double pll,double lop)throws SQLException,IOException
    {
	try{
		if(leavetype.equals("LOP"))
		{
			s1=statusLopAuthenticationDao.lossOfPayApprove(employeecode, empname, leavetype, fromdate, todate, cll, sll, pll, lop);
			
			//////System.out.println("LeaveauthenticationLOPDAO::lopauthenticationDao::lossOfPayApprove-->>>");
			log.debug("LeaveauthenticationLOPDAO:: Leave Type Is "+s1);
		}
		
		String s2=leavetype+" Authentication Successfully From "+fromdate+" to "+todate;
		
		if(leavetype.equals("LOP") && s2.equals(s1))
		{
		
		apllicationLopAuthenticationDao.lossOfPays2Approve(employeecode, empname, leavetype, fromdate, todate, cll, sll, pll, lop);
		
		//////System.out.println("LeaveauthenticationLOPDAO::stwoDao::lossOfPays2Approve-->>>");
		log.debug("LeaveauthenticationLOPDAO:: Leave Type Is LOP and "+s2);
		
		}
	}

	catch (Exception e) {
		// TODO: handle exception
		log.error(util_stacktrace.sendingErrorAsString(e));
	}finally {
		try
		{
			//////System.out.println("LeaveauthenticationLOPDAO::ConnectionPool--Before Close --->>>>Test");
			if (con != null) connectionUtils.setDBClose();
			//////System.out.println("LeaveauthenticationLOPDAO::ConnectionPool--After Close--->>>>Test");
		} catch (SQLException e)
		{
			log.error(util_stacktrace.sendingErrorAsString(e));
		}
	}
return s1;

	
}
}