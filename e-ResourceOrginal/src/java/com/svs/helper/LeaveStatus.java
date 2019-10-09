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

import net.sf.json.JSONObject;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class LeaveStatus
 */
public class LeaveStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con=null;
 	ConnectionUtils connectionUtils=new ConnectionUtils();
	 static Logger logger = Logger.getLogger(LeavesList.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LeaveStatus() {
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
		PrintWriter out=response.getWriter();	
		String fd = null;
		String td = null;
		String ltype = null;
		String stype = null;
		String odtime = null;
		JSONObject leavstatus=new JSONObject();
		try{
		con=connectionUtils.getDBConnection();
		String empid=request.getParameter("empid");
		String fdate=request.getParameter("fdate");
		String todate=request.getParameter("todate");
		//////System.out.println("Empid\t"+empid);
		//////System.out.println("From Date\t"+fdate);
		//////System.out.println("ToDate\t"+todate);
		String str4 = "select fromdate,todate,leavetype,session,odtime from leavestatus where employeecode=? and fromdate=? and todate=?";
		PreparedStatement pstmt4 = con.prepareStatement(str4);
		pstmt4.setString(1, empid);
		pstmt4.setString(2, fdate);
		pstmt4.setString(3, todate);
		ResultSet rs4 = pstmt4.executeQuery();
		while (rs4.next()) {
			leavstatus.put("fd",rs4.getString(1));
			
			leavstatus.put("td", rs4.getString(2));
			
			leavstatus.put("ltype", rs4.getString(3));
			
			leavstatus.put("stype", rs4.getString(4));
			
			leavstatus.put("odtime", rs4.getString(5));
			out.println(leavstatus);
			
		}
		
		
		
		
		}catch(Exception e)
		{
			logger.error(util_stacktrace.sendingErrorAsString(e));
			}finally {
						try
						{
						
						
							if (con != null)connectionUtils.setDBClose();
							
						
						} catch (Exception e)
						{
							
							logger.error(util_stacktrace.sendingErrorAsString(e));
						}
					}
		
	}

}
