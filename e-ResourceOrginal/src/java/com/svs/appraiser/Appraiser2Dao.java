package com.svs.appraiser;

import java.sql.*;
import java.util.Collection;
import java.util.Iterator;


import org.apache.log4j.Logger;

import com.svs.appraisal.AppraisalFormDao;
//import com.svs.dbconnection.*;
import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;
public class Appraiser2Dao {
	Connection con=null;
	PreparedStatement pstmt,pstmt_Checking=null;
	ResultSet rs,rs_Checking=null;
	Iterator iterator;
	String x[]=new String[1000];
	int i;
	String aPPraisalId=null;
	final static Logger logger = Logger.getLogger(Appraiser2Dao.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	//DataBaseConnection connection=new DataBaseConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	
	public Appraiser2Dao(){
		try{
			//con=connection.getDBConnection();
			con=connectionUtils.getDBConnection();
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
	}

	public String insertappraiser(Collection appraiser2_col) throws Exception{
		
		try
		{
			for(iterator=appraiser2_col.iterator();iterator.hasNext();)
			{
				for( i=0;i<appraiser2_col.size();i++)
				{
						 x[i]=(String)(iterator.next());
				}
			}
			appraiser2_col.clear();
				
			pstmt=con.prepareStatement("insert into appraiser2 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			pstmt.setString(1,x[0]);
			pstmt.setString(2,x[1]);
			pstmt.setString(3,x[2]);
			pstmt.setString(4,x[3]);
			pstmt.setString(5,x[4]);
			pstmt.setString(6,x[5]);
			pstmt.setString(7,x[6]);
			pstmt.setString(8,x[7]);
			pstmt.setString(9,x[8]);
			pstmt.setString(10,x[9]);
			pstmt.setString(11,x[10]);
			pstmt.setString(12,x[11]);
			pstmt.setString(13,x[12]);
			pstmt.setString(14,x[13]);
			pstmt.setString(15,x[14]);
			pstmt.setString(16,x[15]);
			pstmt.setString(17,x[16]);
			pstmt.setString(18,x[17]);
						
			
			
			pstmt.executeUpdate();
			
			
			
		}catch(Exception ex){
			logger.error(util_stacktrace.sendingErrorAsString(ex));
		}
		return aPPraisalId;
	}
	

		public boolean checking(String aPPraiseeId){

		boolean counter=false;
	try{
		
		pstmt_Checking=con.prepareStatement("select aPPraiseeId from appraiser2 where aPPraiseeId=?");
		pstmt_Checking.setString(1,aPPraiseeId);
		rs_Checking=pstmt_Checking.executeQuery();
		while(rs_Checking.next()){
		counter=true;
		}
		
	}
	catch(Exception e){
		//////System.out.println("Appraiser2 Successfully Inserted Record");
	}
	return counter;
	}
	

}
