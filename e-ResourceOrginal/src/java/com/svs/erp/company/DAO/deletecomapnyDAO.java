// Java Document
package com.svs.erp.company.DAO;

import java.sql.*;
import java.io.*;

import org.apache.log4j.Logger;

import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;


public class deletecomapnyDAO 
{
	private String companyname;
	Connection con;
	Statement st;
	PreparedStatement pr,pr1;
	ResultSet rs;
	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	final static Logger logger = Logger.getLogger(deletecomapnyDAO.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	int oldslno=0;
    int slno=0;
	String id=null;


	public deletecomapnyDAO ()
	{
	try
	   {
		

		con=connectionUtils.getDBConnection();
		

	   }
		catch(Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
	}
	
	public void delete(String id)
	{
	try
	{
	pr=con.prepareStatement("delete from companylist where companycode=?");
					   
	//pr.setString(1,id);
	//pr.setString(2,event);
	pr.setString(1,id);

	pr.executeUpdate();
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
	}
}

