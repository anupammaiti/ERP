package com.svs.helper;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class NameOfEmployeeByEmpId
 */
public class NameOfEmployeeByEmpId extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private ConnectionUtils conn=new ConnectionUtils();
	    private Connection con;
	    private PreparedStatement pr;
	    private ResultSet rs;
	    private PrintWriter out;  
	    static Logger logger = Logger.getLogger(NameOfEmployeeByEmpId.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NameOfEmployeeByEmpId() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			String comp=request.getParameter("empid");
			out=response.getWriter();
			con=conn.getDBConnection();
			pr=con.prepareStatement("select name,lname from employee where empno=?");
			pr.setString(1,comp);
			rs=pr.executeQuery();
			while(rs.next()){
				out.println(rs.getString(1)+" "+rs.getString(2));
			}
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
