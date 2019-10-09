package com.svs.reviewer;



import java.sql.*;
import java.util.Collection;
import java.util.Iterator;


import org.apache.log4j.Logger;

//import com.svs.dbconnection.*;
import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;
public class ReviewerFormDao {
	Connection con=null;
	PreparedStatement pstmt,pstmt_Checking=null;
	ResultSet rs,rs_Checking=null;
	Iterator iterator;
	String x[]=new String[1000];
	int i;
	String aPPraisalId=null;
	ConnectionUtils connectionUtils=new ConnectionUtils();
	//DataBaseConnection connection=new DataBaseConnection();
	 static Logger log = Logger.getLogger(ReviewerFormDao.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();   
	public ReviewerFormDao(){
		try{
			//con=connection.getDBConnection();
			con=connectionUtils.getDBConnection();
		}catch(Exception e){
			log.error(util_stacktrace.sendingErrorAsString(e));
		}
	}

	public String insertreviewer(Collection reviewer_col) throws Exception{
		
		try
		{
			for(iterator=reviewer_col.iterator();iterator.hasNext();)
			{
				for( i=0;i<reviewer_col.size();i++)
				{
						 x[i]=(String)(iterator.next());
				}
			}
			reviewer_col.clear();
				
			pstmt=con.prepareStatement("insert into reviewer values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
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
						
			
			
			pstmt.executeUpdate();
			
			//////System.out.println("Reviewer Successfully Inserted Record");
			
		}catch(Exception ex){
			log.error(util_stacktrace.sendingErrorAsString(ex));
		}
		return aPPraisalId;
	}

public boolean checking(String aPPraiseeId){

		boolean counter=false;
	try{
		
		pstmt_Checking=con.prepareStatement("select aPPraiseeId from reviewer where aPPraiseeId=?");
		pstmt_Checking.setString(1,aPPraiseeId);
		rs_Checking=pstmt_Checking.executeQuery();
		while(rs_Checking.next()){
		counter=true;
		}
		//////System.out.println("ReviewerFormDao is Duplicate"+counter);
	}
	catch(Exception e){
		log.error(util_stacktrace.sendingErrorAsString(e));
	}
	return counter;
	}
	

}
