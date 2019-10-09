package com.svs.erp.Leaveauthe.DAO;

import java.sql.*;
import java.io.*;
import java.lang.*;
import java.util.Date;
import java.util.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

import org.apache.log4j.Logger;

public class LossOfPayLeaveAuthenticationStatusDao {
	
	static Logger log = Logger.getLogger(LossOfPayLeaveAuthenticationStatusDao.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	Connection con;
	
	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	
	ResultSet rs=null;
	
	String empid=null;
	String fromdate1;
	String name=null;
	double cl2=0;
	double sl2=0;
	double pl2=0;
	double lop1=0;
	String abtothrs="00:00:00";
	
	String s1=null;
	
	
	public LossOfPayLeaveAuthenticationStatusDao()
	{
		try
		{
			//////System.out.println("LossOfPayLeaveAuthenticationStatusDao::ConnectionPool----->>>>Before Open --->>>>Test");

			con=connectionUtils.getDBConnection();
			//////System.out.println("LossOfPayLeaveAuthenticationStatusDao::ConnectionPool----->>>>After Open --->>>>Test");

		}catch(Exception ex)
		{
			                      log.error(util_stacktrace.sendingErrorAsString(ex));
		}
	}
	
	           /*-------------Approve announcement--------------*/

	public String lossOfPayApprove(String employeecode,String empname,String leavetype,String fromdate,String todate,double cll,double sll,double pll,double lop)throws SQLException,IOException
	        {
			try{
		
			        empid=employeecode;
					fromdate1=fromdate;
					name=empname;
					////////System.out.println("EMPID..."+empid);
					////////System.out.println("EMPName..."+empname);
				//	//////System.out.println("Leave type..."+leavetype);
					////////System.out.println("date..."+fromdate1);
					
					cl2=cll;
					sl2=sll;
					pl2=pll;
					lop1=lop;
					String emp123=null;
					/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// calculating date difffffffffffffff
	Calendar cal1 = Calendar.getInstance();
	Calendar cal2 = Calendar.getInstance();
	//////////////String splitting for first date
	String array[]=fromdate.split("-");
		String val1=array[0].trim();	
		int val11=Integer.parseInt(val1);	
		////////System.out.println(val11);
						String val2=array[1].trim();
							int val12=Integer.parseInt(val2);	
							////////System.out.println(val12);
						String val3=array[2].trim();
							int val13=Integer.parseInt(val3);	
							////////System.out.println("END OF FIRST DATE"+val13);
							////////System.out.println("FD"+val11+val12+val13);
///////////////////////////////////////////
//////////////String splitting for last date
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
	
long milis1 = cal1.getTimeInMillis();
long milis2 = cal2.getTimeInMillis();
long diff = milis2 - milis1;
long diffDays = diff / (24 * 60 * 60 * 1000);
////////System.out.println("date diff is"+diffDays);
int  findiff=(int)diffDays+1;
////////System.out.println("date diff is"+findiff);
		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

		////////////////////////////////////  if LOP~~~~~~~~LOP~~~~~~~~LOP~~~~~~~LOP~~~~~~~~~LOP
		if(leavetype.equals("LOP"))
					{
			for(int i=0;i<findiff;i++)
			{
				String dt = fromdate;  // Start date specify here
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				Calendar c = Calendar.getInstance();
				c.setTime(sdf.parse(dt));
				c.add(Calendar.DATE, i);  // number of days to add
				dt = sdf.format(c.getTime());
				//////System.out.println("LossOfPayLeaveAuthenticationDao::::Authenticated on the date is......LOP....EMPABSENT.........."+dt);
	/////////////~~~~~~~~~~~~~~~~~~~~~~~~~Load into EMP ABSENT
				String s3="select empid,date,authentication from empabsent where empid=? and date=?";
				PreparedStatement ps=null;
		 		ps=con.prepareStatement(s3);
				ps.setString(1,empid);	
				ps.setString(2,dt);	
			 ////////System.out.println("DAO1......"+empid);
			 ////////System.out.println("DAO1......"+dt);
		  		rs=ps.executeQuery();
			
  				if(rs.next()==true)
				{
				String LT=rs.getString(3).trim();
				//////System.out.println(LT);
		 			if(LT.equals("AB")){
					//while(rs3.next()==true)
					//{
					  ////////System.out.println("4");
						ps=con.prepareStatement("update empabsent  set  authentication=?,tothrs=? where (empid=? and date=?)");
						ps.setString(1,leavetype);
						//ps2.setString(2,odhours);
						ps.setString(2,abtothrs);
						ps.setString(3,empid);
						
						ps.setString(4,dt);
						//ps.executeUpdate();
						int ins2 =0;
						ins2 = ps.executeUpdate();
		s1=leavetype+" Authentication Successfully From "+fromdate+" to "+todate;
		
		////////System.out.println(" Authenticated success... if RECORD FOUND..."+leavetype+"...on"+dt);
     }//if
		else
		{
		s1="Authentication records are there on "+fromdate+" please check once";
		log.debug("LossOfPayLeaveAuthenticationStatusDao:: Leave Type IS "+s1);
		}/////////////~~~~~~~~~~~~~~~~~~~~~inner if closed if AB
		
 		 }//i~~~~~~~~~~~~if   true
		 else if(rs.next()==false)
		{ String employname=null;
		PreparedStatement pname=con.prepareStatement("select name from employee where empno=?");
		pname.setString(1,empid);
		ResultSet rsname=pname.executeQuery();
		while(rsname.next())
		{
		employname=rsname.getString(1);
		}//while closed
		ps=con.prepareStatement("insert into empabsent(empid,empname,date,authentication,tothrs) values(?,?,?,?,?)");
		
		ps.setString(1,empid);
		ps.setString(2,employname);
		ps.setString(3,dt);
		ps.setString(4,leavetype);
		ps.setString(5,abtothrs);
		//ps.executeUpdate();
		int ins2 =0;
        ins2 = ps.executeUpdate();
			////////System.out.println(" Authenticated success....If RECORD NOT FOUND.."+leavetype+"...on"+dt);
		s1=leavetype+" Authentication Successfully From "+fromdate+" to "+todate;
		log.debug("LossOfPayLeaveAuthenticationStatusDao:: Leave Type IS "+s1);
		}////////////if false
		 else
			{
			s1="No records on "+dt;
			log.debug("LossOfPayLeaveAuthenticationStatusDao:: Leave Type IS "+s1);
 			 }
	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~EMPABSENT ENDS HERE
	/////////////////////////////////////////////////////////////////////////////////finding PH and Second Saturdays
	/////////////////////////////////////////////////////////////////////////////////finding PH and Second Saturdays
		////////////////////////////////Update data from empabsent where data on PAID HOLIDAYS
	   boolean flag=false;
	   String ddd=null;
	   String event=null;
	   PreparedStatement p111=null;
	   p111=con.prepareStatement("select date,event from ph where date='"+dt+"'");
	   ResultSet r111=p111.executeQuery();
	   ////////System.out.println("*************test123............");
	  while(r111.next())
	   {
	   ddd=r111.getString(1);
	    event=r111.getString(2);
	   ////////System.out.println("*************test123................................"+ddd);
	   if(dt.equals(ddd))
	   {
	   flag=true;
	   ////////System.out.println("PH date and load date are same");
	   }//if
	   if(flag)
	   {
	     PreparedStatement p2=null;
	   p2=con.prepareStatement("Update empabsent set authentication=?,tothrs='00:00:00' where date=?"); /////////////////////////////~~~~~~~~if record found on PH
	   p2.setString(1,event);
	   p2.setString(2,ddd);
	   p2.executeUpdate();
	    ////////System.out.println("data from empabsnet Updated on ......."+ddd+".....with event...."+event);
	   }//flag true
	   }//while
	   /////////////////////////////////////////////////////////////////////////////////////////////////////delete data from empabsent where day is second saturday/////////////////////////
	  int year =val11; //Moved here to get input after the question is asked

	int month = val12; //Moved here to get input after the question is asked

	int days = 0; //changed so that it just initializes the variable to zero


	boolean isLeapYear = (year % 4 == 0 && year % 100 != 0)||(year % 400 == 0);
	switch (month){
	case 1:
	days = 31;
	break;
	case 2:
	if (isLeapYear)
	days = 29;
	else
	days = 28;
	break;
	case 3:
	days = 31;
	break;
	case 4:
	days = 30;
	break;
	case 5:
	days = 31;
	break;
	case 6:
	days = 30;
	break;
	case 7:
	days = 31;
	break;
	case 8:
	days = 31;
	break;
	case 9:
	days = 30;
	break;
	case 10:
	days = 31;
	break;
	case 11:
	days = 30;
	break;
	case 12:
	days = 31;
	break;
	default:
	if ((month < 1)||(month > 12))
System.exit(0);
}
//////System.out.println("LossOfPayLeaveAuthenticationDao::************Test1************"+days);
////////System.out.println("No of .............days.............."+days);
////////////////finding no of days per month completed
int day222=1;
int sat111=0;
String date333=year+"-"+month+"-"+day222;
	for(int j=0;j<days;j++)
	{
		String dt11 = date333;  // Start date
		SimpleDateFormat sdf11 = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c11 = Calendar.getInstance();
		c11.setTime(sdf11.parse(dt11));
		c11.add(Calendar.DATE, j);  // number of days to add
		dt11 = sdf.format(c11.getTime());
		////////System.out.println("Data loading on date is.......for second saturdayssssssssssssssss."+dt11);
		PreparedStatement p333=con.prepareStatement("select dayname('"+dt11+"') from dual");
		ResultSet r333=p333.executeQuery(); 
		
		boolean flagday=false;
		while(r333.next())
		{
		
		String day333=r333.getString(1);
		////////System.out.println("Day name is............"+day333);
		if(day333.equals("Saturday"))
		{
		
		sat111++;
		////////System.out.println("............................"+sat111);
		if(sat111==2)
		{
		////////System.out.println("..............falg ayithe..............");
		flagday=true;
		}//if
		}//if
		}//while
		if(flagday)
		{
		////////System.out.println("day of SECOND SATDAY............"+dt11);
		PreparedStatement  p444=con.prepareStatement("Update empabsent set authentication='SSAT',tothrs='00:00:00' where date='"+dt11+"'");/////~~~~~~~updated on second SAT
		p444.executeUpdate();
		////////System.out.println("data deleted from empabsent on ss............"+dt11);
		////////System.out.println("data from empabsnet Updated on ......."+dt11+".....when SecondSaturday....");
		}//if
		
	}//for loop to find saturday


/////////////////////////////////////////////////////////////////////////////////////////

		///////////////////////~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		PreparedStatement p11=null;
		
		p11=con.prepareStatement("Update empabsent set authentication='Sunday',tothrs='00:00:00' where dayname(date)='Sunday'"); ////////////updated on sunday
		ResultSet r1=null;
	p11.executeUpdate();

	}//for~~~~~~~~FOR LOOP OF LOP~~~~~FOR LOOP~~~~~~LOP~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
				}//if LOP~~~~~~~~~~~~~IF LOP
	
	
	////////////////////// LOAD TO LEAVEAPPLICATIONS.....................
	
	


	        }//try
	catch(Exception ex)
{
		log.error(util_stacktrace.sendingErrorAsString(ex));
}
finally {
			try
				 {
				//////System.out.println("LossOfPayLeaveAuthenticationStatusDao::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("LossOfPayLeaveAuthenticationStatusDao::ConnectionPool--After Close--->>>>Test");
				} catch (SQLException e)
				{
					log.error(util_stacktrace.sendingErrorAsString(e));
				}
			}
return s1;
}///////function
//return p;

	 
	}

	

