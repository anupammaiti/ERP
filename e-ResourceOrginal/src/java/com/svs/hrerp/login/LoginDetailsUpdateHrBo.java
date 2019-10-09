package com.svs.hrerp.login;

import java.io.*;

import javax.servlet.http.*;
import javax.servlet.*;

import org.apache.log4j.Logger;

import java.sql.*;
import java.net.*;

import com.svs.hrerp.login.*;
import com.svs.util.ConvertStackTracetoString;
import  com.svs.erp.Hr.db.*;




public class LoginDetailsUpdateHrBo extends HttpServlet
{
	int r,e;
	logindetailsupdateDAO ldu=new logindetailsupdateDAO();

	LoginDetailsUpdateHrDao ldu1=new LoginDetailsUpdateHrDao();
	static Logger logger = Logger.getLogger(LoginDetailsUpdateHrBo.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{



		HttpSession se=req.getSession(true);
		PrintWriter pw=res.getWriter();

		String username=req.getParameter("Uname");
		String password=req.getParameter("confirmpassword");
		////////System.out.println("User in BO........"+username);

		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		Connection con=null;
		ConnectionUtils connectionUtils=new ConnectionUtils();

		
		try
		{

			PreparedStatement ippr=null;

			//DBConnection cc=new DBConnection();
			//////System.out.println("LoginDetailsUpdateHrBo::ConnectionPool----->>>>Before Open --->>>>Test");
			try {
				con=connectionUtils.getDBConnection();
			} catch (MYException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//////System.out.println("LoginDetailsUpdateHrBo::ConnectionPool----->>>>After Open --->>>>Test");
			ResultSet iprs=null;

			r=ldu.updateinfo(username,password);
			////////System.out.println("while hradmin");

			if(r==1)
			{
				//se.setAttribute("userlog",username);
				//se.setAttribute("passlog",password);
				res.sendRedirect("emplogin.jsp");
				se.setAttribute("respmsg","Password Updated Successfully.....");
				//////System.out.println("user ...."+username+"......login details updated successfully...........");
			}
			if(r==0)
			{
				int r1=ldu1.updateinfo(username,password);
				if(r1==1)
				{
					//se.setAttribute("userlog",username);
					//se.setAttribute("passlog",password);
					res.sendRedirect("emplogin.jsp");
					se.setAttribute("respmsg","User Inserted Successfully.....");
					//////System.out.println("user ...."+username+"......login details updated successfully...........");
				}
				if(r1==0)
				{
					//se.setAttribute("userlog",username);
					//se.setAttribute("passlog",password);
					res.sendRedirect("emplogin.jsp");
					se.setAttribute("respmsg","Please Specify Correct Values.....");
					////////System.out.println("user ...."+username+"......login details updated successfully...........");
				}
			}

		}
		catch(SQLException ex)
		{
			logger.error(util_stacktrace.sendingErrorAsString(ex));
		}
		finally {
			try
			{
				//////System.out.println("LoginDetailsUpdateHrBo::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				//////System.out.println("LoginDetailsUpdateHrBo::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}

	}

}
