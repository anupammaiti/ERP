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
 * Servlet implementation class LeaveTypes
 */
public class LeaveTypes extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con=null;
	ConnectionUtils connectionUtils=new ConnectionUtils();
	PreparedStatement pr;
	ResultSet rs;
	Statement st;
	static Logger logger = Logger.getLogger(LeaveTypes.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LeaveTypes() {
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
			
		
		PrintWriter out=response.getWriter();
		double cl1=0.0,sl1=0.0,pl1=0.0,lop1=0.0;
		String empid=request.getParameter("empid");
		String company=request.getParameter("comp");
		String str2="select empid,sum(cl),sum(sl),sum(pl),sum(lop) from leaveapplications where empid=? and companyname=?  group by empid=? ";
		con=connectionUtils.getDBConnection();
		PreparedStatement  pstmt2=con.prepareStatement(str2);
		pstmt2.setString(1,empid);
		pstmt2.setString(2,company);
		pstmt2.setString(3, empid);
		ResultSet rs2=pstmt2.executeQuery();
		while(rs2.next())
		{
		cl1=rs2.getDouble(2);
		sl1=rs2.getDouble(3);
		pl1=rs2.getDouble(4);
		lop1=rs2.getDouble(5);
		}
		
		double ttcl=0.0,ttsl=0.0,ttpl=0.0;
		String str3="select clopen,slopen,plopen from leaveopen where empid=?";
		PreparedStatement  pstmt3=con.prepareStatement(str3);
		pstmt3.setString(1,empid);
		ResultSet rs3=pstmt3.executeQuery();
		while(rs3.next())
		{
		ttcl=rs3.getDouble(1);
		ttsl=rs3.getDouble(2);
		ttpl=rs3.getDouble(3);
		}
		//////System.out.println("Consumed PL......."+pl1+".........total PL..."+ttpl);
		//~~~~~~~~~~~~~~~~~~~~~~~~~~~code endzzzzz
			
	if(cl1<ttcl){ 
	out.println("<option value='1/2CL'>1/2CL</option>");
	}
	if(sl1<ttsl){ 
   out.println("<option value='1/2SL'>1/2SL</option>");
   }
   if(pl1<ttpl){ 
   out.println(" <option value='1/2PL'>1/2PL</option>");
	}
	out.println("<option value='1/2TL'>1/2Tour</option>");
	out.println( "<option value='1/2LOP'>1/2LOP</option>");
	out.println("<option value='TL'>Tour </option>");
  if(cl1<ttcl){ 
 out.println(" <option value='CL'>Casual Leave</option>");
   }
  if(sl1<ttsl){ 
  out.println("<option value='SL'>Sick Leave</option>");
   }
    if(pl1<ttpl){
  out.println("<option value='PL'>Privilege Leave</option>");
  }
  out.println("<option value='LOP'>LOP</option>");
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

response.setContentType("text/plain");
	}

}
