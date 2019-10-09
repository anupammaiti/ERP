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

public class proratedadjust extends HttpServlet
{
	private static Logger logger =Logger.getLogger(proratedadjust.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws  IOException,ServletException 

	{
		//PropertyConfigurator.configure("log4j.properties");
		PrintWriter pw=response.getWriter();
		// String s="";
		Connection con=null;
		ConnectionUtils connectionUtils=new ConnectionUtils();

		PreparedStatement pr=null,pr1=null,pr2=null,pr3=null;
		ResultSet rs=null,rs1=null,rs2=null,rs3=null;
		double cl=0,cl1=0,cl2=0,fcl=0;
		double sl=0,sl1=0,sl2=0,fsl=0;
		double pl=0,pl1=0,pl2=0,fpl=0;
		HttpSession session=request.getSession();
		String pro="Please follow pro-rata method";
		String empid=request.getParameter("empid");
		String jod=null;
		

		try{
					
			con=connectionUtils.getDBConnection();
			

			//~~~code to get joining date from employeeeee~~~~~~~~
			pr=con.prepareStatement("select joiningdate from employee where empno=?");
			pr.setString(1,empid);
			rs=pr.executeQuery();
			while(rs.next())
			{
				jod=rs.getString(1);
				
			}
			//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			//~~~~~~~~~~~~code to get system current date and month
			Calendar currentDate = Calendar.getInstance();
			SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
			String curdate = formatter.format(currentDate.getTime());
			

			String curmonth=null;
			PreparedStatement pcmonth=con.prepareStatement("select monthname(?) from dual;");
			pcmonth.setString(1,curdate);
			ResultSet rcmonth=pcmonth.executeQuery();
			while(rcmonth.next())
			{
				curmonth=rcmonth.getString(1);
				
			}
			//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

			Calendar cal1 = Calendar.getInstance();
			Calendar cal2 = Calendar.getInstance();
			//////////////String splitting for first date
			String array[]=jod.split("-");
			String val1=array[0].trim();	
			int val11=Integer.parseInt(val1);	
			////////System.out.println(val11);
			String val2=array[1].trim();
			int val12=Integer.parseInt(val2);	
			////////System.out.println(val12);
			String val3=array[2].trim();
			int val13=Integer.parseInt(val3);	
			////////System.out.println("END OF FIRST DATE"+val13);
			////////System.out.println("FD"+val11+val12+val13);
			///////////////////////////////////////////
			//////////////String splitting for last date
			String arr[]=curdate.split("-");
			String val4=arr[0].trim();	
			int val14=Integer.parseInt(val4);
			////////System.out.println(val14);	
			String val5=arr[1].trim();
			int val15=Integer.parseInt(val5);	
			////////System.out.println(val15);
			String val6=arr[2].trim();
			int val16=Integer.parseInt(val6);	
			////////System.out.println("END OF LAST DATE"+val16);
			////////System.out.println("FD"+val14+val15+val16);

			cal1.set(val11, val12, val13);

			cal2.set(val14, val15, val16);

			long milis1 = cal1.getTimeInMillis();
			long milis2 = cal2.getTimeInMillis();
			long diff = milis2 - milis1;
			long diffDays = diff / (24 * 60 * 60 * 1000);
			
			int  findiff=(int)diffDays+1;
			
			int prodays=365-findiff;
			

			if(prodays>=0)
			{
				//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~find cl in currentmonth~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
				pr1=con.prepareStatement("select  sum(cl) from leaveapplications where empid=? and monthname(fromdate)=?");
				pr1.setString(1,empid);
				pr1.setString(2,curmonth);
				rs1=pr1.executeQuery();
				while(rs1.next())
				{
					cl=rs1.getDouble(1);
				}//while]
				if(cl>=1)
				{
					fcl=0;
				}
				else if(cl==0.5)
				{
					fcl=0.5;
				}
				else
				{
					fcl=1;
				}
				//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~code ends here for CL
				if((prodays<=182)&&(prodays>=0)) // apply after 6 months(182==6months)
				{
					//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~find sl in currentmonth~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
					pr2=con.prepareStatement("select  sum(sl) from leaveapplications where empid=? and monthname(fromdate)=?");
					pr2.setString(1,empid);
					pr2.setString(2,curmonth);
					rs2=pr2.executeQuery();
					while(rs2.next())
					{
						sl=rs2.getDouble(1);
					}//while]
					if(sl>=0.5)
					{
						fsl=0;
					}
					else
					{
						fsl=0.5;
					}
				}
				//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~code ends here for SL
				/*if(prodays<=0) // apply after 1yr(365==1 yr)
{
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~find pl in currentmonth~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
pr3=con.prepareStatement("select  sum(pl) from leaveapplications where empid=? and monthname(fromdate)=?");
pr3.setString(1,empid);
pr3.setString(2,curmonth);
rs3=pr3.executeQuery();
while(pr3.next())
{
pl=rs3.getDouble(1);
}//while]
if(pl>=1.5)
{
fpl=0;
}
else if(pl==0.5)
{
fpl=1;
}
else if(pl==1)
{
fpl=0.5;
}
else
{
fpl=1.5;
}*/
				//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~code ends here for CL

			}//if prodays>=0
			else
			{
				pro="Pro-rata period completed";
			}
		}//try
		catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		finally {
			try
			{
				//////System.out.println("proratedadjust::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("proratedadjust::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		//request.setAttribute("msg1",stname);
		HttpSession se=request.getSession(true);
		//se.setAttribute("msg1",stname);
		//RequestDispatcher dispatcher = request.getRequestDispatcher("/loadtomysqlinout.jsp");
		//dispatcher.forward(request, response);
		response.sendRedirect("leaveadjustment.jsp?empid="+empid+"&fcl="+fcl+"&fsl="+fsl+"&fpl="+fpl+"&pro="+pro+"");
		//pw.println("<font color=#EF6216 face=verdana size=2> <font color=#900F8E face=verdana size=2>"+stname+"</font>");
	}
}
