package com.svs.erp.Leaveauthe.DAO;

import java.sql.*;
import java.io.*;
import java.lang.*;

import  com.svs.erp.Hr.db.*;
import com.svs.erp.Leaveauthe.BO.LeaveAuthenticationforEmpHRBO;
import com.svs.util.ConvertStackTracetoString;

import org.apache.log4j.Logger;

public class ApproveleaveHRRMDAO{
	
		static Logger log = Logger.getLogger(ApproveleaveHRRMDAO.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
		
	Connection con;
	ConnectionUtils connectionUtils=new ConnectionUtils();

	PreparedStatement pr,pr1,pr4,pr5;

	ResultSet rs=null,rs1=null,rs2=null,rs5=null;
	DBConnection cc=new DBConnection();

	String p,q;



	public ApproveleaveHRRMDAO()
	{
		try
		{
			//////System.out.println("ApproveleaveHRRMDAO::ConnectionPool----->>>>Before Open");

			con=connectionUtils.getDBConnection();
			//////System.out.println("ApproveleaveHRRMDAO::ConnectionPool----->>>>After Open");

		}catch(Exception ex)
		{
			log.error(util_stacktrace.sendingErrorAsString(ex));
		}
	}

	/*-------------Approve announcement--------------*/

	public String approve(String empid,String fromdate,String todate,String leavetype)throws SQLException,IOException
	{
		///////////////////referenceno generation//////////////////////////////////////
		try{
			pr5=con.prepareStatement("select count(referenceno) from leavestatus where status='Approved'");
			rs5=pr5.executeQuery();

			int referenceno=0;
			while(rs5.next())
			{
				int oldreferenceno=rs5.getInt(1);
				referenceno=oldreferenceno+1;

				//////System.out.println("ApproveleaveHRRMDAO::olddb----"+oldreferenceno);
				//////System.out.println("ApproveleaveHRRMDAO::db----"+referenceno);
			}

			String referno=referenceno+"-"+fromdate;


			pr=con.prepareStatement("UPDATE leavestatus set status=?,referenceno=?,fromdate=?,todate=?,leavetype=?  where employeecode=? and fromdate=? and status='Open'");

			pr.setString(1,"Approved");							 
			pr.setString(2,referno);
			pr.setString(3,fromdate);
			pr.setString(4,todate);
			pr.setString(5,leavetype);
			pr.setString(6,empid);
			pr.setString(7,fromdate);


			int i=pr.executeUpdate();   
			//////System.out.println("ApproveleaveHRRMDAO::ApproveDAO.......Updated...."+i);
			if(i==1)
			{
				p="Approved";
				log.debug("ApproveleaveHRRMDAO:: Leave is "+p);
			}
			else
			{
				p="Not Approved";
				log.debug("ApproveleaveHRRMDAO:: Leave is "+p);
			}

			//rs.close();

		}
		catch(Exception ex)
		{
			log.error(util_stacktrace.sendingErrorAsString(ex));
		}
		return p;

	}

	/*-------------Reject announcement--------------*/

	public String reject(String employeecode,String fromdate,String todate)throws SQLException,IOException
	{
		try{
			pr1=con.prepareStatement("UPDATE leavestatus set status=? where employeecode=? and fromdate=? and todate=?");

			pr1.setString(1,"Rejected");
			pr1.setString(2,employeecode);
			pr1.setString(3,fromdate);
			pr1.setString(4,todate);
			int j=pr1.executeUpdate();
			if(j==1)
			{
				q="Rejected the leave applications";
				log.debug("ApproveleaveHRRMDAO:: Leave is "+q);
			}
			else
			{
				q="Accepted the leave applications";
				log.debug("ApproveleaveHRRMDAO:: Leave is "+q);
			}
		}
		catch(Exception ex)
		{
			log.error(util_stacktrace.sendingErrorAsString(ex));
		}finally {
			try
			{
				//////System.out.println("ApproveleaveHRRMDAO::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("ApproveleaveHRRMDAO::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				log.error(util_stacktrace.sendingErrorAsString(e));
				
			}
		}
		return q;

	}


}



