package com.svs.erp.Hr.BO;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.log4j.Logger;

import java.text.SimpleDateFormat;

import com.svs.erp.Hr.DAO.LeaveopeningforempDAO;
import com.svs.util.ConvertStackTracetoString;

public class Leaveopeningforemp extends HttpServlet
{
int empno;
		String empnoo;

		Collection employee_coll=new ArrayList();
		LeaveopeningforempDAO lopen=new LeaveopeningforempDAO();
		final static Logger logger = Logger.getLogger(Leaveopeningforemp.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
		
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
	        HttpSession session=req.getSession();

	////////System.out.println("Start coll");
		//employee_coll.add(empno);
		
		employee_coll.add(req.getParameter("empno"));//a[0]
		employee_coll.add(req.getParameter("cl"));//a[1]
		employee_coll.add(req.getParameter("sl"));//a[2]
		employee_coll.add(req.getParameter("pl"));//a[3]
		//employee_coll.add(req.getParameter("doj"));//a[3]
		String jod=req.getParameter("doj");
	//////System.out.println("DOJ..........."+jod);
	try
	{
	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~code to find prorated data leaves~~~~~~~~~~~~~~~~~~~~~
/*Calendar cal1 = Calendar.getInstance();
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
  }*/
	//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		empnoo=lopen.insert(employee_coll);
         HttpSession ses=req.getSession(true);
         session.setAttribute("msg" , empnoo);
		 //////System.out.println("Msg in session"+empnoo);
		employee_coll.clear();
		res.sendRedirect("Leaveopeningforemp.jsp");
	}
	catch (Exception e)
	{
		logger.error(util_stacktrace.sendingErrorAsString(e));
	}
		
	}
}