package com.svs.erp.Hr.DAO;

import java.io.*;
import java.sql.*;
import java.util.*;

import org.apache.log4j.Logger;

import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;


public class descupdateDAO
{
	Connection con=null;
	ConnectionUtils connectionUtils=new ConnectionUtils();

	Statement st,st1;
	//	ResultSet rs,rs1,rs2,r3,r4,r5,rs5,rs6,rs7;
	PreparedStatement pr,pr1,pr2,pr3,pr4;
	//DBConnection cc=new DBConnection();
	private static Logger logger = Logger.getLogger(descupdateDAO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	public descupdateDAO ()
	{

		try
		{
			//////System.out.println("descupdateDAO::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("descupdateDAO::ConnectionPool----->>>>After Open --->>>>Test");


		}
		catch (Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}

	}
	public String insert(String designation,String change,String date1)throws Exception
	{
		String s="";
		try
		{

			pr1=con.prepareStatement("update designation set designation=?  where designation=?");
			pr1.setString(1,change);
			pr1.setString(2,designation);
			pr1.executeUpdate();
			//////System.out.println("Updated Designation.....");
			///////////////////////////////inserting new one
			pr2=con.prepareStatement("Update employee set designation=? where designation=?");
			pr2.setString(1,change);
			pr2.setString(2,designation);

			pr2.executeUpdate();
			//////System.out.println("Updated Designation.....For all employees");
			//~~~~~~~~~~~~~~~~~~~~~for all in empinout1
			pr3=con.prepareStatement("Update empinout1 set designation=? where designation=?");
			pr3.setString(1,change);
			pr3.setString(2,designation);

			pr3.executeUpdate();
			//////System.out.println("Updated Designation.....For all employees in empinout1");

			//~~~~~~~~~~~~~~~~~~~~~for all in empabsent
			pr4=con.prepareStatement("Update empabsent set designation=? where designation=?");
			pr4.setString(1,change);
			pr4.setString(2,designation);

			pr4.executeUpdate();
			//////System.out.println("Updated Designation.....For all employees in empabsent");

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
				
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}

		return s;

	}
}