package com.svs.erp.Leaveauthe.DAO;
import java.io.*;
import java.sql.*;
import java.lang.*;

import com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

import org.apache.log4j.Logger;


public class LeaveauthenticationDAO
{

	static Logger log = Logger.getLogger(LeaveauthenticationDAO.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	Connection con=null;
	ConnectionUtils connectionUtils=new ConnectionUtils();

	PreparedStatement ps=null;
	PreparedStatement ps1=null;
	PreparedStatement ps2=null;
	PreparedStatement ps4=null;
	ResultSet rs=null;
	ResultSet rs1=null;
	ResultSet rs2=null;
		ResultSet rs4=null;
	String authentication=null;
String s1="";
	public LeaveauthenticationDAO() throws IOException,SQLException,Exception
	{
		try
		{
			//////System.out.println("LeaveauthenticationDAO::ConnectionPool----->>>>Before Open --->>>>Test");

			con=connectionUtils.getDBConnection();
			//////System.out.println("LeaveauthenticationDAO::ConnectionPool----->>>>After Open --->>>>Test");

		}catch(Exception ex)
		{
			                      log.error(util_stacktrace.sendingErrorAsString(ex));
		}
		//Class.forName("com.mysql.jdbc.Driver");
		//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"hrerp","root","root");
	}//constructor

	public String submit(String empid,String empname,String designation,String company,String leavetype,String date1,String odhours) throws  IOException,Exception,SQLException
	{
	//////System.out.println(leavetype);
	log.debug("LeaveauthenticationDAO Is ----"+leavetype);
        try
  { 
  /*  if(leavetype!="OD")
			 {
  ps1=con.prepareStatement("select authentication from  empabsent where empid=? and date=?");
		ps1.setString(1,empid);
		ps1.setString(2,date1);
		
			 rs1 = ps1.executeQuery();
			
			//////System.out.println("test");
			 while(rs1.next())
			 {
			 //////System.out.println("3");
			 authentication=rs1.getString(1);
			 //////System.out.println(authentication);
			 }
			 if(authentication.equals("absent"))
			 {		
		ps=con.prepareStatement("update empabsent  set  authentication=? where empid=? and date=?");
		ps.setString(1,leavetype);
		ps.setString(2,empid);
		ps.setString(3,date1);
		//ps.executeUpdate();
		
		int ins =0;
   	 ins = ps.executeUpdate();
	 s1="Leave Authentication Successfully";
	 		}
			
			}
			
			*/
			  
  ///////////////////closed empabsent
  /////////////////////the code goes here  incase OD
 if(leavetype.equals("OD")||leavetype.equals("PER"))
  {
   
  ResultSet rs3=null;
   String s3="select empid,date,leavetype from empinout1 where empid=? and date=?";
		PreparedStatement pr6=null;
		 pr6=con.prepareStatement(s3);
		pr6.setString(1,empid);	
		pr6.setString(2,date1);	
			 //////System.out.println(empid);
			 //////System.out.println(date1);
		  rs3=pr6.executeQuery();
			
  		if(rs3.next()==true)
		{
		String LT=rs3.getString(3);
		//////System.out.println(LT);
		 if(LT.equals("XX")){
	    //while(rs3.next()==true)
		//{
		  ////////System.out.println("4");
        ps2=con.prepareStatement("update empinout1  set  leavetype=?,odtime=?,totnod=ADDTIME(tothrs,?) where (empid=? and date=?)");
		ps2.setString(1,leavetype);
		ps2.setString(2,odhours);
		ps2.setString(3,odhours);
		ps2.setString(4,empid);
		ps2.setString(5,date1);
		//ps.executeUpdate();
		int ins2 =0;
        ins2 = ps2.executeUpdate();
		s1=leavetype+" Authentication Successfully for <font color=red>"+odhours+"</font> hours on <font color=red>"+date1+"</font>";
		log.debug("LeaveauthenticationDAO leave type is "+s1);
        //}//while
		}//if
		else
		{
		s1="Authentication records are there on <font color=red>"+date1+" </font>please check once";
		}
 		 }//if   true
		 else if(rs3.next()==false)
		{
		s1="No records are there on <font color=red>"+date1+" </font> please check once";
		}
  
  }//if OD
  else
			{
			s1="No records on "+date1;
 			 }
  }//try
	 catch(SQLException e)
	 {
	 			
		 log.error(util_stacktrace.sendingErrorAsString(e));
	}
	 finally {
					try
       				 {
						
						if (con != null) connectionUtils.setDBClose();
						
        				} catch (SQLException e)
        				{
        					 log.error(util_stacktrace.sendingErrorAsString(e));
        				}
					}	
//if(ins==1)
//{
//s1="<h4>Successfully Inserted </h4>";
//}
return s1;
	}
}
