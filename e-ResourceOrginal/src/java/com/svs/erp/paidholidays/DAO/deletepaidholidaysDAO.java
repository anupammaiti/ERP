// Java Document
package com.svs.erp.paidholidays.DAO;

import java.sql.*;
import java.io.*;

import org.apache.log4j.Logger;

import  com.svs.erp.Hr.db.*;
import com.svs.erp.paidholidays.BO.paidholidaysBO;
import com.svs.util.ConvertStackTracetoString;


public class deletepaidholidaysDAO 
{
	private String companyname;
	Connection con;
	Statement st;
	PreparedStatement pr,pr1;
	ResultSet rs;
	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	static Logger logger = Logger.getLogger(deletepaidholidaysDAO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	

	int oldslno=0;
	int slno=0;
	String id=null;


	public deletepaidholidaysDAO ()
	{
		try
		{
			//////System.out.println("deletepaidholidaysDAO ::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("deletepaidholidaysDAO ::ConnectionPool----->>>>After Open --->>>>Test");
		}
		catch(Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
	}

	public void delete(String date)
	{
		try
		{
			pr=con.prepareStatement("delete from ph where date=?");

			//pr.setString(1,id);
			//pr.setString(2,event);
			pr.setString(1,date);

			pr.executeUpdate();
		}
		catch(Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			try
			{
				//////System.out.println("deletepaidholidaysDAO ::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("deletepaidholidaysDAO ::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
	}
}

