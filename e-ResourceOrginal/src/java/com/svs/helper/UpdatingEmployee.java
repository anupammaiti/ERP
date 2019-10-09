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
 * Servlet implementation class UpdatingEmployee
 */
public class UpdatingEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  static Logger logger = Logger.getLogger(UpdatingEmployee.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatingEmployee() {
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
		int chekrm=0;
		Connection con=null;
		PreparedStatement pr;
		ResultSet rs;
		Statement st;
		//DBConnection cc=new DBConnection();
		ConnectionUtils connectionUtils=new ConnectionUtils();
		JSONObject empmap=new JSONObject();
		try{
			
		PrintWriter out=response.getWriter();
		con=connectionUtils.getDBConnection();
		String empid=request.getParameter("empno");
		//////System.out.println("Employee Id\t"+empid);
		st=con.createStatement();
		rs=st.executeQuery("select companyname from companylist order by companyname");
		////////////////////////code to select empdetails based on empid from table
		PreparedStatement pss=con.prepareStatement("select * from employee where empno=?");
		pss.setString(1,empid);
		ResultSet rss=pss.executeQuery();
		/////////////////////////////////////////////////////////////////////////
		int c=0;
		while(rss.next())
		{
		c++;
		
		empmap.put("empid",rss.getString(1));
		
		 empmap.put("fname", rss.getString(2));
		
		 empmap.put("lname",rss.getString(3));
			
		 empmap.put("father",rss.getString(4));
		
		 empmap.put("dob", rss.getString(5));
		
		 empmap.put("sex", rss.getString(6));
		
		 empmap.put("joindate", rss.getString(7));
		
		 empmap.put("designation", rss.getString(8));
		
		 empmap.put("department", rss.getString(9));
		
		 empmap.put("rm", rss.getString(10));
		
		 empmap.put("location", rss.getString(12));
		
		empmap.put("em", rss.getString(13));
		
		empmap.put("nation", rss.getString(14));
				
		empmap.put("birhtplace",rss.getString(15));
		
		empmap.put("phone",rss.getString(16));
		
		empmap.put("address",rss.getString(17));
		
		empmap.put("religion",rss.getString(18));
		
		empmap.put("pan",rss.getString(19));
		
		empmap.put("passport", rss.getString(20));
		
		empmap.put("company",rss.getString(23));
		
		empmap.put("qualif", rss.getString(24));
		
		empmap.put("presentsal",rss.getDouble(25));
		
		empmap.put("bacc", rss.getString(28));
		
		empmap.put("email", rss.getString(32));
		
		empmap.put("email1", rss.getString(34));
		
		empmap.put("hod", rss.getString(33));
		
		empmap.put("moe", rss.getString(35));
		out.println(empmap);
		}
		
		}catch(Exception e)
		{
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
		response.setContentType("text/plain");
	}

}
