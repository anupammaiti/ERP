package com.svs.erp.Hr.DAO;

import java.io.*;
import java.sql.*;
//import java.sql.DriverManager;
//import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;

import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;
public class MonthExtract 
{
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String  month=null;
	//String totalwhrs;
	double totalwhrs1;
	double WHRSMONTH;
	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	static Logger log = Logger.getLogger(MonthExtract.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	

	PreparedStatement pr;

	public MonthExtract() throws SQLException,IOException,Exception
	{
		try
		{
			//////System.out.println("MonthExtract::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("MonthExtract::ConnectionPool----->>>>After Open --->>>>Test");

		}
		catch (Exception e)
		{
			log.error(util_stacktrace.sendingErrorAsString(e));
		}
	}
	//////////////////////////////////////////////

	public String getvalue(String empno,String fromdate,String todate)throws Exception
	{
		try{
			pr=con.prepareStatement("select date_format(?,'%M')as Monthname;");
			pr.setString(1,fromdate);
			//pr.setString(2,fromdate);
			//pr.setString(3,todate);
			rs=pr.executeQuery();
			while(rs.next())
			{
				month=rs.getString(1);
				//totalwhrs1=totalwhrs/3600;
				////////System.out.println(month);
				////////System.out.println("DAO"+rs.getDouble(1));
			}
		}
		catch(Exception e){
			log.error(util_stacktrace.sendingErrorAsString(e));
		}

		finally {
			try
			{
				//////System.out.println("MonthExtract::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("MonthExtract::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				log.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		return month;
	}
}
