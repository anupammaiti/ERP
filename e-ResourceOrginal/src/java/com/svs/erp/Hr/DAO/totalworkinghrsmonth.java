package com.svs.erp.Hr.DAO;

import java.io.*;
//import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
//import java.sql.DriverManager;
//import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import  com.svs.erp.Hr.db.*;
public class totalworkinghrsmonth 
{
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	//String totalwhrs;
	double totalwhrsmonth;
	double  totaltime;
	double totaltime1;
	double totaltime2;
	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();

	PreparedStatement pr;

	public totalworkinghrsmonth () throws SQLException,IOException,Exception
	{
		try
		{
			//////System.out.println("totalworkinghrsmonth ::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("totalworkinghrsmonth ::ConnectionPool----->>>>After Open --->>>>Test");


		}
		catch (Exception e)
		{
			//////System.out.println(e);
		}
	}
	//////////////////////////////////////////////

	public double getvalue1(String empno,String fromdate,String todate)throws Exception
	{
		try
		{
			pr=con.prepareStatement("select  count(empid) from empinout1 where empid=? and date between ? and ?");
			pr.setString(1,empno);
			pr.setString(2,fromdate);
			pr.setString(3,todate);
			rs=pr.executeQuery();
			while(rs.next())
			{
				totalwhrsmonth=rs.getDouble(1);

				//////System.out.println("DAO month  days"+totalwhrsmonth);
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



				}
				String t1=Hours+"."+Minutes;
				////////System.out.println(t1);
				//time=
				//totaltime=(totaltime1+totaltime2)/3600;
				//////System.out.println("***"+Hours+":"+Minutes+"**  Actual Total Working HRS Of Employee for the month****"); 
				totaltime=Double.parseDouble(t1);

			}
		}
		finally {
			try
			{
				//////System.out.println("totalworkinghrsmonth ::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("totalworkinghrsmonth ::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}
		return totaltime;
	}
}
