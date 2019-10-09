package com.svs.erp.Hr.DAO;

import java.io.*;
import java.sql.*;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;

import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;
public class totalworkinghrsOD 
{
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	//String totalwhrs;
	double totalwhrsOD=0.0;
	double totalwhrsOD1=0.0;
	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();

	PreparedStatement pr;
	
	static Logger logger = Logger.getLogger(totalworkinghrsmonth1.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	
	public totalworkinghrsOD() throws SQLException,IOException,Exception
	{
		try
		{
			//////System.out.println("totalworkinghrsOD::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("totalworkinghrsOD::ConnectionPool----->>>>After Open --->>>>Test");


		}
		catch (Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
	}
	//////////////////////////////////////////////

	public Double getvalue2(String empno,String fromdate,String todate)throws Exception
	{

		try{
			pr=con.prepareStatement("select  Sum(Time_to_Sec(odtime)) from empinout1 where empid=? and date between ? and ?");
			pr.setString(1,empno);
			pr.setString(2,fromdate);
			pr.setString(3,todate);
			rs=pr.executeQuery();
			while(rs.next())
			{
				totalwhrsOD=rs.getDouble(1);

				int hours=(int)totalwhrsOD/3600;
				////////System.out.println("HH:"+hours);
				int minutes=(int)((totalwhrsOD%3600)/60.0);
				String leng=Integer.toString(minutes);
				int length=leng.length();
				////////System.out.println("length:"+length);

				String totalwhrs2=hours+"."+minutes;
				////////System.out.println("TOTAL HRS:"+totalwhrs2);

				double tot=Double.parseDouble(totalwhrs2);
				////////System.out.println("TOTAL OD:               "+tot);
				totalwhrsOD1=tot;

			}
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		finally {
			try
			{
				//////System.out.println("totalworkinghrsOD::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("totalworkinghrsOD::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		return  totalwhrsOD1;
	}
}
