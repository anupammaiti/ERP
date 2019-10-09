package com.erp.util;

import java.sql.Connection;
import java.sql.DriverManager;

import org.springframework.beans.factory.annotation.Autowired;

public class DBConnection {
	
	@Autowired
	DateUtil dateutil;
	
	Connection con;
		
	public Connection getDBConnection(){
		try{
			 Class.forName("com.mysql.jdbc.Driver");
			   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/erp","root","root");
		}catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}

	public void getBackupDataBase(){
		
	String presentdate=dateutil.generateDate();	
	
		Process runtimeprocess;
		try{
			System.out.println("Date is:"+presentdate);
			runtimeprocess=Runtime.getRuntime().exec("mysqldump -uroot -proot erp > /home/ravi/db/erp"+presentdate+".sql");
			int counter=runtimeprocess.waitFor();
			System.out.println("Backup Class3\t"+counter);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	

}
