package com.svs.erp.Hr.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.erp.Hr.db.MYException;
import com.svs.util.ConvertStackTracetoString;

public class FinalPaySlipDAO {
	
	private boolean insertorupdate=false;
	private Iterator iter;
	private Connection con;
	private Statement st;
	private PreparedStatement pr;
	private ResultSet rs;
	private ConnectionUtils connectionutil=new ConnectionUtils();
	private String[] a=new String[1000];
	private String insertquery="insert into payslip (empid,bankaccount,pfno,name,department,pannumber,designation,paiddays,basic,pf,hra,otherdeduction,conv,pt,sa,it,gs,total,abh,date,status,companyname,gendate)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	private ArrayList compaysliplist=new ArrayList();
	private String viewquery="select * from companypayslip where companyname=?";
	private String updatequery="";
	int i=0;
	private static Logger logger = Logger.getLogger(FinalPaySlipDAO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	public FinalPaySlipDAO(){
		try {
			con=connectionutil.getDBConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.error(util_stacktrace.sendingErrorAsString(e));
		} catch (MYException e) {
			// TODO Auto-generated catch block
			
		}
		
		
	}
	
	public boolean insert(ArrayList paysliplist){
		
		 //////System.out.println("List Size\t"+paysliplist.size());
			for(iter=paysliplist.iterator();iter.hasNext();){
				for (int i = 0; i < paysliplist.size(); i++) {
					a[i]=(String)iter.next();	
				}
			}
		
			try {
				pr=con.prepareStatement(insertquery);
				pr.setString(1,a[0]);
				//////System.out.println("1"+a[0]);//Empid
				pr.setString(2,a[1]);
				//////System.out.println("2"+a[1]);//FirstName
				pr.setString(3,a[2]);
				//////System.out.println("3"+a[2]);//Gender
				pr.setString(4,a[3]);
				//////System.out.println("4"+a[3]);//PF No
				pr.setString(5,a[4]);
				//////System.out.println("5"+a[4]);//Department
				pr.setString(6,a[5]);
				//////System.out.println("6"+a[5]);//PF No
				pr.setString(7,a[6]);
				//////System.out.println("7"+a[6]);//Designation
				pr.setString(8,a[7]);
				//////System.out.println("8"+a[7]);//
				pr.setString(9,a[8]);
				//////System.out.println("9"+a[8]);//
				pr.setString(10,a[9]);
				//////System.out.println("10"+a[9]);//
				pr.setString(11,a[10]);
				//////System.out.println("11"+a[10]);//
				pr.setString(12,a[11]);
				//////System.out.println("12"+a[11]);//
				pr.setString(13,a[12]);
				//////System.out.println("13"+a[12]);//
				pr.setString(14,a[13]);
				//////System.out.println("14"+a[13]);//
				pr.setString(15,a[14]);
				//////System.out.println("15"+a[14]);//
				pr.setString(16,a[15]);
				//////System.out.println("16"+a[15]);//
				pr.setString(17,a[16]);
				//////System.out.println("17"+a[16]);//
				pr.setString(18,a[17]);
				//////System.out.println("18"+a[17]);//
				pr.setString(19,a[18]);
				//////System.out.println("19"+a[18]);//
				pr.setString(20,a[19]);
				//////System.out.println("20"+a[19]);//
				pr.setString(21,a[20]);
				//////System.out.println("21"+a[20]);//
				pr.setString(22,a[21]);
				//////System.out.println("22"+a[21]);//
				pr.setString(23,a[22]);
				//////System.out.println("23"+a[22]);	//			
				
			int i=pr.executeUpdate();
				//con.close();
			if(i!=0){
				return true;
			}else{
				return false;
			}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
			
			paysliplist.clear();
			
			
		return insertorupdate;
	}

}
