package com.svs.hrerp.logoff;

import java.io.*;

import javax.servlet.http.*;
import javax.servlet.*;

import org.apache.log4j.Logger;
import org.jfree.util.Log;

import java.sql.*;

import  com.svs.erp.Hr.db.*;
import com.svs.hrerp.login.LoginCheckUp;
import com.svs.util.ConvertStackTracetoString;

public class logoff extends HttpServlet
{
	String user=null;
	Connection con=null;
	ConnectionUtils connectionUtils=new ConnectionUtils();
	static Logger log = Logger.getLogger(LoginCheckUp.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();   
	PreparedStatement ps=null;
	ResultSet rs=null;	
	int r=0;
	public logoff()
	{

		try
		{
			////////System.out.println("logoff::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			////////System.out.println("logoff::ConnectionPool----->>>>After Open --->>>>Test");

		}catch(Exception ex)
		{
			                      //////System.out.println(ex);
		}


	}
	public int getinfo(String userlog)throws SQLException,IOException
	{

		//	user=us;
		try{
			//DBConnection cc=new DBConnection();
			//con=cc.connection1();
			//Class.forName("com.mysql.jdbc.Driver");
			//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"hrerp","root","root");
			ps=con.prepareStatement("update employeelogin set status='logoff' , ip='0.0.0.0' where username=?");
			ps.setString(1,userlog);
			r=ps.executeUpdate();
			////////System.out.println("..r value is....LOGOFFDAO...."+r);
			////////System.out.println("..User..LOGOFF .....success...");
			r=1;

		}
		catch(Exception e)
		{
			////////System.out.println("logoff error.."+e);
			Log.error(util_stacktrace.sendingErrorAsString(e));
		}
		finally {
			try
			{
				////////System.out.println("logoff::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				////////System.out.println("logoff::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
		return r;
	}

}
