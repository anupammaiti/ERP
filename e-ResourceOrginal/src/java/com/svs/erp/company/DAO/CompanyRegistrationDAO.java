package com.svs.erp.company.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

public class CompanyRegistrationDAO {
	
	private Connection con;
	private PreparedStatement pr;
	private ResultSet rs;
	private ConnectionUtils util_con=new ConnectionUtils();
	private boolean taskstatus=false;
	
	final static Logger logger = Logger.getLogger(addingCompanyDAO.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	public CompanyRegistrationDAO(){
		
		try{
			
			con=util_con.getDBConnection();
			
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		
	}
	
	public boolean generateCompany(List<String> companylist){
		try{
		String ar1[]=new String[50];
		for(int i=0;i<companylist.size();i++){
			
			ar1[i]=companylist.get(i);
		}
		/*for(int i=0;i<companylist.size();i++){
			//////System.out.println("Comapny Registration List\t"+ar1[i]);
		}*/
			
			
		pr=con.prepareStatement("insert into companyregistration (companyname,firstname,lastname,mobileno,email,usrename,password,designation) values (?,?,?,?,?,?,?,?)");
		pr.setString(1, ar1[0]);
		pr.setString(2,ar1[1]);
		pr.setString(3,ar1[2]);
		pr.setString(4,ar1[3]);
		pr.setString(5,ar1[4]);
		pr.setString(6,ar1[5]);
		pr.setString(7,ar1[6]);
		pr.setString(8, ar1[7]);
		int id=pr.executeUpdate();
		if(id!=0){
			taskstatus=true;
		}else{
			taskstatus=false;
		}
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		return taskstatus;
	}
	
public boolean updateLogo(String companyname,String logoname){
	
	try{
		pr=con.prepareStatement("update companyregistration set logo_name=? where companyname=?");
		pr.setString(1, logoname);
		pr.setString(2,companyname);
		int id=pr.executeUpdate();
		if(id!=0){
			taskstatus=true;
		}else{
			taskstatus=false;
		}
		
		
	}catch(Exception e){
		logger.error(util_stacktrace.sendingErrorAsString(e));
	}
	
	
	return taskstatus;
}
	
public String viewImageNameByCompanyName(String companyname){
	String imagename=null;
	try{
		////////System.out.println("Company Name is\t"+companyname);
		pr=con.prepareStatement("select logo_name from companyregistration where companyname=?");
		pr.setString(1,companyname);
		rs=pr.executeQuery();
		while(rs.next()){
			imagename=rs.getString(1);
			////////System.out.println("Image Name is\t"+imagename);
		
		}
	}catch(Exception e){
		logger.error(util_stacktrace.sendingErrorAsString(e));
	}
	
	
	return imagename;
}

	
	
}
