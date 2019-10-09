package com.svs.erp.Hr.BO;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

import java.text.SimpleDateFormat;

public class prorated1 extends HttpServlet
{
	private static Logger logger =Logger.getLogger(prorated1.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws  IOException,ServletException 

	{
		//PropertyConfigurator.configure("log4j.properties");
		String employeeno=null;
		String jod123=null;
		PrintWriter pw=response.getWriter();
		// String s="";
		Connection con=null;
		ConnectionUtils connectionUtils=new ConnectionUtils();

		PreparedStatement pr=null,pr1=null,pr2=null,pr3=null;
		ResultSet rs=null,rs1=null,rs2=null,rs3=null;
		try{
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"hrerp", "root", "root");
			
			con=connectionUtils.getDBConnection();
			

			String empid=request.getParameter("empid");
			employeeno=empid;
			String empname=request.getParameter("empname");
			String jod=request.getParameter("doj");
			jod123=jod;
			
			Calendar cal1 = Calendar.getInstance();
			//////////////String splitting for first date
			String array[]=jod.split("-");
			String val1=array[0].trim();	
			int val11=Integer.parseInt(val1);	
			String val2=array[1].trim();
			int val12=Integer.parseInt(val2);	//getting month number
			String val3=array[2].trim();
			int val13=Integer.parseInt(val3);	
			int december=12;
			int months=0;
			double clopen=0;
			double slopen=0;
			double plopen=0;
			double total=0;
			//////System.out.println("Date is: " +val11+"-"+val12+"-"+val13);
			if(val13<=15)
			{
				months=december-val12;
				months=months+1;
				//////System.out.println("Result Months are....<=15......"+months);
				clopen=1*months;
				slopen=(0.5)*months;
				plopen=(1.5)*months;
				total=clopen+slopen+plopen;
				//////System.out.println("LEAVES ARE...<=15......CL."+clopen+"...SL.."+slopen+"...PL.."+plopen+"....TOTAL..."+total+"");
			}
			else
			{
				months=december-val12;
				//////System.out.println("Result Months are........>15.."+months);
				clopen=1*months;
				slopen=(0.5)*months;
				plopen=(1.5)*months;
				total=clopen+slopen+plopen;
				//////System.out.println("LEAVES ARE...>15......CL."+clopen+"...SL.."+slopen+"...PL.."+plopen+"....TOTAL..."+total+"");
			}
			//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			//double total=clopen+slopen+plopen;
			pr=con.prepareStatement("insert into leaveopen(empid,name,clopen,slopen,plopen,total,clbal,slbal,plbal)values(?,?,?,?,?,?,?,?,?)");
			pr.setString(1,empid);
			pr.setString(2,empname);
			pr.setDouble(3,clopen);
			pr.setDouble(4,slopen);
			pr.setDouble(5,plopen);
			pr.setDouble(6,total);
			pr.setDouble(7,clopen);
			pr.setDouble(8,slopen);
			pr.setDouble(9,plopen);
			pr.executeUpdate();

		}//try
		catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		finally {
			try
			{
				
				if (con != null) connectionUtils.setDBClose();
				
			} catch (SQLException e)
			{
				
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		//request.setAttribute("msg1",stname);
		HttpSession se=request.getSession(true);
		se.setAttribute("empno" , employeeno);
		se.setAttribute("jod123" , jod123);
		//se.setAttribute("msg1",stname);
		//RequestDispatcher dispatcher = request.getRequestDispatcher("/loadtomysqlinout.jsp");
		//dispatcher.forward(request, response);
		response.sendRedirect("employeeloginsave1.jsp");
		//pw.println("<font color=#EF6216 face=verdana size=2> <font color=#900F8E face=verdana size=2>"+stname+"</font>");
	}
}
