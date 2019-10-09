package com.svs.erp.Leaveauthe.DAO;

import java.sql.*;

import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

import org.apache.log4j.Logger;


public class HalfLeaveAuthenticationDaoImpl{

		static Logger log = Logger.getLogger(HalfLeaveAuthenticationDaoImpl.class);
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	HalfCasualLeaveDao halfCasualLeaveDao=new HalfCasualLeaveDao();

	HalfPrivilegeLeaveDao halfPrivilegeLeaveDao=new HalfPrivilegeLeaveDao();

	HalfSickLeaveDao halfSickLeaveDao=new HalfSickLeaveDao();

	Connection con;

	//DBConnection connection=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	
	public HalfLeaveAuthenticationDaoImpl()

	{
		try
		{
			

			con=connectionUtils.getDBConnection();
			

		}catch(Exception ex)
		{
			log.error(util_stacktrace.sendingErrorAsString(ex));
		}
	}
	
	public void approve(String employeecode,String empname,String leavetype,String fromdate,String todate,double cll,double sll,double pll,double lop){
		try
		{
			if(leavetype.equals("1/2CL"))
			{
				halfCasualLeaveDao.approvehalfCL(employeecode, empname, leavetype, fromdate, todate, cll, sll, pll, lop);
				
				
				log.debug("HalfLeaveAuthentication::HalfCasualLeaveDao::approveHalf-cl");
			}	
			else if(leavetype.equals("1/2SL"))
			{
				halfSickLeaveDao.approvehalfSL(employeecode, empname, leavetype, fromdate, todate, cll, sll, pll, lop);
				
				
				log.debug("HalfLeaveAuthentication::HalfSeekLeaveDao::approveHalf-sl");
			}
			else if(leavetype.equals("1/2PL"))
			{
				halfPrivilegeLeaveDao.approvehalfPL(employeecode, empname, leavetype, fromdate, todate, cll, sll, pll, lop);
				
				
				log.debug("HalfLeaveAuthentication::HalfPaidLeaveDao::approveHalf-pl");
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			log.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			try
			{
				
				if (con != null) connectionUtils.setDBClose();
				
			} catch (SQLException e)
			{
				
				log.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
	
		
	}
}
