package com.svs.erp.loan.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;

import com.svs.bean.LoanFormBean;
import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.erp.Hr.db.MYException;
import com.svs.erp.Leaveauthe.BO.forgetswipeBO;
import com.svs.util.ConvertStackTracetoString;

public class LoanDAO {
	private ConnectionUtils connectionUtils=new ConnectionUtils();
	private Connection con=null;
	private PreparedStatement pr;
	private ResultSet rs;
	private Statement st;
	private boolean insertorupdate=false;
	private String insertquery="insert into loanapply (empid,loanamount,noofmonths,monthlyamount,status,gendate,compname) values(?,?,?,?,?,?,?)";
	private String updatequery="update loanapply set status=?,loansanctiondate=? where empid=?";
	private String loandetailsbyempid="SELECT * FROM loanapply WHERE empid=? AND STATUS='Sanction'";
	private String gettingloandetailsbyemployeid="select loanamount,monthlyamount,noofmonths from loanapply where empid=?";
	private String pg_loanauth="SELECT SQL_CALC_FOUND_ROWS * FROM loanapply where compname=? ORDER BY gendate limit ? , ?";
	private String loanamount=null;
	private ArrayList loandetails=new ArrayList();
	private HashMap loandetails1=new HashMap();
	private List<LoanFormBean> loanlist=new ArrayList<LoanFormBean>();
	private int noOfRecords=0; 
	int i=0;
	static Logger logger = Logger.getLogger(LoanDAO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	public LoanDAO(){
		
		try {
			//////System.out.println("statuscheckDAO::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("statuscheckDAO::ConnectionPool----->>>>After Open --->>>>Test");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.error(util_stacktrace.sendingErrorAsString(e));
		} catch (MYException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean insert(String empid,String amount,String duration,String monthlyamount,String status,String gendate,String comp){
		
		try {
			//////System.out.println("Loan Apply **************************\t");
			pr=con.prepareStatement(insertquery);
			pr.setString(1, empid);
			pr.setString(2,amount);
			pr.setString(3,duration);
			pr.setString(4, monthlyamount);
			pr.setString(5, status);
			pr.setString(6,gendate);
			pr.setString(7, comp);
			i=pr.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		if(i!=0){
			//////System.out.println("Inserted");
			insertorupdate=true;
		}else{
			//////System.out.println("NotInserted");
			insertorupdate=false;
		}
		
		return insertorupdate;
	}

	public boolean updateLoadStatus(String empid,String status,String dateofsans){
		
		try {
			pr=con.prepareStatement(updatequery);
			pr.setString(1,status );
			pr.setString(2,dateofsans);
			pr.setString(3,empid);
			i=pr.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		if(i!=0){
			insertorupdate=true;
		}
		else{
			insertorupdate=false;
		}
		
		return insertorupdate;
	}
	
	public String gettingLoanDetails(String empid){
		
		try {
			pr=con.prepareStatement(loandetailsbyempid);
			pr.setString(1, empid);
			rs=pr.executeQuery();
			while(rs.next()){
			loanamount=rs.getString("monthlyamount");
			//////System.out.println("Loan Amount\t"+loanamount);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		
		return loanamount;
	}
	public HashMap gettingLoanAmount(String empid){

		try {
			pr=con.prepareStatement(gettingloandetailsbyemployeid);
			pr.setString(1,empid);
			rs=pr.executeQuery();
			while(rs.next()){
				loandetails1.put("loanamount", rs.getString(1));
				loandetails1.put("monthlyamount",rs.getString(2));
				loandetails1.put("noofmonths", rs.getString(3));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		return loandetails1;
	}
	
	public List<LoanFormBean> displayLoanAuthentication(int offset, int noOfRecords,String companyname){
		LoanFormBean loanbean=null;
		try{
			
			pr=con.prepareStatement(pg_loanauth);
			pr.setString(1,companyname);
			pr.setInt(2, offset);
			pr.setInt(3,noOfRecords);
			rs=pr.executeQuery();
			while(rs.next()){
				loanbean=new LoanFormBean();
				loanbean.setEmpid(rs.getString(2));
				loanbean.setLoanamount(rs.getString(3));
				loanbean.setNoofmonths(rs.getString(4));
				loanbean.setMonthlyamount(rs.getString(5));
				loanbean.setStatus(rs.getString(7));
				loanbean.setLoansanctionsdate(rs.getString(8));
				loanlist.add(loanbean);
			}
			
			rs.close();
			 rs = pr.executeQuery("SELECT FOUND_ROWS()");
	           if(rs.next()){
	               this.noOfRecords = rs.getInt(1);
	               
	               //////System.out.println("No Of Rows \t"+rs.getInt(1));
	               }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		
		return loanlist;		
	}
	
	public int getNoOfRecords() {
        return noOfRecords;
    }
}
