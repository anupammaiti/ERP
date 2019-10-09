package com.svs.erp.Leaveauthe.DAO;
import java.io.*;
import java.sql.*;
import java.lang.*;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

public class reloadDAO
{
	Connection con=null;
	ConnectionUtils connectionUtils=new ConnectionUtils();
	PreparedStatement ps=null;
	PreparedStatement ps1=null;
	PreparedStatement ps2=null;
	PreparedStatement ps3=null;
	ResultSet rs=null;
	ResultSet rs1=null;
		ResultSet rs2=null;
	String authentication=null;
String s1="";
static Logger log = Logger.getLogger(reloadDAO.class);
ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	public reloadDAO() throws IOException,SQLException,Exception
	{
		try
		{
			//////System.out.println("reloadDAO::ConnectionPool----->>>>Before Open --->>>>Test");

			con=connectionUtils.getDBConnection();
			//////System.out.println("reloadDAO::ConnectionPool----->>>>After Open --->>>>Test");

		}catch(Exception ex)
		{
			                      log.error(util_stacktrace.sendingErrorAsString(ex));
		}
		//Class.forName("com.mysql.jdbc.Driver");
		//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"hrerp","root","root");
	}//constructor

	public String submit(String empid,String empname,String department,String designation,String RM,String HOD,String date,String first,String last,String tothrs) throws  IOException,Exception,SQLException
	{
	  try
  { 
 			  boolean flag=false;
			  boolean flag1=false;
			  String id=null;
			  String da=null;
			  String id1=null;
			  String da1=null;
  
  /////////////////////the code goes here if employee is there in empinout1

   String s3="select * from empinout1 where empid=? and date=?";
		 PreparedStatement pr=con.prepareStatement(s3);
		pr.setString(1,empid);	
		pr.setString(2,date);	
			 //////System.out.println(empid);
			 //////System.out.println(date);
		  rs=pr.executeQuery();
			while(rs.next())
			{
			id=rs.getString(1);
			da=rs.getString(7);
			if(id.equals(empid) && da.equals(date))
			flag=true;
			}
			
  		if(flag)
		{
		//////System.out.println("if true");
//		PreparedStatement pr1=con.prepareStatement("update empinout1 set empid=?,empname=?,department=?,designation=?,RM=?,HOD=?,date=?,first=?,last=?,tothrs=? where empid=? and date=?");
		/*ps=con.prepareStatement("update empinout1 set empid=?,empname=?,department=?,designation=?,RM=?,HOD=?,date=?,first=?,last=?,tothrs=?,OTLT=SUBTIME(?,'08:15:00'),leavetype=? where empid=? and date=?");
		ps.setString(1,empid);
		ps.setString(2,empname);
		ps.setString(3,department);
		ps.setString(4,designation);
		ps.setString(5,RM);
		ps.setString(6,HOD);
		ps.setString(7,date);
		ps.setString(8,first);
		ps.setString(9,last);
		ps.setString(10,tothrs);
		ps.setString(11,tothrs);
		ps.setString(12,"FC");
		ps.setString(13,empid);
		ps.setString(14,date);
		
		ps.executeUpdate();*/
		s1="Emp <font color=#3300CC>"+empid+"</font>Found in Attendance Records on<font color=#3300CC>"+date+"</font>";
		}
		else
		{
		//////System.out.println("if else");
		ps1=con.prepareStatement("select empid,date from empabsent where empid=? and date=? and authentication='AB'");
		ps1.setString(1,empid);
		ps1.setString(2,date);
		//////System.out.println("t1");
		rs1=ps1.executeQuery();
		//////System.out.println("t2");
		while(rs1.next())
		{
		//////System.out.println("t3");
		id1=rs1.getString(1);
			da1=rs1.getString(2);
			//////System.out.println(id1);
			//////System.out.println(da1);
			//////System.out.println("true");
			if(id1.equals(empid) && da1.equals(date))
			flag1=true;
		}
			if(flag1)
		{
		//////System.out.println("if true======flag1");
		ps2=con.prepareStatement("delete from empabsent where empid=? and date=?");
		ps2.setString(1,empid);
		ps2.setString(2,date);
		int res=0;
		res=ps2.executeUpdate();
		
		ps3=con.prepareStatement("insert into empinout1(empid,empname,department,designation,RM,HOD,date,first,last,tothrs,OTLT,leavetype) values (?,?,?,?,?,?,?,?,?,?,SUBTIME(?,'08:15:00'),?)");
		ps3.setString(1,empid);
		ps3.setString(2,empname);
		ps3.setString(3,department);
		ps3.setString(4,designation);
		ps3.setString(5,RM);
		ps3.setString(6,HOD);
		ps3.setString(7,date);
		ps3.setString(8,first);
		ps3.setString(9,last);
		ps3.setString(10,tothrs);
		ps3.setString(11,tothrs);
		ps3.setString(12,"FC");
		if(res!=0)
		{
		ps3.executeUpdate();
		
				s1="Inserted Successfully On<font color=#3300CC>"+date+"</font> For Emp<font color=#3300CC> "+empid+"</font>";
				}
				else
		{
		s1="No Records Found on "+date;
		//////System.out.println("No Records on <font color=#3300CC>"+date+"</font>");
		}
		}
		else
		{
		s1="No Records Found on "+date;
		//////System.out.println("No Records on <font color=#3300CC>"+date+"</font>");
		}

		}
		
		 }//try
	 catch(SQLException e)
	 {
	 			
		 log.error(util_stacktrace.sendingErrorAsString(e)); 
	}
	finally {
					try
       				 {
						//////System.out.println("reloadDAO::ConnectionPool--Before Close --->>>>Test");
						if (con != null) connectionUtils.setDBClose();
						//////System.out.println("reloadDAO::ConnectionPool--After Close--->>>>Test");
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
