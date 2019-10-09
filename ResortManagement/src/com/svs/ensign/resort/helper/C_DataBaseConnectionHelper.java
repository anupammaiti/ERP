package com.svs.ensign.resort.helper;

import java.sql.Connection;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

public class C_DataBaseConnectionHelper {
	private Connection con;
	
	@Autowired
	DataSource ds;
	
	
	public Connection getConnection(){
	
		try{
			con=ds.getConnection();
		}catch(Exception e){
			
		}
		return con;
	}
	

}
