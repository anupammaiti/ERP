package com.svs.erp.Hr.DAO;

import java.sql.*;
import java.io.*;
import java.lang.*;

import org.apache.log4j.Logger;

import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

public class EmployeeloginsaveDAO {

	Connection con;
	ConnectionUtils connectionUtils=new ConnectionUtils();

	PreparedStatement pr;
	Statement st;
	ResultSet rs;
	//DBConnection cc=new DBConnection();
	private static Logger logger = Logger.getLogger(EmployeeloginsaveDAO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();


	public EmployeeloginsaveDAO()
	{
		try
		{
			//////System.out.println("EmployeeloginsaveDAO::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("EmployeeloginsaveDAO::ConnectionPool----->>>>After Open --->>>>Test");


		}catch(Exception ex)
		{
			logger.error(util_stacktrace.sendingErrorAsString(ex));
		}
	}
	public void insert(String username,String password)throws SQLException,IOException
	{
		try
		{
			pr=con.prepareStatement("insert into employeelogin values(?,?)");

			pr.setString(1,username);
			pr.setString(2,password);

			pr.executeUpdate();
		}
		catch(Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		finally {
			try
			{
				//////System.out.println("EmployeeloginsaveDAO::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("EmployeeloginsaveDAO::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
	}

}
