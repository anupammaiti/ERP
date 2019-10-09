package com.svs.erp.Leaveauthe.DAO;

import java.sql.Connection;
import java.sql.SQLException;

import com.svs.erp.Leaveauthe.DAO.CasualLeaveDao;
import com.svs.erp.Leaveauthe.DAO.PrivilegeLeaveDao;
import com.svs.erp.Leaveauthe.DAO.SickLeaveDao;
import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

import org.apache.log4j.Logger;


public class LeaveAuthenticationDaoCSP {

	static Logger log = Logger.getLogger(LeaveAuthenticationDaoCSP.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	CasualLeaveDao casualLeaveDao=new CasualLeaveDao();

	PrivilegeLeaveDao privilegeLeaveDao=new PrivilegeLeaveDao();

	SickLeaveDao sickLeaveDao=new SickLeaveDao();

	Connection con;

	//DBConnection connection=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();

	
		/*String leavetype=null;
		String employeecode=null;
		String empname=null;
		String fromdate=null;
		String todate=null;
		double cll=0;
		double sll=0;
		double pll=0;
		double lop=0;*/

	public LeaveAuthenticationDaoCSP()

	{

		try
		{
			//////System.out.println("LeaveAuthenticationDaoCSP::ConnectionPool----->>>>Before Open --->>>>Test");

			con=connectionUtils.getDBConnection();
			//////System.out.println("LeaveAuthenticationDaoCSP::ConnectionPool----->>>>After Open --->>>>Test");

		}catch(Exception ex)
		{
			log.error(util_stacktrace.sendingErrorAsString(ex));
		}


	}
	
	public void approve(String employeecode,String empname,String leavetype,String fromdate,String todate,double cll,double sll,double pll,double lop){
		
		
		try
		{
			if(leavetype.equals("CL"))
			{
				casualLeaveDao.approvecl(employeecode, empname, leavetype, fromdate, todate, cll, sll, pll, lop);
				
				//////System.out.println("LeaveAuthenticationDaoCSP::CasualLeaveDao::approvecl-->>>");
				log.debug("LeaveAuthenticationDaoCSP::casualLeaveDao:::approvecl");
			}	
			else if(leavetype.equals("SL"))
			{
				sickLeaveDao.approvesl(employeecode, empname, leavetype, fromdate, todate, cll, sll, pll, lop);
				
				//////System.out.println("LeaveAuthenticationDaoCSP::SeekLeaveDao::approvesl-->>>");
				log.debug("LeaveAuthenticationDaoCSP::sickLeaveDao::approvesl");

			}
			else if(leavetype.equals("PL"))
			{
				privilegeLeaveDao.approvepl(employeecode, empname, leavetype, fromdate, todate, cll, sll, pll, lop);
				
				//////System.out.println("LeaveAuthenticationDaoCSP::PaidLeaveDao::approvepl-->>>");
				log.debug("LeaveAuthenticationDaoCSP::privilegeLeaveDao:::approvepl");
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			log.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			try
			{
				//////System.out.println("LeaveAuthenticationDaoCSP::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("LeaveAuthenticationDaoCSP::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				log.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
	
		
	}
	
	
}
