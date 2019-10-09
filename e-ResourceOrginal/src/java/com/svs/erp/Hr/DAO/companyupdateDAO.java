package com.svs.erp.Hr.DAO;

import java.io.*;
import java.sql.*;
import java.util.*;

import org.apache.log4j.Logger;

import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;


public class companyupdateDAO
{
	Connection con;
	ConnectionUtils connectionUtils=new ConnectionUtils();

	//Statement st,st1;
	//ResultSet rs,rs1,rs2,rs5,rs6,rs7;
	PreparedStatement pr,pr1,pr2;
	//DBConnection cc=new DBConnection();
	private static Logger logger = Logger.getLogger(companyupdateDAO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	public companyupdateDAO ()
	{

		try
		{
			
			con=connectionUtils.getDBConnection();
			

		}
		catch (Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}

	}
	public String insert(String company,String change)throws Exception
	{
		String s="";
		try
		{

			pr1=con.prepareStatement("update companylist set companyname=?  where companyname=?");
			pr1.setString(1,change);
			pr1.setString(2,company);
			pr1.executeUpdate();
			//////System.out.println("Updated Company Name.....");
			///////////////////////////////inserting new one
			pr2=con.prepareStatement("Update employee set companyname=? where companyname=?");
			pr2.setString(1,change);
			pr2.setString(2,company);

			pr2.executeUpdate();
			//////System.out.println("Updated Company.....For all employees");

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
				//logger.error("The statement cannot be closed.", e);
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		return s;

	}
}