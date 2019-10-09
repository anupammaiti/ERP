package com.svs.erp.Hr.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.erp.Hr.db.MYException;
import com.svs.util.ConvertStackTracetoString;

public class LoanStatusDAO {

	static Logger log = Logger.getLogger(LoanStatusDAO.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	private ConnectionUtils connectionUtils=new ConnectionUtils();
	private Connection con=null;
	private PreparedStatement pr;
	private ResultSet rs;
	private Statement st;
	private boolean insertorupdate=false;
	private int i=0;
	private String insertquery="insert into laonstatus (empid,loanamount,noofmonths,monthlyamout,status,gendate,companyname) values(?,?,?,?,?,?,?)";
	private String updatequery="update laonstatus set status=?,loansanctiondate=? where empid=?";
	private String upateloanstatus="update laonstatus set duemonths=?,dueamount=? where empid=?";
	public LoanStatusDAO(){
		try {
			//////System.out.println("statuscheckDAO::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("statuscheckDAO::ConnectionPool----->>>>After Open --->>>>Test");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			log.error(util_stacktrace.sendingErrorAsString(e));
		} catch (MYException e) {
			// TODO Auto-generated catch block
			
		}	
	}
	public boolean insert(String empid,String amount,String noofmonth,String monthlyamount,String status,String gendate,String comp){
		//////System.out.println("Insertion of Loan Status");
		try {
			pr=con.prepareStatement(insertquery);
			pr.setString(1, empid);
			pr.setString(2,amount);
			pr.setString(3,noofmonth);
			pr.setString(4, monthlyamount);
			pr.setString(5, status);
			pr.setString(6,gendate);
			pr.setString(7, comp);
			i=pr.executeUpdate();
			//////System.out.println("Insertion is\t"+i);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			log.error(util_stacktrace.sendingErrorAsString(e));
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
			//////System.out.println("Loan Sanstioned");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			log.error(util_stacktrace.sendingErrorAsString(e));
		}
		if(i!=0){
			insertorupdate=true;
		}
		else{
			insertorupdate=false;
		}
		
		return insertorupdate;
	}
	public int updateDueAmount(HashMap loanstatus){
		try {
			pr=con.prepareStatement(upateloanstatus);
			pr.setString(1,loanstatus.get("duemonths").toString());
			pr.setString(2,loanstatus.get("dueamount").toString());
			pr.setString(3,loanstatus.get("empid").toString());
			i=pr.executeUpdate();
			//////System.out.println("Loan Sanstioned");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			log.error(util_stacktrace.sendingErrorAsString(e));
		}
		
		
		return 0;
	}
}
