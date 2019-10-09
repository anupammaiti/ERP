// Java Document
package com.svs.erp.paidholidays.DAO;

import java.sql.*;
import java.io.*;

import org.apache.log4j.Logger;

import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;


public class paidholidaysDAO 
{
	private String companyname;
	Connection con=null;
	Statement st;
	PreparedStatement pr,pr1;
	ResultSet rs;
	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	static Logger logger = Logger.getLogger(paidholidaysDAO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	int oldslno=0;
	int slno=0;
	String id=null;


	public paidholidaysDAO ()
	{
		try
		{
			//////System.out.println("paidholidaysDAO ::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("paidholidaysDAO ::ConnectionPool----->>>>After Open --->>>>Test");


		}
		catch(Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
	}

	public String insert(String event,String date)
	{String s=null;
	try
	{

		boolean flag=false;
		String dayname=null;
		PreparedStatement ps1=con.prepareStatement("select dayname(?) from dual");
		ps1.setString(1,date);
		ResultSet rs1=ps1.executeQuery();
		while(rs1.next())
		{
			dayname=rs1.getString(1);
			if(dayname.equals("Sunday"))
			{
				flag=true;
			}
		}
		if(flag==false)
		{
			pr=con.prepareStatement("insert into ph values(?,?,?)");


			pr1=con.prepareStatement("select count(slno) from ph");
			rs=pr1.executeQuery();


			while(rs.next())
			{
				oldslno=rs.getInt("count(slno)");
				slno=oldslno+1;
			}
			id=Integer.toString(slno);

			pr.setString(1,id);
			pr.setString(2,event);
			pr.setString(3,date);

			pr.executeUpdate();
		}//flag
		else
		{
			s="Paid Holiday comes on Sunday not added in list";
		}

	}//try
	catch(Exception e)
	{
		logger.error(util_stacktrace.sendingErrorAsString(e));
	}finally {
		try
		{
			//////System.out.println("paidholidaysDAO ::ConnectionPool--Before Close --->>>>Test");
			if (con != null) connectionUtils.setDBClose();
			//////System.out.println("paidholidaysDAO ::ConnectionPool--After Close--->>>>Test");

		} catch (SQLException e)
		{
			//logger.error("The statement cannot be closed.", e);
			//////System.out.println("Exception"+e);
		}
	}

	return s;
	}
}

