package com.svs.erp.Hr.BO;

import java.io.IOException;
import java.lang.String;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.*;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.*;
import com.svs.util.ConvertStackTracetoString;

import java.sql.*;
public class Changepassword extends HttpServlet
{
	final static Logger logger = Logger.getLogger(Changepassword.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException,ServletException 

	{
		PrintWriter pw=response.getWriter();
		String s="";
		String stname="";
		HttpSession session=request.getSession();

		String username=request.getParameter("username");
		String pass=request.getParameter("oldpassword");
		String newpassword=request.getParameter("newpassword");
		stname=username;
		Connection con=null;
		ConnectionUtils connectionUtils=new ConnectionUtils();
		
		try
		{	
		con=connectionUtils.getDBConnection();
		
			//Class.forName("com.mysql.jdbc.Driver");
			//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"hrerp","root","root");
			ResultSet rs;
			PreparedStatement ps=con.prepareStatement("select username,password from employeelogin");
			rs=ps.executeQuery();

			while(rs.next())
			{
				if(username.equals(rs.getString(1)) && pass.equals(rs.getString(2)))
				{
					PreparedStatement pr=con.prepareStatement("update employeelogin set password= ? where username= ?");

					pr.setString(1,newpassword);
					pr.setString(2,username);
					pr.executeUpdate();
					

					session.setAttribute("user_name", username);
					session.setAttribute("pwd", newpassword);

				}
			}

			//response.sendRedirect("changepassword.jsp");
			//out.println("not a valid Password");

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

		ServletContext sc=getServletContext();
		RequestDispatcher rd=sc.getRequestDispatcher("/changepassword.jsp");
		rd.include(request,response);
		//res.sendRedirect("fn_ledger_alter_or_display1.jsp");
		pw.println("<font color=#EF6216 face=verdana size=2>Employee Code <font color=#900F8E face=verdana size=2>"+stname+"</font><font color=#EF6216 face=verdana size=2>Password Changed</font>");
	}
}
