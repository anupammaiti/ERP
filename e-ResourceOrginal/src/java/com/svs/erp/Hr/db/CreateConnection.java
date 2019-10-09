package com.svs.erp.Hr.db;

import java.sql.*;

public class CreateConnection {

	Connection con=null;
	
	public Connection connection1()
	{try
	{
		Class.forName("com.mysql.jdbc.Driver");
		//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp?autoReconnect=true","root","root");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp","root","root");
	}catch(Exception e)
	{
		e.printStackTrace();
	}
		return con;
	}
	
	
	
}
