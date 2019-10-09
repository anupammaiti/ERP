package com.svs.erp.Hr.BO;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

public class tothrs1 extends HttpServlet {
	
	static Logger logger = Logger.getLogger(tothrs1.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	public  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String totq=request.getParameter("q");
		String at[]=totq.split(",");
		


		String q1=null;
		String q2=null;

		////////System.out.println(at);
		q1=at[0].trim();
		q2=at[1].trim();

		////////System.out.println("Parameter1"+q1);
		////////System.out.println("Parameter2"+q2);

		Connection conn=null;
		ConnectionUtils connectionUtils=new ConnectionUtils();

		PrintWriter out=response.getWriter();
		try{
			//CreateConnection cc=new CreateConnection();
			//conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp","root","root");
			
			//////System.out.println("tothrs1 ::ConnectionPool----->>>>Before Open --->>>>Test");
			conn=connectionUtils.getDBConnection();
			//////System.out.println("tothrs1 ::ConnectionPool----->>>>After Open --->>>>Test");

			
			String str="select TIMEDIFF(?,?) from dual";
			//Statement pstmt=conn.createStatement();
			PreparedStatement pstmt=conn.prepareStatement(str);
			pstmt.setString(1,q1);
			pstmt.setString(2,q2);
			ResultSet rs=pstmt.executeQuery();

			while(rs.next()){

				out.println("<input type=text name=vehname value='"+rs.getString(1)+"'size=10 readonly=readonly/>");
				////////System.out.println(rs.getString(1));

			}

		}
		catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		finally {
			try
			{
				
				if (conn != null) connectionUtils.setDBClose();
				

			} catch (SQLException e)
			{
				
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}

	}

}
