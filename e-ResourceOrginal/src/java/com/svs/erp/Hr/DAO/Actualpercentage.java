package com.svs.erp.Hr.DAO;

import java.io.*;
import java.sql.*;
import java.lang.*;
import java.util.*;
import java.lang.Integer.*;
import java.lang.Math.*;
//import java.sql.DriverManager;
//import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.BO.view_CompanyPaySlip;
import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;
public class Actualpercentage 
{
	Connection con=null;
	ConnectionUtils connectionUtils=new ConnectionUtils();
	
	private static Logger logger = Logger.getLogger(Actualpercentage.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	Statement st=null;
	ResultSet rs=null;
	ResultSet rs1=null;
	ResultSet rs2=null;
	//String totalwhrs;
	double totalwhrsmonth;
	double totalwhrsmonth1;
	double  totaltime;
	double totaltime1;
	double totaltime2;
	//DBConnection cc=new DBConnection();

	PreparedStatement pr=null;
	PreparedStatement pr1=null;
	PreparedStatement pr2=null;

	public Actualpercentage() throws SQLException,IOException,Exception
	{
		try
		{
			//////System.out.println("Actualpercentage::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("Actualpercentage::ConnectionPool----->>>>After Open --->>>>Test");

		}
		catch (Exception e)
		{
			//////System.out.println(e);
		}
	}
	//////////////////////////////////////////////

	public double getapercent(double totalwhrs,double totaltime)
	{
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//////System.out.println("Actualpercentage::totalwhrs..........."+totalwhrs+".......totaltime......"+totaltime);
		try{
			int tot1=(int)totalwhrs;
			//////System.out.println("tot1"+tot1);
			double tot2=((double)(totalwhrs-tot1))*100;
			//////System.out.println("tot2"+tot2);
			int tot3=(int)(Math.ceil(tot2));
			//////System.out.println("tot3"+tot3);
			///*********COMPLETED conversion totaltime in HH and MM******************//
			///*********conversion total in HH and MM******************//
			int tot4=(int)totaltime;
			//////System.out.println("tot4"+tot4);
			double tot5=((double)( totaltime-tot4))*100;
			//////System.out.println("tot5"+tot5);
			int tot6=(int)(Math.ceil(tot5));
			//////System.out.println("tot6"+tot6);

			///*********COMPLETED conversion total in HH and MM******************//
			//////////////////////////////convert in data base///////////////////////////////////////////
			String temphrs1=tot1+":"+tot3;
			String temphrs2=tot4+":"+tot6;
			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			//////System.out.println("temp hrs1..........."+temphrs1);
			//////System.out.println("temp hrs2..........."+temphrs2);

			String t1=null;
			String t2=null;
			t1=temphrs1;
			t2=temphrs2;
			//String arr[]=twh1.split(".");

			//String ar1=arr[0];
			//String ar2=arr[1];
			////////System.out.println("3........."+ar1);
			////////System.out.println("4........."+ar1);
			//t1=ar1+":"+ar1;

			//String arr1[]=tottime.split(".");

			//String ar3=arr1[0];
			//String ar4=arr1[1];

			//t2=ar3+":"+ar4;

			pr=con.prepareStatement("select  time_to_sec(?) from dual");
			pr.setString(1,t1);
			//pr.setString(2,fromdate);
			//pr.setString(3,todate);
			//////System.out.println("t1.........."+t1);	
			rs=pr.executeQuery();
			while(rs.next())
			{
				totalwhrsmonth=Double.parseDouble(rs.getString(1));
			}
			//////System.out.println("Actual per"+totalwhrsmonth);


			pr1=con.prepareStatement("select  time_to_sec(?) from dual");		
			pr1.setString(1,t2);
			rs1=pr1.executeQuery();
			while(rs1.next())
			{
				totalwhrsmonth1=Double.parseDouble(rs1.getString(1));
			}
			//////System.out.println("Actual per"+totalwhrsmonth1);

			String twhm=Double.toString(totalwhrsmonth);
			String twhm1=Double.toString(totalwhrsmonth1);

			pr2=con.prepareStatement("select  (?/?)*100 from dual");			
			pr2.setString(1,twhm);
			pr2.setString(2,twhm1);
			rs2=pr2.executeQuery();
			while(rs2.next())
			{
				totaltime1=Double.parseDouble(rs2.getString(1));
			}
			//////System.out.println("Actual per"+totalwhrsmonth1);


			totaltime=totaltime1;
		}catch(Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		finally {
			try
			{
				
				if (con != null) connectionUtils.setDBClose();
				
			} catch (SQLException e)
			{
				
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		//}

		return totaltime;
	}
}
