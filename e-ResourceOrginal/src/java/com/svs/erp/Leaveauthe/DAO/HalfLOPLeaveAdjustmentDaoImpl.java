package com.svs.erp.Leaveauthe.DAO;

import java.sql.*;

import com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

import org.apache.log4j.Logger;


public class HalfLOPLeaveAdjustmentDaoImpl {

static Logger log = Logger.getLogger(HalfLOPLeaveAdjustmentDaoImpl.class);
ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	HalfLOPCLeaveDao halfLOPCLeaveDao=new HalfLOPCLeaveDao();
	HalfLOPSLeaveDao halfLOPSLeaveDao=new HalfLOPSLeaveDao();
	HalfLOPPLeaveDao halfLOPPLeaveDao=new HalfLOPPLeaveDao();
	HalfLOPTLeaveDao halfLOPTLeaveDao=new HalfLOPTLeaveDao();
	
	Connection con;

	//DBConnection connection=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();

	public HalfLOPLeaveAdjustmentDaoImpl()
	{
		
			try
			{
				//////System.out.println("HalfLOPLeaveAdjustmentDaoImpl::ConnectionPool----->>>>Before Open --->>>>Test");

				con=connectionUtils.getDBConnection();
				//////System.out.println("HalfLOPLeaveAdjustmentDaoImpl::ConnectionPool----->>>>After Open --->>>>Test");

			}catch(Exception ex)
			{
				log.error(util_stacktrace.sendingErrorAsString(ex));
			}
		}
	
	public void approve(String employeecode,String empname,String leavetype,String fromdate,String todate,double cll,double sll,double pll,double lop){
		try
		{
			if(leavetype.equals("1/2LOPC"))
			{
				halfLOPCLeaveDao.approveLOPC(employeecode, empname, leavetype, fromdate, todate, cll, sll, pll, lop);
				
				//////System.out.println("HalfLOPLeaveAdjustmentDaoImpl::halfLOPCLeaveDao::approveLOPC-->>>");
				log.debug("HalfLOPLeaveAdjustmentDaoImpl::halfLOPCLeaveDao::approveLOPC-->>>");
				
			}
			else if(leavetype.equals("1/2LOPS"))
			{
				halfLOPSLeaveDao.approveLOPS(employeecode, empname, leavetype, fromdate, todate, cll, sll, pll, lop);
				
				//////System.out.println("HalfLOPLeaveAdjustmentDaoImpl::halfLOPSLeaveDao::approveLOPS-->>>");
				log.debug("HalfLOPLeaveAdjustmentDaoImpl::halfLOPSLeaveDao::approveLOPS-->>>");

			}
			else if(leavetype.equals("1/2LOPP"))
			{
				halfLOPPLeaveDao.approveLOPP(employeecode, empname, leavetype, fromdate, todate, cll, sll, pll, lop);
				
				//////System.out.println("HalfLOPLeaveAdjustmentDaoImpl::halfLOPPLeaveDao::approveLOPP-->>>");
				log.debug("HalfLOPLeaveAdjustmentDaoImpl::halfLOPPLeaveDao::approveLOPP-->>>");

			}
			else if(leavetype.equals("1/2LOPT"))
			{
				halfLOPTLeaveDao.approveLOPT(employeecode, empname, leavetype, fromdate, todate, cll, sll, pll, lop);
				
				//////System.out.println("HalfLOPLeaveAdjustmentDaoImpl::halfLOPTLeaveDao::approveLOPT-->>>");
				log.debug("HalfLOPLeaveAdjustmentDaoImpl::halfLOPTLeaveDao::approveLOPT-->>>");
			}
			
		}
		catch (Exception e) {
			// TODO: handle exception
			
			log.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			try
			{
				//////System.out.println("HalfLOPLeaveAdjustmentDaoImpl::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("HalfLOPLeaveAdjustmentDaoImpl::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				log.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
	}
	

}
