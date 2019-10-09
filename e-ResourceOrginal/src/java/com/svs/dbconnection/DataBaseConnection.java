

package com.svs.dbconnection;

import java.sql.*;

public class DataBaseConnection {

	Connection con=null;
	
	public Connection getDBConnection()
	{try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp1?autoReconnect=true","root","root");
		//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp","root","root");
	}catch(Exception e)
	{
		e.printStackTrace();
	}
		return con;
	}
	
	
	
}

/*package com.svs.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;


public class DataBaseConnection {
	Connection con=null;
	
	public Connection getDBConnection()
	{
		try
		{
			//////System.out.println("entered in the getDBConnection of the DatabaseConnection class");
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/performance_appraisal","root","root");
			//////System.out.println("performance_appraisal Database Connected");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}


}*/
