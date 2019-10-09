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
public class ODTime 
{
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	ResultSet rs1=null;
	//String totalwhrs;
	double totalwhrs1;
	double totalodhrs1;
	double whrswithod=0;
	double totalodhrs2;
	double minutes1;
	double whrswithod1=0;
	double abtotalwhrs=0;
	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();

	PreparedStatement pr=null;
	PreparedStatement pr1=null;
	
	static Logger log = Logger.getLogger(MonthExtract.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();

	public ODTime() throws SQLException,IOException,Exception
	{
		try
		{
			
			con=connectionUtils.getDBConnection();
			

		}
		catch (Exception e)
		{
			log.error(util_stacktrace.sendingErrorAsString(e));
		}

	}
	//////////////////////////////////////////////

	public Double getvalue3(String empno,String fromdate,String todate)throws Exception
	{
		try
		{
		pr=con.prepareStatement(" select  SUM(Time_to_Sec(odtime)) as whrswithod from empinout1 where  empid=? and date between ? and ?");
		pr.setString(1,empno);
		pr.setString(2,fromdate);
		pr.setString(3,todate);
		rs=pr.executeQuery();
		while(rs.next())
		{
			whrswithod1=rs.getDouble(1);
		}
		///////////////////////////////////////////////////////////////////////////////////////////////////////////
		/////////total time from empabsent wher authentication =CL,SL,PL.............
		pr1=con.prepareStatement("select  Sum(Time_to_Sec(tothrs))as tot from empabsent where empid=? and date between ? and ?");
		pr1.setString(1,empno);
		pr1.setString(2,fromdate);
		pr1.setString(3,todate);
		rs1=pr1.executeQuery();
		while(rs1.next())
		{
			abtotalwhrs=rs1.getDouble("tot");
			//////System.out.println("TOTAL WORKING HOURS INCLUDING PH&LEAVES DAYS HOURS"+abtotalwhrs);
			whrswithod1=whrswithod1+abtotalwhrs;
			//////System.out.println("TOTAL WORKING HOURS INCLUDING PH&LEAVES AND OD/PER DAYS HOURS"+whrswithod1);
			///////////////////////////////////////////////////////////////////////////////////////////////////////////
			int hours=(int)whrswithod1/3600;
			////////System.out.println("HH:"+hours);
			int minutes=(int)((whrswithod1%3600)/60);
			///////////////////////////////////////////////////
			if(minutes>60)
			{
				hours=hours+1;
				////////System.out.println(" Mins>60 then..... hours....."+hours);
				minutes=minutes-60;
				////////System.out.println(" Mins>60 then..... minutes....."+minutes);
			}
			/////////////////////////////////////////
			String leng=Integer.toString(minutes);
			int length=leng.length();
			////////System.out.println("length:"+length);
			//	//////System.out.println("MM:"+minutes);
			double tot;
			if(length<2)
			{
				double mins=(double)minutes;

				minutes1=mins/100;
				////////System.out.println("minutes"+minutes1);
				totalodhrs2=hours+minutes1;
				////////System.out.println("totalodhrs"+totalodhrs2);

				tot=totalodhrs2;
				//////System.out.println("Total of  OD in If: "+tot);
				whrswithod=tot;
			}
			else{

				String totalodhrs3=hours+"."+minutes;
				////////System.out.println("TOTAL HRS:"+totalwhrs2);

				tot=Double.parseDouble(totalodhrs3);
				//////System.out.println("Total of OD in Else: "+tot);
				whrswithod=tot;
			}
		}//while

		if (pr!= null)
		{
			pr.close();
		}
		if (pr1!= null)
		{
			pr1.close();
		}

		if (con!= null)
		{
			con.close();
		}
		}catch(Exception e){
			//////System.out.println(e);
		}

		finally {
			try
			{
				//////System.out.println("ODTime::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("ODTime::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				log.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		return whrswithod;
	}
}
