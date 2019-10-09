package com.svs.erp.Leaveauthe.DAO;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

public class LeaveAuthenticationDaoLCSP
{
	static Logger log = Logger.getLogger(LeaveAuthenticationDaoLCSP.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	Connection con=null;
	ConnectionUtils connectionUtils=new ConnectionUtils();
	PreparedStatement ps=null;
	PreparedStatement ps1=null;
	PreparedStatement ps2=null;
	PreparedStatement ps3=null;
	ResultSet rs=null;
	ResultSet rs1=null;
	ResultSet rs2=null;
		ResultSet rs3=null;
	String authentication=null;
String s1="";
	public LeaveAuthenticationDaoLCSP() throws IOException,SQLException,Exception
	{
		try{
			con=connectionUtils.getDBConnection();	
		}catch(Exception e){
			log.error(util_stacktrace.sendingErrorAsString(e));
		}

		//Class.forName("com.mysql.jdbc.Driver");
		//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"hrerp","root","root");
	}//constructor

	public String submit(String empid,String empname,String leavetype,String date1,int noofdays) throws  IOException,Exception,SQLException
	{
	//////System.out.println("in DAO2....."+leavetype);
	log.debug("LeaveAuthenticationDaoLCSP:: Leave Type is "+leavetype);
        try
  { boolean flag1=false;
    int CL=1;
  int SL=1;
  int PL=1;
  int LOP=1;
  int totalleaves;
  int nCL;
  int nPL;
  int nSL;
  int nLOP;
  int cl1;
  int totleaves;
  int remainleaves;
  if(leavetype.equals("LOP")||leavetype.equals("CL")||leavetype.equals("SL")||leavetype.equals("PL"))
  {
  
 if(leavetype.equals("CL"))
 {
  }
 }			 
  }//try
	 catch(Exception e)
	 {
	 			
			log.error(util_stacktrace.sendingErrorAsString(e)); 
	}
	 finally {
					try
       				 {
						//////System.out.println("LeaveAuthenticationDaoLCSP::ConnectionPool--Before Close --->>>>Test");
						if (con != null) connectionUtils.setDBClose();
						//////System.out.println("LeaveAuthenticationDaoLCSP::ConnectionPool--After Close--->>>>Test");
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
