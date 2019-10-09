package com.svs.hrerp.login;

import java.sql.*;
import java.io.*;
import java.lang.*;

import org.apache.log4j.Logger;

import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

public class LoginDetailsUpdateHrDao{

	Connection con=null;

	PreparedStatement pr1=null;

	ResultSet rs=null;

	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	static Logger logger = Logger.getLogger(LoginDetailsUpdateHrDao.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	int r=0;


	public  LoginDetailsUpdateHrDao()
	{
		try
		{
			//////System.out.println("LoginDetailsUpdateHrDao::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("LoginDetailsUpdateHrDao::ConnectionPool----->>>>After Open --->>>>Test");


		}catch(Exception ex)
		{
			logger.error(util_stacktrace.sendingErrorAsString(ex));
		}
	}
	public int updateinfo(String username,String password)throws SQLException,IOException
	{
		try
		{
		pr1=con.prepareStatement("insert into  employeelogin(username,password)values(?,?);");
		pr1.setString(2,password);
		pr1.setString(1,username);
		r=pr1.executeUpdate();
		////////System.out.println(".....User logging in DAO........");
		if(r!=0)
		{
			r=1;
		}
		else
		{
			r=0;
		}
		}catch (Exception ex){
			logger.error(util_stacktrace.sendingErrorAsString(ex));
		}
		finally {
			try
			{
				//////System.out.println("LoginDetailsUpdateHrDao ::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("LoginDetailsUpdateHrDao::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}

		return r;
	}
	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`user login code

}
