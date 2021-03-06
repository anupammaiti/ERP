package com.svs.appraiser;

import java.sql.*;
import java.util.Collection;
import java.util.Iterator;


import org.apache.log4j.Logger;

//import com.svs.dbconnection.*;
import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;
public class AppraiserFormDao {
	Connection con=null;
	PreparedStatement pstmt,pstmt_Checking=null;
	ResultSet rs,rs_Checking=null;
	Iterator iterator;
	String x[]=new String[1000];
	int i;
	String aPPraiseeId=null;
	final static Logger logger = Logger.getLogger(AppraiserFormDao.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	//DataBaseConnection connection=new DataBaseConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	public AppraiserFormDao(){
		try{
			//con=connection.getDBConnection();
			con=connectionUtils.getDBConnection();
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
	}

	public String insertappraiserform(Collection appraiser_col) throws Exception{
		
		try
		{
			for(iterator=appraiser_col.iterator();iterator.hasNext();)
			{
				for( i=0;i<appraiser_col.size();i++)
				{
						 x[i]=(String)(iterator.next());
				}
			}
			appraiser_col.clear();
				
			pstmt=con.prepareStatement("insert into appraiser values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
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
			pstmt.setString(19,x[18]);
			pstmt.setString(20,x[19]);
			pstmt.setString(21,x[20]);
			pstmt.setString(22,x[21]);
			pstmt.setString(23,x[22]);
			pstmt.setString(24,x[23]);
			pstmt.setString(25,x[24]);
			pstmt.setString(26,x[25]);
			pstmt.setString(27,x[26]);
			pstmt.setString(28,x[27]);
			pstmt.setString(29,x[28]);
			pstmt.setString(30,x[29]);
			pstmt.setString(31,x[30]);
			pstmt.setString(32,x[31]);
			pstmt.setString(33,x[32]);
			pstmt.setString(34,x[33]);
			pstmt.setString(35,x[34]);
			pstmt.setString(36,x[35]);
			pstmt.setString(37,x[36]);
			pstmt.setString(38,x[37]);
			pstmt.setString(39,x[38]);
			pstmt.setString(40,x[39]);
			pstmt.setString(41,x[40]);
			pstmt.setString(42,x[41]);
			pstmt.setString(43,x[42]);
			pstmt.setString(44,x[43]);
			pstmt.setString(45,x[44]);
			pstmt.setString(46,x[45]);
			pstmt.setString(47,x[46]);
			pstmt.setString(48,x[47]);
			pstmt.setString(49,x[48]);
			pstmt.setString(50,x[49]);
			pstmt.setString(51,x[50]);
			pstmt.setString(52,x[51]);
			pstmt.setString(53,x[52]);
			pstmt.setString(54,x[53]);
			pstmt.setString(55,x[54]);
			pstmt.setString(56,x[55]);
			pstmt.setString(57,x[56]);
			pstmt.setString(58,x[57]);
			pstmt.setString(59,x[58]);
			pstmt.setString(60,x[59]);
			pstmt.setString(61,x[60]);
			pstmt.setString(62,x[61]);
			pstmt.setString(63,x[62]);
			pstmt.setString(64,x[63]);
			pstmt.setString(65,x[64]);
			pstmt.setString(66,x[65]);
			pstmt.setString(67,x[66]);
			pstmt.setString(68,x[67]);
			pstmt.setString(69,x[68]);
			pstmt.setString(70,x[69]);
			pstmt.setString(71,x[70]);
			pstmt.setString(72,x[71]);
			pstmt.setString(73,x[72]);
			pstmt.setString(74,x[73]);
			pstmt.setString(75,x[74]);
			pstmt.setString(76,x[75]);
			pstmt.setString(77,x[76]);
			pstmt.setString(78,x[77]);
			pstmt.setString(79,x[78]);
			pstmt.setString(80,x[79]);
			pstmt.setString(81,x[80]);
			pstmt.setString(82,x[81]);
			pstmt.setString(83,x[82]);
			pstmt.setString(84,x[83]);
			pstmt.setString(85,x[84]);
			pstmt.setString(86,x[85]);
			pstmt.setString(87,x[86]);
			pstmt.setString(88,x[87]);
			pstmt.setString(89,x[88]);
			pstmt.setString(90,x[89]);
			pstmt.setString(91,x[90]);
			pstmt.setString(92,x[91]);
			pstmt.setString(93,x[92]);
			pstmt.setString(94,x[93]);
			pstmt.setString(95,x[94]);
			pstmt.setString(96,x[95]);
			pstmt.setString(97,x[96]);
			pstmt.setString(98,x[97]);
			pstmt.setString(99,x[98]);
			pstmt.setString(100,x[99]);
			pstmt.setString(101,x[100]);
			pstmt.setString(102,x[101]);
			pstmt.setString(103,x[102]);
			pstmt.setString(104,x[103]);
			pstmt.setString(105,x[104]);
			pstmt.setString(106,x[105]);
			pstmt.setString(107,x[106]);
			pstmt.setString(108,x[107]);
			pstmt.setString(109,x[108]);
			pstmt.setString(110,x[109]);
			
			
			
			pstmt.executeUpdate();
			
			//////System.out.println("Appraiser Successfully Inserted Record");
			
		}catch(Exception ex){
			logger.error(util_stacktrace.sendingErrorAsString(ex));
		}
		return aPPraiseeId;
	}

public boolean checking_appraiser(String aPPraiseeId){

		boolean counter=false;
	try{
		
		pstmt_Checking=con.prepareStatement("select aPPraiseeId from appraiser where aPPraiseeId=?");
		pstmt_Checking.setString(1,aPPraiseeId);
		rs_Checking=pstmt_Checking.executeQuery();
		while(rs_Checking.next()){
		counter=true;
		}
		//////System.out.println("AppraiserFormDao is Duplicate---->>"+counter);
	}
	catch(Exception e){
		logger.error(util_stacktrace.sendingErrorAsString(e));
	}
	return counter;
	}
	

}
