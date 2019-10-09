package com.svs.erp.Hr.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.erp.Hr.db.MYException;
import com.svs.util.ConvertStackTracetoString;

public class CompanyPaySlipDAO {
	private boolean insertorupdate=false;
	private Iterator iter;
	private Connection con;
	private Statement st;
	private PreparedStatement pr;
	private ResultSet rs;
	private ConnectionUtils connectionutil=new ConnectionUtils();
	private String[] a=new String[1000];
	private String insertquery="insert into companypayslip (companyname,basic,hra,pf,conv,da,mis1,mie1,mip1,mis2,mie2,mip2,mis3,mie3,mip3,mis4,mie4,mip4,fis1,fie1,fip1,fis2,fie2,fip2,fis3,fie3,fip3,fis4,fie4,fip4,gendate)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	private ArrayList compaysliplist=new ArrayList();
	private String viewquery="select * from companypayslip where companyname=?";
	private String updatequery="update companypayslip set companyname=?,basic=?,hra=?,pf=?,conv=?,da=?,mis1=?,mie1=?,mip1=?,mis2=?,mie2=?,mip2=?,mis3=?,mie3=?,mip3=?,mis4=?,mie4=?,mip4=?,fis1=?,fie1=?,fip1=?,fis2=?,fie2=?,fip2=?,fis3=?,fie3=?,fip3=?,fis4=?,fie4=?,fip4=?,gendate=? where sno=?";
	private static Logger logger = Logger.getLogger(CompanyPaySlipDAO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	int i=0;
	
	public CompanyPaySlipDAO(){
		try {
			con=connectionutil.getDBConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.error(util_stacktrace.sendingErrorAsString(e));
		} catch (MYException e) {
			// TODO Auto-generated catch block
			
		}
	}
 public boolean insertRecord(ArrayList companypayslip){
	 //////System.out.println("List Size\t"+companypayslip.size());
		for(iter=companypayslip.iterator();iter.hasNext();){
			for (int i = 0; i < companypayslip.size(); i++) {
				a[i]=(String)iter.next();	
			}
		}
		
		//Inserting Data to the table.
			try {
				pr=con.prepareStatement(insertquery);
				pr.setString(1, a[0]);	
				pr.setString(2, a[1]);
				pr.setString(3,a[2]);
				pr.setString(4,a[3]);
				pr.setString(5,a[4]);
				pr.setString(6,a[5]);
				pr.setString(7,a[6]);
				pr.setString(8,a[7]);
				pr.setString(9,a[8]);
				pr.setString(10,a[9]);
				pr.setString(11,a[10]);
				pr.setString(12,a[11]);
				pr.setString(13,a[12]);
				pr.setString(14,a[13]);
				pr.setString(15,a[14]);
				pr.setString(16,a[15]);
				pr.setString(17,a[16]);
				pr.setString(18,a[17]);
				pr.setString(19,a[18]);
				pr.setString(20,a[19]);
				pr.setString(21,a[20]);
				pr.setString(22,a[21]);
				pr.setString(23,a[22]);
				pr.setString(24,a[23]);
				pr.setString(25,a[24]);
				pr.setString(26,a[25]);
				pr.setString(27,a[26]);
				pr.setString(28,a[27]);
				pr.setString(29,a[28]);
				pr.setString(30,a[29]);
				pr.setString(31,a[30]);
				
				pr.executeUpdate();
				//con.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
			companypayslip.clear();
		return insertorupdate;
	}
 
 public ArrayList viewCompanyPaySlip(String companyname){
	 compaysliplist.clear();
	 try{//////System.out.println("CompanyName"+companyname);
		 pr=con.prepareStatement("select * from companypayslip where companyname=?");
		 pr.setString(1,companyname);
		 rs=pr.executeQuery();
		 while(rs.next()){
			////////System.out.println(rs.getString(2)); 
			compaysliplist.add(rs.getString(2));
			compaysliplist.add(rs.getString(3));
			compaysliplist.add(rs.getString(4));
			compaysliplist.add(rs.getString(5));
			compaysliplist.add(rs.getString(6));
			compaysliplist.add(rs.getString(7));
			compaysliplist.add(rs.getString(8));
			compaysliplist.add(rs.getString(9));
			compaysliplist.add(rs.getString(10));
			compaysliplist.add(rs.getString(11));
			compaysliplist.add(rs.getString(12));
			compaysliplist.add(rs.getString(13));
			compaysliplist.add(rs.getString(14));
			compaysliplist.add(rs.getString(15));
			compaysliplist.add(rs.getString(16));
			compaysliplist.add(rs.getString(17));
			compaysliplist.add(rs.getString(18));
			compaysliplist.add(rs.getString(19));
			compaysliplist.add(rs.getString(20));
			compaysliplist.add(rs.getString(21));
			compaysliplist.add(rs.getString(22));
			compaysliplist.add(rs.getString(23));
			compaysliplist.add(rs.getString(24));
			compaysliplist.add(rs.getString(25));
			compaysliplist.add(rs.getString(26));
			compaysliplist.add(rs.getString(27));
			compaysliplist.add(rs.getString(28));
			compaysliplist.add(rs.getString(29));
			compaysliplist.add(rs.getString(30));
			compaysliplist.add(rs.getString(31));
			//////System.out.println("DAO \t"+rs.getString(31));
			compaysliplist.add(rs.getString(32));
			compaysliplist.add(rs.getString(1));
		 }
	 }catch(Exception e){
		 logger.error(util_stacktrace.sendingErrorAsString(e));
	 }
	 
	 return compaysliplist;
	 
 }
 public int updateCompanyPaySlip(ArrayList companypayslip){
		/*//////System.out.println("CompanyPaySlip\t"+companypayslip);
		//////System.out.println("CompanyPaySlip\t"+companypayslip.size());*/
	 for(iter=companypayslip.iterator();iter.hasNext();){
			for (int i = 0; i < companypayslip.size(); i++) {
				a[i]=(String)iter.next();	
			}
		}
	 
	 try {
		pr=con.prepareStatement(updatequery);
		 pr.setString(1,a[0]);
		 pr.setString(2,a[1]);
		 pr.setString(3,a[2]);
		 pr.setString(4,a[3]);
		 pr.setString(5,a[4]);
		 pr.setString(6,a[5]);
		 pr.setString(7,a[6]);
		 pr.setString(8,a[7]);
		 pr.setString(9,a[8]);
		 pr.setString(10,a[9]);
		 pr.setString(11,a[10]);
		 pr.setString(12,a[11]);
		 pr.setString(13,a[12]);
		 pr.setString(14,a[13]);
		 pr.setString(15,a[14]);
		 pr.setString(16,a[15]);
		 pr.setString(17,a[16]);
		 pr.setString(18,a[17]);
		 pr.setString(19,a[18]);
		 pr.setString(20,a[19]);
		 pr.setString(21,a[20]);
		 pr.setString(22,a[21]);
		 pr.setString(23,a[22]);
		 pr.setString(24,a[23]);
		 pr.setString(25,a[24]);
		 pr.setString(26,a[25]);
		 pr.setString(27,a[26]);
		 pr.setString(28,a[27]);
		 pr.setString(29,a[28]);
		 pr.setString(30,a[29]);
		 pr.setString(31,a[30]);
		 pr.setString(32, a[31]);
		 
		 int i=pr.executeUpdate();
		 //////System.out.println("sno\t"+a[31]+"\t"+i);
		 
	 } catch (SQLException e) {
		// TODO Auto-generated catch block
		 logger.error(util_stacktrace.sendingErrorAsString(e));
	} 
	 if(i!=0){
		 insertorupdate=true;
	 }else{
		 insertorupdate=false;
	 }
	 return i;
 }
}
