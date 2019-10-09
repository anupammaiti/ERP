package com.svs.hrerp.login;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;
import java.sql.*;
import java.net.*;
import com.svs.hrerp.login.*;
import  com.svs.erp.Hr.db.*;
import com.svs.hrerp.logoff.*;



public class loginBO extends HttpServlet
{
	int r,e;
	loginDAO ld=null;
	logoff ldlogoff=null;
	public void init(ServletConfig  config)throws ServletException
	{
		super.init(config);
		ld=new loginDAO();
		ldlogoff=new logoff();
	}
	public void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException
	{
		doPost(req, res);
	} // doGet()

	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		String u=null;
		//String ip1="..";


		HttpSession se=req.getSession(true);
		PrintWriter pw=res.getWriter();
		String s="";
		String stname="";
		////////System.out.println("Users IP Address is.........................."+req.getRemoteAddr());
		String ip=req.getRemoteAddr();
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		String companyname=null;
		String designation=null;
		////////System.out.println("User in BO........"+username);

		///~~~~~~~~~~~~~~~~~~~~~~~~~~user name putting in session
		/*ServletContext sc=getServletContext(); //application specific

		u=(String)sc.getAttribute("user123");
		ip1=(String)sc.getAttribute("ip123");
		//////System.out.println("..User Name and Pwd....in SContext.........."+u+"............."+ip1+"........");
		if((u==null) && (ip1==null))
		{
		sc.setAttribute("user123",username);
		sc.setAttribute("ip123",ip);

		}*/

		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		//InetAddress thisIp =InetAddress.getLocalHost();
		////////System.out.println("IP:.............."+thisIp.getHostAddress());

		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		Connection con=null;
		//DBConnection cc=new DBConnection();
		ConnectionUtils connectionUtils=new ConnectionUtils();

		try
		{

			PreparedStatement ippr=null;
			PreparedStatement epr=null;
			PreparedStatement ipcheck=null;

//			//////System.out.println("loginBO ::ConnectionPool----->>>>Before Open --->>>>Test");
			con=connectionUtils.getDBConnection();
	//		//////System.out.println("loginBO ::ConnectionPool----->>>>After Open --->>>>Test");

			ResultSet iprs=null;
			ResultSet ers=null;
			ResultSet ipchers=null;
			String loginip=null;
			String ename=null;
			String ipfromdb=null;

			if(username.equals("hradmin"))
			{
				ipcheck=con.prepareStatement("select ip from employeelogin where username=?");
				ipcheck.setString(1,username);
				ipchers=ipcheck.executeQuery();
				boolean check=false;
				while(ipchers.next())
				{
					ipfromdb=ipchers.getString(1);
					//////System.out.println("........"+ipfromdb);
					if(ipfromdb.equals(ip))
					{
						check=true;
						////////System.out.println("......equals...............");
					}

					if(check==true)
					{
						////////System.out.println("......if true...............");
						ldlogoff.getinfo(username);
					}
				}
				r=ld.getinfo(username,password,ip);
				////////System.out.println("while hradmin........");

			}
			else 
			{
				r=ld.getinfouser(username,password);
				////////System.out.println("while Employee.......");
			}
			////////System.out.println(".................return value........."+r);
			if(r==1)
			{
				se.setAttribute("userlog",username);
				se.setAttribute("passlog",password);
				////////System.out.println("UserName"+username);
				////////System.out.println("password"+password);
				res.sendRedirect("PN_EmployeeInformationList");//Admin Page.
				
				////////System.out.println("Please");
				////////System.out.println("user logged in successfully...........");
			}
			else if(r==2)
			{
				ippr=con.prepareStatement("select ip from employeelogin where username=?");
				ippr.setString(1,username);
				iprs=ippr.executeQuery();
				while(iprs.next())
				{
					String resip=iprs.getString(1);
					////////System.out.println("User already logged in..."+resip);
					loginip=resip;
				}
				String m="User Loggedin "+loginip;
				se.setAttribute("errorMessage",m);
				res.sendRedirect("index");//Login Page
				////////System.out.println("User Already loggedin...........");
			}
			else if(r==0)
			{
				String m1="Please specify correct credentials";
				se.setAttribute("errorMessage",m1);
				res.sendRedirect("index");
				////////System.out.println("wrong user name&password...........");
			}
			//~~~~~~~~~~~~~~~~`for employee login
			else   if(r==3)
			{
				epr=con.prepareStatement("select name from employee where empno=?");
				epr.setString(1,username);
				ers=epr.executeQuery();
				while(ers.next())
				{
					ename=ers.getString(1);
					////////System.out.println("User Name...... :"+ename+"....logging in...");

				}
				se.setAttribute("userlog",username);
				se.setAttribute("passlog",password);
				se.setAttribute("ename",ename);
				res.sendRedirect("HomeofEmp");//Empoloyee Page.
				////////System.out.println("Employee.."+username+" logged in successfully...........");
			}

		}

		catch (SQLException e) {
			e.printStackTrace();
		}
		catch (Exception ex){
			////////System.out.println("Exception"+ex);
			ex.printStackTrace();
		}
		finally {
			try
			{
				////////System.out.println("loginBO ::ConnectionPool--Before Close --->>>>Test");
				if (con != null) connectionUtils.setDBClose();
				////////System.out.println("loginBO ::ConnectionPool--After Close--->>>>Test");
			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				////////System.out.println("Exception"+e);
				e.printStackTrace();
			}
		}

		//ServletContext sc=getServletContext();
		//RequestDispatcher rd=sc.getRequestDispatcher("/employeeinformationform.jsp");
		//rd.include(req,res);
		//res.sendRedirect("fn_ledger_alter_or_display1.jsp");
		//pw.println("<font color=#EF6216 face=verdana size=2>Employee Code <font color=#900F8E face=verdana size=2>"+stname+"</font><font color=#EF6216 face=verdana size=2> is Created</font>");

	}

}
