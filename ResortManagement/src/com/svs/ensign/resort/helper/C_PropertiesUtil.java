package com.svs.ensign.resort.helper;

import java.io.FileReader;
import java.util.Properties;

public class C_PropertiesUtil {
	private FileReader reader=null; 
	private Properties properties=null;
	private String resultmsg=null;
	
	public C_PropertiesUtil(){
		try{
			/*reader=new FileReader("messages.properties");
			properties=new Properties();
			properties.load(reader);*/
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	public String getInsertSuccessMsg(){
		
		try{
			 /*resultmsg=properties.getProperty("resort.success");
			 //System.out.println("Result Message\t"+resultmsg);*/
		}catch(Exception e){
			e.printStackTrace();
		}
		return resultmsg;
	}

}
