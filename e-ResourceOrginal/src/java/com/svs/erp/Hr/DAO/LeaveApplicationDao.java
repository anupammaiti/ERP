package com.svs.erp.Hr.DAO;

import java.io.*;
import java.sql.*;
import java.util.*;

import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

import org.apache.log4j.Logger;


public class LeaveApplicationDao
{
static Logger log = Logger.getLogger(LeaveApplicationDao.class);
ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	Connection con;
	Statement st;
	ResultSet rs;
	PreparedStatement pr;
	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();

	Iterator iter;
	String a[]=new String[1000];
	String empid=null;
	int res=0;
	int countrow=1;

	public LeaveApplicationDao ()
	{
		try
		{
			//////System.out.println("LeaveApplicationDao::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("LeaveApplicationDao::ConnectionPool----->>>>After Open --->>>>Test");

		}
		catch (Exception e)
		{
			log.error(util_stacktrace.sendingErrorAsString(e));
		}

	}
	public int insert(String empid,String leavetype,String date1,String date2)throws Exception
	{

		//////System.out.println("LeaveApplicationDao::EMP Leave Checking at LAPP DAO1.."+empid+"....."+leavetype+"....."+"....."+date1+"......"+date2);
		try
		{
			if(leavetype.equals("1/2TL")||leavetype.equals("1/2CL")||leavetype.equals("1/2PL")||leavetype.equals("1/2SL")||leavetype.equals("1/2LOP"))
			{
				//////System.out.println("LeaveApplicationDao::If EMP Leave...type is..."+leavetype);

				String s3="select empid,date,leavetype from empinout1 where empid=? and date=? and (first>='10:30:00' || last<='14:45:00') and leavetype='XX'";
				PreparedStatement ps=null;
				ps=con.prepareStatement(s3);
				ps.setString(1,empid);	
				ps.setString(2,date1);

				rs=ps.executeQuery();
				int c=0;
				while(rs.next())
				{
					//////System.out.println("........IF "+leavetype+"........");
					String LT=rs.getString(3).trim();
					//////System.out.println(LT);

					c++;
				}
				if(c!=0)
				{
					res=1;
				}
				else
				{
					res=0;
				}

			}//1/2 Leaves


			else if(leavetype.equals("CL")||leavetype.equals("SL")||leavetype.equals("PL")||leavetype.equals("TL")||leavetype.equals("LOP")||leavetype.equals("SPL"))
			{
				//////System.out.println("LeaveApplicationDao::If EMP Leave...type is--->>>"+leavetype);
				res=1;
			}//CL,SL,.............

			else if(leavetype.equals("PER")||leavetype.equals("OD"))
			{
				//////System.out.println("If EMP Leave...type is..."+leavetype);
				String s3="select empid,date,leavetype from empinout1 where empid=? and date=?  and leavetype='XX'";
				PreparedStatement ps=null;
				ps=con.prepareStatement(s3);
				ps.setString(1,empid);	
				ps.setString(2,date1);

				rs=ps.executeQuery();
				int c1=0;	
				while(rs.next())
				{
					String LT=rs.getString(3).trim();
					//////System.out.println(LT);
					c1++;
				}
				if(c1!=0)
				{
					res=1;
				}
				else
				{
					res=0;
				}


			}//OD,PER............

			else 
			{
				//////System.out.println("LeaveApplicationDao::--->>>If EMP Leave...type is..."+leavetype);
				log.debug("LeaveApplicationDao::Employee Leave Type Is"+leavetype);

				res=0;
			}


		}
		catch (Exception e)
		{
			log.error(util_stacktrace.sendingErrorAsString(e));
		}
		finally 
		{
			try
			{	//////System.out.println("LeaveApplicationDao::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("LeaveApplicationDao::ConnectionPool--After Close --->>>>Test");
			} 

			catch (Exception e) {
				
				log.error("LeaveApplicationDao::Exception Raised"+e);

			}

		}
		return res;
	}	
}


