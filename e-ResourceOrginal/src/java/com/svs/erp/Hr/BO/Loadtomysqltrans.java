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

import com.svs.erp.Hr.db.ConnectionUtils;


import com.svs.util.ConvertStackTracetoString;

import java.sql.*;
public class Loadtomysqltrans extends HttpServlet
{
	private static Logger logger =Logger.getLogger(Loadtomysqltrans.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException,ServletException 

	{
		PrintWriter pw=response.getWriter();
		// String s="";
		String stname="Data has been read from the excel file and inserted into the database.";
		HttpSession session=request.getSession();

		String sheetname=request.getParameter("sheetname");
		
		Connection conn = null;
		ConnectionUtils connectionUtils=new ConnectionUtils();

		try{
			ResultSet rs=null;
			ResultSet rs1=null;
			//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			//Connection con = DriverManager.getConnection("jdbc:odbc:excel1");
			//Statement stmt = con.createStatement(rs.TYPE_SCROLL_SENSITIVE,rs.CONCUR_UPDATABLE);
			// rs = stmt.executeQuery("select  * from ["+sheetname+"$]");
			//Class.forName("com.mysql.jdbc.Driver");
			//Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"hrerp", "root", "root");
			
			
			conn=connectionUtils.getDBConnection();
			
			
			Statement st=conn.createStatement(rs.TYPE_SCROLL_SENSITIVE,rs.CONCUR_UPDATABLE);
			//////System.out.println("test start");
			String s="LOAD DATA LOCAL INFILE '"+sheetname+"' INTO TABLE emptransaction FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES (Date,Time,SiteCode,Cardid,Empid,EmpName,Department,Type,CID,Gate	,InandOut,	Remark,Location)";
			
			st.executeUpdate(s);
			////////System.out.println(rs);
			/*Statement st1=conn.createStatement(rs.TYPE_SCROLL_SENSITIVE,rs.CONCUR_UPDATABLE);
		rs = st1.executeQuery("select  * from emptransaction");
        //////System.out.println("test2");
 rs.last();
		String date1=rs.getString(6);
		 //////System.out.println(date1);

   String t="select e.name,e.empno from  employee e where e.empno not in (select empid from empinout  eio where eio.empid=e.empno);";      //code to get absenties
 //////System.out.println("1");
 rs1= st.executeQuery(t);
 ////////System.out.println(rs1);
 //////System.out.println("2");

 PreparedStatement pr=null;
      while (rs1.next()){
		 String s1="insert into empmonthlyabsents(empid,empname,date)values(?,?,?)";
		 pr=conn.prepareStatement(s1);
		 String name=rs1.getString(1);
 String empno=rs1.getString(2);
		 pr.setString(1,empno);
		 pr.setString(2,name);
		 pr.setString(3,date1);
		 pr.executeUpdate();
		// //////System.out.println("**"+pr);
        		}*/
			// out.println("Data has been read from the excel file and inserted into the database.");  
		}
		catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			try
			{
				
				if (conn != null) connectionUtils.setDBClose();
				

			} catch (SQLException e)
			{
				
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}

		ServletContext sc=getServletContext();
		RequestDispatcher rd=sc.getRequestDispatcher("/loadtomysqltrans.jsp");
		rd.include(request,response);
		//res.sendRedirect("fn_ledger_alter_or_display1.jsp");
		pw.println("<font color=#EF6216 face=verdana size=2> <font color=#900F8E face=verdana size=2>"+stname+"</font>");
	}
}
