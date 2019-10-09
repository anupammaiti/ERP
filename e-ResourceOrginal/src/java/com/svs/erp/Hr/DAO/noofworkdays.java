package com.svs.erp.Hr.DAO;

import java.io.*;
import java.util.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
//import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
//import java.sql.DriverManager;
//import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;

import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;
public class noofworkdays
{
Connection con=null;
ConnectionUtils connectionUtils=new ConnectionUtils();



	Statement st=null;
	ResultSet rs=null;
	ResultSet rs1=null;
	ResultSet rs2=null;
	ResultSet rs3=null;
	ResultSet rs4=null;
	//String totalwhrs;
	double totalwhrs1;
	double totalodhrs1;
double whrswithod=0;
double totalodhrs2;
double minutes1;
DBConnection cc=new DBConnection();

	PreparedStatement pr=null;
	PreparedStatement pr1=null;
	PreparedStatement pr2=null;
	PreparedStatement pr3=null;
	PreparedStatement pr4=null;
	
	static Logger log = Logger.getLogger(LoanStatusDAO.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	public noofworkdays() throws SQLException,IOException,Exception
	{
		try
		{
			//////System.out.println("noofworkdays::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("noofworkdays::ConnectionPool----->>>>After Open --->>>>Test");
		}
		catch (Exception e)
		{
			//////System.out.println(e);
		}
	}
	//////////////////////////////////////////////
	
	public int getdays(String empno,String fromdate,String todate)throws Exception
	{
	Calendar cal1 = Calendar.getInstance();
	Calendar cal2 = Calendar.getInstance();
	//////////////String splitting for from date
	String array[]=fromdate.split("-");
		
				for (int i = 0; i < array.length; i++) {
					System.out.println("Array is\t"+array[i]);
				}
						String val1=array[0].trim();
						System.out.println(val1);
						int val11=Integer.parseInt(val1);	
		
						String val2=array[1].trim();
							int val12=Integer.parseInt(val2);	
		System.out.println(val12);
						String val3=array[2].trim();
							int val13=Integer.parseInt(val3);	
		////////System.out.println("END OF FROM DATE"+val13);
	//	//////System.out.println("FD"+val11+val12+val13);
///////////////////////////////////////////
//////////////String splitting for to date
	String arr[]=todate.split("-");
						String val4=arr[0].trim();	
						int val14=Integer.parseInt(val4);
		////////System.out.println(val14);	
						String val5=arr[1].trim();
							int val15=Integer.parseInt(val5);	
		////////System.out.println(val15);
						String val6=arr[2].trim();
							int val16=Integer.parseInt(val6);	
		////////System.out.println("END OF LAST DATE"+val16);
		////////System.out.println("FD"+val14+val15+val16);
///////////////////////////////////////////
		
	cal1.set(val11, val12, val13);

	cal2.set(val14, val15, val16);
int count=0;
int count1=0;
int totdays=0;
int noofdays=0;
int totphdays=0;
int sat=0;
int sat1=0;
int sat2=0;
String dt1;
int totwdays=0;

long milis1 = cal1.getTimeInMillis();
long milis2 = cal2.getTimeInMillis();
long diff = milis2 - milis1;
long diffDays = diff / (24 * 60 * 60 * 1000);
////////System.out.println("date diff is"+diffDays);
int  findiff=(int)diffDays+1;
////////System.out.println("date diff is"+findiff);
try{
	
	for(int i=0;i<findiff;i++)
	{
	totdays++;
		String dt = fromdate;  // Start date
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c = Calendar.getInstance();
		c.setTime(sdf.parse(dt));
		c.add(Calendar.DATE, i);  // number of days to add
		dt = sdf.format(c.getTime());
		////////System.out.println("date...................."+dt);
		
		// find day of every date
		pr=con.prepareStatement("select dayname(?) from dual");
		pr.setString(1,dt);
		rs=pr.executeQuery();
		while(rs.next())
		{
		String dayname=rs.getString(1);
			
		if(dayname.equals("Sunday"))
		{
		count++;
		//////System.out.println("TOTAL sundays.............."+count);
		}//sunday
		}//while
			///////////////////////finding ph on sunday			
		pr1=con.prepareStatement("select dayname(date) from ph where date=?");
		pr1.setString(1,dt);
		rs1=pr1.executeQuery();
		while(rs1.next())
		{
		String dayname1=rs1.getString(1);
		if(dayname1.equals("Sunday"))
		{
		count1++;
		////////System.out.println("count of sundays..in paid holidays............"+count1);
		
		///////////////////////////////////////////////////////////
		if(count1!=0)
		{
		count=count-count1;
		////////System.out.println("count of sundays..........GH-PH-------------->  "+count);
		}
		///////////////////////////////////////////////////////////
		}//if
		}//while
		
		
		/////////////////////to find secondsaturdays
		boolean flag=false;
		pr2=con.prepareStatement("select dayname(?) from dual");
		pr2.setString(1,dt);
		rs2=pr2.executeQuery();
		while(rs2.next())
		{
		String dayname2=rs2.getString(1);
			
		if(dayname2.equals("Saturday"))
		{
		sat++;
		////////System.out.println("count of satdays.............."+sat);
		if(sat==2)
		{
		sat2++;
		flag=true;
		}
		}//satday
		
		}//while
		if(flag)
		{
		////////System.out.println("second saturday on.............."+dt);
		///////////////////////////////finding ph on second satday
		pr3=con.prepareStatement("select dayname(date) from ph where date=?");
		pr3.setString(1,dt);
		rs3=pr3.executeQuery();
		while(rs3.next())
		{
		String dayname3=rs3.getString(1);
		if(dayname3.equals("Saturday"))
		{
		sat1++;
		////////System.out.println("count of holidays on second saturday"+sat1);
		////////System.out.println("count of Satdays..in paid holidays............"+sat1);
			///////////////////////////////////////////////////////////
		if(sat1!=0)
		{
		sat2=sat2-sat1;
		////////System.out.println("count of 2Satdays..........GH-PH(sat)-------------->  "+sat2);
		}
		else
		{
		sat2=sat2;
		}
		///////////////////////////////////////////////////////////
		}
		}//ph ssat while
		}//flag
		/////////////////////////////////////////////////////////////////////////////////////////count noof PH between dates
		pr4=con.prepareStatement("select dayname(date) from ph where date=?");
		pr4.setString(1,dt);
		rs4=pr4.executeQuery();
		while(rs4.next())
		{
		String dayname4=rs4.getString(1);
		//if((dayname4!="Sunday"))
		//{
		totphdays++;
		////////System.out.println("tot days from PH HOLIDAYS.........."+totphdays);
		//}
		}//while
		/////////////////////////////////////////////////////////////////////////////////////////
		
		////////System.out.println("tot days.........."+totdays);
		noofdays=count+sat2;
		////////System.out.println("NO. OF HOLIDAYS including PH..........."+noofdays);
}//for
totdays=totdays-noofdays;
totdays=totdays-totphdays;
						if (con!= null)
						{
						rs4.close();
						pr4.close();
						rs3.close();
						pr3.close();
						rs2.close();
						pr2.close();
						rs1.close();
						pr1.close();
						rs.close();
						pr.close();
						con.close();
						}
}catch(Exception e){
	//////System.out.println(e);
}

finally {
	try
	{
		//////System.out.println("noofworkdays::ConnectionPool--Before Close --->>>>Test");
		if (con != null) connectionUtils.setDBClose();
		//////System.out.println("noofworkdays::ConnectionPool--After Close--->>>>Test");

	} catch (SQLException e)
	{
		//logger.error("The statement cannot be closed.", e);
		//////System.out.println("Exception"+e);
	}
}
return totdays;
}
}
	
	
			
		