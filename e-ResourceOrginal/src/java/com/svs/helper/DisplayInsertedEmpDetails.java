package com.svs.helper;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import net.sf.json.JSONObject;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class DisplayInsertedEmpDetails
 */
public class DisplayInsertedEmpDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Logger logger = Logger.getLogger(DisplayInsertedEmpDetails.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayInsertedEmpDetails() {
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
		
		  PrintWriter out=null;
		  Connection con=null;
		  ConnectionUtils connectionUtils=new ConnectionUtils();
		  JSONObject employeelist=new JSONObject();
		   try{
	
	//DBConnection cc=new DBConnection();
	//con=cc.connection1();
	out=response.getWriter();
	HttpSession session=request.getSession();
	
	//////System.out.println("employeeloginsave.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
	con=connectionUtils.getDBConnection();
	//////System.out.println("employeeloginsave.jsp::ConnectionPool----->>>>After Open --->>>>Test");
	
	PreparedStatement ps=null;
	ResultSet rs=null;
	String empno=session.getAttribute("empno").toString();
	//////System.out.println("EMPNO"+empno);
	ps=con.prepareStatement("select  empno,name,joiningdate,designation,department,reportingto,manager from employee where empno=?");
	ps.setString(1,empno);
	rs=ps.executeQuery();
	while(rs.next())
	{
		employeelist.put("empno", rs.getString(1));
		employeelist.put("name",rs.getString(2));
		employeelist.put("jod", rs.getString(3));
		employeelist.put("designation",rs.getString(4));
		employeelist.put("department", rs.getString(5));
		employeelist.put("reportingto",rs.getString(6));
		employeelist.put("manager",rs.getString(7));
		out.println(employeelist);
		session.removeAttribute("empno");
	}
	  }//try
	  catch(Exception e)
	  {
	  logger.error(util_stacktrace.sendingErrorAsString(e));
	  }finally {
		try
		{	
			
			if (con != null) connectionUtils.setDBClose();
			

		} catch (SQLException e)
		{
			
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
	 }
		   
	response.setContentType("text/plain");
	}

}
