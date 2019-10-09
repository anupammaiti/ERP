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

import net.sf.json.JSONObject;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class EmployeeLeaveAuthenticaion
 */
public class EmployeeLeaveAuthenticaion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con=null;
	//DBConnection cc=new DBConnection();
	ConnectionUtils connectionUtils=new ConnectionUtils();
	PreparedStatement pr;
	Statement st;
	ResultSet rs;
	static Logger logger = Logger.getLogger(EmployeeInfomationByID.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeLeaveAuthenticaion() {
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
			////////System.out.println("This is Employee Leave Authentication Page$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
			PrintWriter out=response.getWriter();
			String empid=request.getParameter("empno");
			////////System.out.println("Employee Id\t"+empid);
			JSONObject employeelist=new JSONObject();	
			
			 con=connectionUtils.getDBConnection();
			
			 String companyname=(String)request.getSession().getAttribute("comp");
			
			////////System.out.println("Helper Class"+empid);
			////////System.out.println("Company Name\t"+companyname);
			PreparedStatement pr=con.prepareStatement("select * from employee where empno=? and companyname=?");
			
			pr.setString(1,empid);
			pr.setString(2,companyname);
			ResultSet rs=pr.executeQuery();
				while(rs.next()) 
			 {
				//	//////System.out.println("#######################"+rs.getString(1));
				employeelist.put("name", rs.getString(2));	
				employeelist.put("empid",rs.getString(1));
				employeelist.put("designation", rs.getString(8));
				employeelist.put("companyname",rs.getString(23));
				out.println(employeelist);
			 }
			con.close();
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			try
			{
				
				if (con != null) connectionUtils.setDBClose();
				

			} catch (Exception e)
			{
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		
		response.setContentType("text/palin");
	}

}
