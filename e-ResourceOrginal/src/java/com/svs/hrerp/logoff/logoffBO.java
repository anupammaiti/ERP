package com.svs.hrerp.logoff;

import java.io.*;

import javax.servlet.http.*;
import javax.servlet.*;

import org.apache.log4j.Logger;

import java.sql.*;
import java.net.*;

import com.svs.hrerp.login.*;
import com.svs.hrerp.logoff.*;
import com.svs.util.ConvertStackTracetoString;





public class logoffBO extends HttpServlet
{
	int r=0;
	logoff ld=new logoff();
	 static Logger log = Logger.getLogger(LoginCheckUp.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();   
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		String userlog=null;
		String passlog=null;
		String company=null;
		String ipaddress=null;
		
		HttpSession se=req.getSession(true);
		userlog=(String)se.getAttribute("userlog");
		passlog=(String)se.getAttribute("passlog");
		company=(String)se.getAttribute("comp");
		ipaddress=req.getRemoteAddr();
		////////System.out.println("....LOGOFF BO......"+userlog+".........."+passlog);
		PrintWriter pw=res.getWriter();


		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

		try
		{
			r=ld.getinfo(userlog);
			if(r==1)
			{
				log.info("\nIP Address:\t"+ipaddress+"\tUser ID:"+userlog+"\t Log Out Status: Successfully \tCompany :\t"+company+"\n\n");
				//se.setAttribute("userlog",username);
				//se.setAttribute("passlog",password);
				res.sendRedirect("index");
				//ServletContext sc=getServletContext(); //application specific
				//sc.removeAttribute("ip123");
				se.removeAttribute("userlog");
				se.removeAttribute("passlog");
				se.removeAttribute("ename");

				se.removeAttribute("user_name");
				se.removeAttribute("pwd");
				//se.invalidate();
				////////System.out.println(userlog+" user logoff successfully...........");
			}
		}
		catch(SQLException ex)
		{
			log.error(util_stacktrace.sendingErrorAsString(ex));
		}

	}

}
