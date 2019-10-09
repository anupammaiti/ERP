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
public class Loadtomysql extends HttpServlet
{	Connection conn=null;
	ConnectionUtils connectionUtils=new ConnectionUtils();
	final static Logger logger = Logger.getLogger(Loadtomysql.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException,ServletException 

	{
		PrintWriter pw=response.getWriter();
		// String s="";
		String stname="Data has been read from the excel file and inserted into the database.";
		HttpSession session=request.getSession();

		String sheetname=request.getParameter("sheetname");
		try{
			ResultSet rs=null;
			ResultSet rs1=null;
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection con = DriverManager.getConnection("jdbc:odbc:excel1");
			Statement stmt = con.createStatement(rs.TYPE_SCROLL_SENSITIVE,rs.CONCUR_UPDATABLE);
			rs = stmt.executeQuery("select  * from ["+sheetname+"$]");
			
			//////System.out.println("Loadtomysql::ConnectionPool----->>>>Before Open --->>>>Test");
			conn=connectionUtils.getDBConnection();
			//////System.out.println("Loadtomysql::ConnectionPool----->>>>After Open --->>>>Test");
			
			//Class.forName("com.mysql.jdbc.Driver");
			//Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"hrerp", "root", "root");
			
			Statement st=conn.createStatement();
			while (rs.next()){
				String s="insert into emptransaction(date,time,sitecode,cardid,empid,empname,department,type,cid,gate,inandout,remark,location)values('"+rs.getString(1)+"','"+rs.getString(2)+"','"+rs.getString(3)+"','"+rs.getString(4)+"' ,'"+rs.getString(5)+"', '"+rs.getString(6)+"','"+rs.getString(7)+"','"+rs.getString(8)+"','"+rs.getString(9)+"','"+rs.getString(10)+"','"+rs.getString(11)+"','"+rs.getString(12)+"','"+rs.getString(13)+"')";
				st.executeUpdate(s);
			}
			rs.last();
			String date1=rs.getString(1);
			//////System.out.println(date1);

			String t="select e.name,e.empno from  employee e where e.empno not in (select empid from emptransaction  eio where eio.empid=e.empno);";
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
			}
			// out.println("Data has been read from the excel file and inserted into the database.");  
		}
		catch(Exception e){
			//////System.out.println(e);
		}finally {
			try
			{
				//////System.out.println("Loadtomysql::ConnectionPool--Before Close --->>>>Test");
				if (conn != null) connectionUtils.setDBClose();
				//////System.out.println("Loadtomysql::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}

		ServletContext sc=getServletContext();
		RequestDispatcher rd=sc.getRequestDispatcher("/exceldatabase.jsp");
		rd.include(request,response);
		//res.sendRedirect("fn_ledger_alter_or_display1.jsp");
		pw.println("<font color=#EF6216 face=verdana size=2> <font color=#900F8E face=verdana size=2>"+stname+"</font>");
	}
}
