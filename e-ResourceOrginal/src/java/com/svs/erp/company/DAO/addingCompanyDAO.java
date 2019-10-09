// Java Document
package com.svs.erp.company.DAO;

import java.sql.*;
import java.io.*;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.*;
import com.svs.erp.company.BO.CompanyRegistrationBO;
import com.svs.util.ConvertStackTracetoString;



public class addingCompanyDAO 
{
	private String companyname;
	Connection con;
	Statement st;
	PreparedStatement pr;
	ResultSet rs;
	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();

	final static Logger logger = Logger.getLogger(addingCompanyDAO.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();


	public addingCompanyDAO ()
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
	
	public void insert(String companyname)
	{
	try
	{
	pr=con.prepareStatement("insert into companylist (companyname)values(?)");
	pr.setString(1,companyname);
	pr.executeUpdate();
	}
	catch(Exception e)
	{
		logger.error(util_stacktrace.sendingErrorAsString(e));
	}finally {
		try
		{
			//////System.out.println("addingCompanyDAO::ConnectionPool--Before Close --->>>>Test");
			if (con != null) connectionUtils.setDBClose();
			//////System.out.println("addingCompanyDAO::ConnectionPool--After Close--->>>>Test");
		} catch (SQLException e)
		{
			
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
	}
	
	}
}

