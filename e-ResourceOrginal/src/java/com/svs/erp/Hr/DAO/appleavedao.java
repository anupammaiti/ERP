package com.svs.erp.Hr.DAO;

import java.sql.*;
import java.io.*;
import java.lang.*;

import org.apache.log4j.Logger;

import  com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

public class appleavedao {

	Connection con;
	ConnectionUtils connectionUtils=new ConnectionUtils();
	private static Logger logger = Logger.getLogger(appleavedao.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	PreparedStatement pr,pr1,pr4;
	Statement st,st1,st2;
	ResultSet rs=null,rs1=null,rs2=null;
	//DBConnection cc=new DBConnection();

	String empno;
	String emp;
	String fromdate1;
	String upemployee;
	String status;
	int totalleaves=25;
	int i;
	int noofleaves=0;
	int noofleaves1=0;
	int noofleaves2=0;
	int extraleaves=0;
	String empid=null;
	int remainingleaves1=0;
	boolean flag=false;
	int remainingleaves=0;
	int remainingleaves2=0;

	int cl=0;
	int sl=0;
	int el=0;
	int grandleaves=0;
	int grandleaves1=0;
	int grandleaves2=0;

	String p,q,emp1;


	public appleavedao()
	{
		try
		{
			//////System.out.println("appleavedao::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
			//////System.out.println("appleavedao::ConnectionPool----->>>>After Open --->>>>Test");

		}catch(Exception ex)
		{
			logger.error(util_stacktrace.sendingErrorAsString(ex));
		}
	}

	/*-------------Approve announcement--------------*/

	public String approve(String employeecode,String fromdate)throws SQLException,IOException
	{
		emp=employeecode;
		fromdate1=fromdate;
		//////System.out.println("emp "+ emp);
		//////System.out.println("fromdate1 "+fromdate1);

		try{
			/////////////////// new employee data from database///////////////////////////////////////////////
			st1=con.createStatement();
			rs1=st1.executeQuery("select employeecode,fromdate,noofleaves,remainingleaves,grandleaves,status from leaveapplications");

			rs1.afterLast();
			while(rs1.previous())
			{

				if((emp.equals(rs1.getString("employeecode"))) && (fromdate1.equals(rs1.getString("fromdate"))))

				{
					noofleaves2=Integer.parseInt(rs1.getString("noofleaves"));
					remainingleaves2=Integer.parseInt(rs1.getString("remainingleaves"));
					grandleaves2=Integer.parseInt(rs1.getString("grandleaves"));
					//////System.out.println(" noofleaves1 "+ noofleaves2);
					//////System.out.println("remainingleaves1 "+ remainingleaves2);
					//////System.out.println("grandleaves1 "+ grandleaves2);

					emp1=rs1.getString("employeecode");
				}
			}		

			///////////////////////////old employeee data from database/////////////////////////////////////

			//////System.out.println("empcode1   "+emp1);


			st=con.createStatement(rs.TYPE_SCROLL_SENSITIVE,rs.CONCUR_UPDATABLE);
			rs=st.executeQuery("select employeecode,remainingleaves,grandleaves,status from leaveapplications where employeecode='"+emp1+"' and status='Approved'");
			rs.afterLast();
			while(rs.previous())
			{
				remainingleaves1=Integer.parseInt(rs.getString("remainingleaves"));
				grandleaves1=Integer.parseInt(rs.getString("grandleaves"));
				//////System.out.println("databaseremainingleaves"+remainingleaves1);
				//////System.out.println("databasegrandleaves"+grandleaves1);
				flag=true;

				break;

			}

			if(flag==true)
			{
				grandleaves=grandleaves1+noofleaves2;
				remainingleaves=remainingleaves1-noofleaves2;          //////System.out.println("Test2");
				//////System.out.println("untedata no.of leaves "+noofleaves2);
				//////System.out.println("unte reman"+remainingleaves);
				//////System.out.println("unte grand "+grandleaves);
				//////System.out.println("Test3");
				////////System.out.println("***"+rs.last());
				if(grandleaves > totalleaves)
				{
					extraleaves=grandleaves-totalleaves;
					//////System.out.println("extraleaves"+extraleaves);
				}
				else
				{
					extraleaves=0;
				}
			}

			else

			{
				remainingleaves=remainingleaves2-noofleaves2;
				//////System.out.println("lekununte remaining "+remainingleaves);
				grandleaves=noofleaves2;
			}

			pr=con.prepareStatement("UPDATE leaveapplications set noofleaves=?,remainingleaves=?,status=?,grandleaves=?,extraleaves=? where employeecode=? and fromdate=?");

			pr.setString(7,fromdate);
			pr.setString(6,emp);
			pr.setString(3,"Approved");
			pr.setInt(1,noofleaves2);
			pr.setInt(2,remainingleaves);
			pr.setInt(4,grandleaves);
			pr.setInt(5,extraleaves);
			int approve=pr.executeUpdate();   

			rs.close();

		}
		catch(Exception ex)
		{
			logger.error(util_stacktrace.sendingErrorAsString(ex));
		}finally {
			try
			{

				if (con != null) connectionUtils.setDBClose();


			} catch (SQLException e)
			{

				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		return p;

	}

	/*-------------Reject announcement--------------*/

	public String reject(String employeecode,String fromdate)throws SQLException,IOException
	{
		try{
			pr1=con.prepareStatement("UPDATE leaveapplications set status=? where employeecode=? and fromdate=?");
			//			Announcements_DateofAnnouncement=?, Announcements_Staffid=?, Announcements_Announcedby=?, Announcements_Description=?,	
			////////System.out.println("rejected");




			pr1.setString(1,"Rejected");
			pr1.setString(2,employeecode);
			pr1.setString(3,fromdate);

			int rejectt=pr1.executeUpdate();

			if(rejectt==1)
			{
				//////System.out.println("rejected");


				return "Leave rejected";

			}
			else
			{ //////System.out.println(" not rejected");

			return "Leave not rejected";


			}
		}
		catch(Exception ex)
		{
			logger.error(util_stacktrace.sendingErrorAsString(ex));
		}finally {
			try
			{
				//////System.out.println("appleavedao::reject::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("appleavedao::reject::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		return q;

	}

	/////////////////////////////Update employee details/////////////////////////


	public String update(String employeecode,String phoneno,String address)throws SQLException,IOException
	{
		upemployee=employeecode;
		//////System.out.println("updatedemployee"+upemployee);

		try{
			pr4=con.prepareStatement("UPDATE employee set phoneno=?,address=? where empno=?");


			pr4.setString(1,phoneno);
			pr4.setString(2,address);
			pr4.setString(3,employeecode);

			int update=pr4.executeUpdate();

			if(update==1)
			{
				//////System.out.println("approved");


				return "updated";

			}
			else
			{ //////System.out.println("rejected");

			return "not updated";


			}
		}
		catch(Exception ex)
		{
			logger.error(util_stacktrace.sendingErrorAsString(ex));
		}finally {
			try
			{
				//////System.out.println("appleavedao::update::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("appleavedao::update::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		return p;

	}


}





