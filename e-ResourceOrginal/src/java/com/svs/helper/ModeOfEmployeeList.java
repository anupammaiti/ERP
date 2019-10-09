package com.svs.helper;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class ModeOfEmployeeList
 */
public class ModeOfEmployeeList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
    private Statement st;
    private PreparedStatement pr;
    private ResultSet rs;
	private PrintWriter out;
	private ConnectionUtils conn=new ConnectionUtils();
  static Logger logger = Logger.getLogger(LoanAuthentication.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			out=response.getWriter();
			con=conn.getDBConnection();
			pr=con.prepareStatement("Select modeofemploye from modeofemployement");
			rs=pr.executeQuery();
			while(rs.next()){
			/*	//////System.out.println("Data is\t"+rs.getString(1));*/
				out.println("<option>"+rs.getString(1)+"</option>");
			}
			con.close();
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			//if (rs != null) rs.close();
			
			try{
				
				con=conn.getDBConnection();
				
			}catch(Exception e){
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
				
						
						
						
						
						
			}
		response.setContentType("text/plain");
	}

}
