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
public class totalworkinghrsmonth1 
{
	Connection con=null;
	ConnectionUtils connectionUtils=new ConnectionUtils();

	static Logger logger = Logger.getLogger(totalworkinghrsmonth1.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	Statement st=null;
	ResultSet rs=null;
	//String totalwhrs;
	double totalwhrsmonth;
	double  totaltime;
	double totaltime1;
	double totaltime2;
	//DBConnection cc=new DBConnection();

	PreparedStatement pr;

	public totalworkinghrsmonth1 () throws SQLException,IOException,Exception
	{
		try
		{
			//////System.out.println("totalworkinghrsmonth1 ::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("totalworkinghrsmonth1 ::ConnectionPool----->>>>After Open --->>>>Test");
		}
		catch (Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
	}
	//////////////////////////////////////////////

	public double getvalue1(int nwds)throws Exception
	{

		//pr=con.prepareStatement("select  time_to_sec('08:15:00') from dual");
		//pr.setString(1,empno);
		//pr.setString(2,fromdate);
		//pr.setString(3,todate);
		//rs=pr.executeQuery();
		//while(rs.next())
		//{
		try
		{
			totalwhrsmonth=Double.parseDouble(Integer.toString(nwds));

			////////System.out.println("DAO month  days"+totalwhrsmonth);
			int i;
			double time;
			int Hours=0;
			int Minutes=0;
			double Hours1=0.0;
			for(i=1;i<=totalwhrsmonth;i++)
			{
				////////System.out.println("days "+i);
				totaltime1=totaltime1+480;

				////////System.out.println("total 1  "+totaltime1);
				totaltime2=totaltime2+15;
				////////System.out.println("total 2 "+totaltime2);
				Hours= (int)totaltime1/60;   
				////////System.out.println("Hours  "+Hours);
				Minutes= (int)totaltime2%60;  
				////////System.out.println("min"+Minutes);
				if(Minutes==0)
				{
					Hours=Hours+1;
					totaltime1=Hours*60;
				}   
				////////System.out.println("***"+Hours+":"+Minutes+"******"); 


			}
			String t1=Hours+"."+Minutes;
			//////System.out.println("***"+Hours+":"+Minutes+"**  Actual Total Working HRS Of Employee for the month****"); 

			//time=
			//totaltime=(totaltime1+totaltime2)/3600;

			totaltime=Double.parseDouble(t1);
		}
		finally {
			try
			{
				//////System.out.println("totalworkinghrsmonth1 ::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("totalworkinghrsmonth1 ::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		//}
		return totaltime;
	}
}
