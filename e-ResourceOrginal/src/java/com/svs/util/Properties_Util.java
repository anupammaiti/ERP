package com.svs.util;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class Properties_Util {
	
	Properties prop=new Properties();
	private String prp_file="message.properties";
	
	public Properties getMessageUpload() throws IOException{
		
		InputStream inputStream=getClass().getClassLoader().getResourceAsStream(prp_file);
		if(inputStream!=null){
			prop.load(inputStream);
		}else{
			throw new FileNotFoundException("property file '" + prp_file + "' not found in the classpath");
		}
		
		return prop;
	}

}
