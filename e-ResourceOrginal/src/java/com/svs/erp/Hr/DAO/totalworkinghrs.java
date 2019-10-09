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
public class totalworkinghrs 
{
	Connection con=null;
	Statement st=null;
	ResultSet rs=null,rs1=null,rs2=null,rs3=null;
	//String totalwhrs;
	double totalwhrs1;
	//double WHRSMONTH;
	double totalwhrs;
	double abtotalwhrs;
	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();

	static Logger logger = Logger.getLogger(totalworkinghrs.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();

	
	PreparedStatement pr,pr1,pr2,pr3;

	public totalworkinghrs() throws SQLException,IOException,Exception
	{
		try
		{
			//////System.out.println("totalworkinghrs::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("totalworkinghrs::ConnectionPool----->>>>After Open --->>>>Test");

		}
		catch (Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
	}
	//////////////////////////////////////////////

	public Double getvalue(String empno,String fromdate,String todate)throws Exception
	{
		try{
		/////////total time from empabsent wher authentication =CL,SL,PL.............
		pr1=con.prepareStatement("select  Sum(Time_to_Sec(tothrs))as tot from empabsent where empid=? and date between ? and ?");
		pr1.setString(1,empno);
		pr1.setString(2,fromdate);
		pr1.setString(3,todate);
		rs1=pr1.executeQuery();
		while(rs1.next())
		{
			abtotalwhrs=rs1.getDouble("tot");
		}
		abtotalwhrs=0;          //~~~~~~~~~code no need here (thats why I put 0 value)
		///////////////////////////////////////////////////////////////////////////////////////////// the above code no need here (thats why I put 0 value)

		pr=con.prepareStatement("select  Sum(Time_to_Sec(tothrs))as tot from empinout1 where empid=? and date between ? and ?");
		pr.setString(1,empno);
		pr.setString(2,fromdate);
		pr.setString(3,todate);
		rs=pr.executeQuery();
		while(rs.next())
		{
			totalwhrs=rs.getDouble("tot");
			//////System.out.println("TOTAL WORKING HOURS "+totalwhrs);
			totalwhrs=totalwhrs+abtotalwhrs;
			//////System.out.println("TOTAL WORKING HOURS INCLUDING PH&LEAVES DAYS HOURS"+totalwhrs);
			//	String jtime=String.value(rs.getTime("tot"));
			String totalwhrs11=Double.toString(totalwhrs);
			//String arr[]=totalwhrs11.split(":");

			//  String ar1=arr[0];
			//String ar2=arr[1];
			//  //////System.out.println("3........."+ar1);
			////////System.out.println("4........."+ar1);
			//String time1=ar1+":"+ar1;
			//totalwhrs1=totalwhrs/3600;
			////////System.out.println("totalwhrs1......................"+time1);
			////////System.out.println("totalwhrs......................"+totalwhrs);
			////////////////////////////////////////////////////////////////////////////convert HH:MM//////////////////////////////////////////////////////
			int hours=(int)totalwhrs/3600;
			////////System.out.println("HH/3600..............:"+hours);
			int minutes=(int)((totalwhrs%3600)/60.0);
			////////System.out.println("MM%36000/60.................:"+minutes);

			if(minutes>=60)
			{
				hours=hours+1;
				////////System.out.println(" Mins>60 then..... hours....."+hours);
				minutes=minutes-60;
				////////System.out.println(" Mins>60 then..... minutes....."+minutes);
			}
			////////////////////////////////////////////////////////////////////// adding decimal point if minuts have single digit
			String leng11=Integer.toString(minutes);
			double mmm1;
			double tot;
			int length11=leng11.length();
			if(length11<2)
			{
				double mmmm=(double)minutes;

				mmm1=mmmm/100;
				////////System.out.println("MMM in if length<2.........."+mmm1);
				double totalod11=hours+mmm1;
				tot=totalod11;
				//////System.out.println("IF Total from totalworkinghrs, time of work done by employee......."+tot);
			}
			else
			{
				//////////////////////////////////////////////////////////////////////
				String totalwhrs2=hours+"."+minutes;
				////////System.out.println("TOTAL HRS ELSE.......................:"+totalwhrs2);


				tot=Double.parseDouble(totalwhrs2);
				//////System.out.println(" Else Total:....................from totalworkinghrs , time of work done by employee..................."+tot);
			}
			totalwhrs1=tot;//////////insert into totalwhrs1

			///////////////////////////////////////////////////////////////////////////END OF CONVERTION//////////////////////////////////////
		}

		//////////////////////////////////////////example////////////////////////////
		//String s="10.10";
		//String s1="01.01";
		//double t1=Double.parseDouble(s);
		//double t2=Double.parseDouble(s1);
		//double t=t1+t2;
		//	//////System.out.println("OUTPUT"+t);
		///////////////////////////////////example end////////////////////////////
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
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		finally {
			try
			{
				//////System.out.println("totalworkinghrs::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("totalworkinghrs::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		
		return totalwhrs1;
	}
}
