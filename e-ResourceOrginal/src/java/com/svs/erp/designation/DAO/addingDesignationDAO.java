// Java Document
package com.svs.erp.designation.DAO;

import java.sql.*;
import java.io.*;

import org.apache.log4j.Logger;

import  com.svs.erp.Hr.db.*;
import com.svs.erp.company.DAO.deletecomapnyDAO;
import com.svs.util.ConvertStackTracetoString;


public class addingDesignationDAO 
{
	private String companyname;
	Connection con;
	Statement st;
	PreparedStatement pr,pr1;
	ResultSet rs;
	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	final static Logger logger = Logger.getLogger(addingDesignationDAO.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();

	int olddesignationid=0;
    int designationid=0;
	String id=null;


	public addingDesignationDAO ()
	{
	try
	   {
		

		con=connectionUtils.getDBConnection();
		

	   }
		catch(Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
	}
	
	public void insert(String companyname,String comp)
	{
	try
	{
	pr=con.prepareStatement("insert into designation values(?,?,?)");
	
	
	pr1=con.prepareStatement("select count(designationid) from designation");
        rs=pr1.executeQuery();

              
              while(rs.next())
	             {
	                olddesignationid=rs.getInt("count(designationid)");
	                designationid=olddesignationid+1;
	                
	               }
		id=Integer.toString(designationid);
	pr.setString(3,comp);			   
	pr.setString(2,companyname);
		pr.setString(1,id);

	pr.executeUpdate();
	}
	catch(Exception e)
	{
		logger.error(util_stacktrace.sendingErrorAsString(e));
	}finally {
		try
		{
			
			if (con != null) connectionUtils.setDBClose();
			
		} catch (SQLException e)
		{
			
			//////System.out.println("Exception"+e);
		}
	}
	
	}
}

