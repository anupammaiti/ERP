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

import java.io.*;
import java.sql.*;
public class Loadtomysql1 extends HttpServlet
{
	final static Logger logger = Logger.getLogger(Loadtomysql1.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException,ServletException 

	{	
		Connection conn=null;
		ConnectionUtils connectionUtils=new ConnectionUtils();

		PrintWriter pw=response.getWriter();
		// String s="";
		String stname="Data has been read from the excel file and inserted into the database.";
		HttpSession session=request.getSession();

		String sheetname=request.getParameter("sheetname");
		String path = sheetname;
		File filePath = new File(path);
		String filename = filePath.getName();
		//////System.out.println(filename);
		try{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection con = DriverManager.getConnection("jdbc:odbc:Driver={Microsoft Excel Driver (*.xls)};DBQ=" + filename);
			//////System.out.println("text1");
			//Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			//c = DriverManager.getConnection("jdbc:odbc:ExcelTest","",""); // ExcelTest is the DSN name
			//stmnt = con.createStatement();
			//ResultSet rs = stmnt.executeQuery("select * from abadata"); // abadata is my Excel file name
			//while(rs.next())
			//{
			////////System.out.println(rs.getString(1)+" "+rs.getString(2));
			//}




			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("Select * from [category$]");
			while(rs.next())
			{
				//////System.out.println("text2");
				//////System.out.println(rs.getString(1)+" "+rs.getString(2));
			}
			
			//////System.out.println("Loadtomysql1::ConnectionPool----->>>>Before Open --->>>>Test");
			conn=connectionUtils.getDBConnection();
			//////System.out.println("Loadtomysql1::ConnectionPool----->>>>After Open --->>>>Test");
			//Class.forName("com.mysql.jdbc.Driver");
			//Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"hrerp", "root", "root");
			
			
			Statement st=conn.createStatement();
			while (rs.next()){
				String s="insert into emptransaction(date,time,sitecode,cardid,empid,empname,department,type,cid,gate,inandout,remark,location)values('"+rs.getString(1)+"','"+rs.getString(2)+"','"+rs.getString(3)+"','"+rs.getString(4)+"' ,'"+rs.getString(5)+"', '"+rs.getString(6)+"','"+rs.getString(7)+"','"+rs.getString(8)+"','"+rs.getString(9)+"','"+rs.getString(10)+"','"+rs.getString(11)+"','"+rs.getString(12)+"','"+rs.getString(13)+"')";
				st.executeUpdate(s);
			}

			// out.println("Data has been read from the excel file and inserted into the database.");  
		}
		catch(Exception e){
			//////System.out.println(e);
		}finally {
			try
			{
				//////System.out.println("Loadtomysql1::ConnectionPool--Before Close --->>>>Test");
				if (conn != null) connectionUtils.setDBClose();
				//////System.out.println("Loadtomysql1::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				//logger.error("The statement cannot be closed.", e);
				//////System.out.println("Exception"+e);
			}
		}

		ServletContext sc=getServletContext();
		RequestDispatcher rd=sc.getRequestDispatcher("/1.jsp");
		rd.include(request,response);
		//res.sendRedirect("fn_ledger_alter_or_display1.jsp");
		pw.println("<font color=#EF6216 face=verdana size=2> <font color=#900F8E face=verdana size=2>"+stname+"</font>");
	}
}
