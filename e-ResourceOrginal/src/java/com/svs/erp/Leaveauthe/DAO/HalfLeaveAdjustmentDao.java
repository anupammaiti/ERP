package com.svs.erp.Leaveauthe.DAO;

import java.sql.*;

import com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

import org.apache.log4j.Logger;

public class HalfLeaveAdjustmentDao {
static Logger log = Logger.getLogger(HalfLeaveAdjustmentDao.class);
ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	HalfCsLeaveDao halfCsLeaveDao=new HalfCsLeaveDao();
	HalfSpLeaveDao halfSpLeaveDao=new HalfSpLeaveDao();
	HalfTcLeaveDao halfTcLeaveDao=new HalfTcLeaveDao();
	HalfTsLeaveDao halfTsLeaveDao=new HalfTsLeaveDao();
	HalfTpLeaveDao halfTpLeaveDao=new HalfTpLeaveDao();
	HalfPcLeaveDao halfPcLeaveDao=new HalfPcLeaveDao();
	
	Connection con;

	//DBConnection connection=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();

	
	
	public HalfLeaveAdjustmentDao()
	{
		
			try
			{
				//////System.out.println("HalfLeaveAdjustmentDao::ConnectionPool----->>>>Before Open");

				con=connectionUtils.getDBConnection();
				//////System.out.println("HalfLeaveAdjustmentDao::ConnectionPool----->>>>After Open");

			}catch(Exception ex)
			{
				log.error(util_stacktrace.sendingErrorAsString(ex));
			}
		}
	
	public void approve(String employeecode,String empname,String leavetype,String fromdate,String todate,double cll,double sll,double pll,double lop){
		try
		{
			if(leavetype.equals("1/2CS"))
			{
				halfCsLeaveDao.approvehalfCS(employeecode, empname, leavetype, fromdate, todate, cll, sll, pll, lop);
				
				//////System.out.println("HalfLeaveAdjustmentDao::halfCsLeaveDao::approvehalfCS::approve-->>>");
				log.debug("HalfLeaveAdjustmentDao::halfCsLeaveDao::approvehalfCS::approve-->>>");
			}
			else if(leavetype.equals("1/2SP"))
			{
				halfSpLeaveDao.approvehalfSP(employeecode, empname, leavetype, fromdate, todate, cll, sll, pll, lop);
				
				//////System.out.println("HalfLeaveAdjustmentDao::halfSpLeaveDao::approvehalfSP::approve-->>>");
				log.debug("HalfLeaveAdjustmentDao::halfSpLeaveDao::approvehalfSP::approve-->>>");
			}
			else if(leavetype.equals("1/2TC"))
			{
				halfTcLeaveDao.approvehalfTC(employeecode, empname, leavetype, fromdate, todate, cll, sll, pll, lop);
				
				//////System.out.println("HalfLeaveAdjustmentDao::halfTcLeaveDao::approvehalfTC::approve-->>>");
				log.debug("HalfLeaveAdjustmentDao::halfTcLeaveDao::approvehalfTC::approve-->>>");

			}
			else if(leavetype.equals("1/2TS"))
			{
				halfTpLeaveDao.approvehalfTP(employeecode, empname, leavetype, fromdate, todate, cll, sll, pll, lop);
				
				//////System.out.println("HalfLeaveAdjustmentDao::halfTsLeaveDao::approvehalfTCS:approve-->>>");
				log.debug("HalfLeaveAdjustmentDao::halfTsLeaveDao::approvehalfTCS:approve-->>>");

			}
			else if(leavetype.equals("1/2TP"))
			{
				halfTpLeaveDao.approvehalfTP(employeecode, empname, leavetype, fromdate, todate, cll, sll, pll, lop);
				
				//////System.out.println("HalfLeaveAdjustmentDao::halfTpLeaveDao::approvehalfTCP:approve-->>>");
				log.debug("HalfLeaveAdjustmentDao::halfTpLeaveDao::approvehalfTCP:approve-->>>");

			}
			else if(leavetype.equals("1/2PC"))
			{
				halfPcLeaveDao.approvehalfPC(employeecode, empname, leavetype, fromdate, todate, cll, sll, pll, lop);
				
				//////System.out.println("HalfLeaveAdjustmentDao::halfPcLeaveDao::approvehalfPC::approve-->>>");
				log.debug("HalfLeaveAdjustmentDao::halfPcLeaveDao::approvehalfPC::approve-->>>");

			}
		}
		catch (Exception e) {
			// TODO: handle exception
			log.error(util_stacktrace.sendingErrorAsString(e));
		}
		finally {
			try
			{
				//////System.out.println("HalfLeaveAdjustmentDao::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("HalfLeaveAdjustmentDao::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				log.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
	}
	

}
