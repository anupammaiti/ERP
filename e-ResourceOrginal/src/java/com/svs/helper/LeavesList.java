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
 * Servlet implementation class LeavesList
 */
public class LeavesList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con=null;
	ConnectionUtils connectionUtils=new ConnectionUtils();
	 static Logger logger = Logger.getLogger(LeavesList.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	private JSONObject json=new JSONObject();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LeavesList() {
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
		String empid=request.getParameter("empid");
		String company=request.getParameter("comp");
		String str="select empid,sum(cl),sum(sl),sum(pl),sum(lop) from leaveapplications where empid=? and companyname=?  group by empid=?";
		String str1="select grandleaves,remainingleaves,bcl,bsl,bpl from leaveapplications where empid=? and companyname=?";
try{
	//////System.out.println("Leave List$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");

		con=connectionUtils.getDBConnection();
		
		PreparedStatement pstmt=con.prepareStatement(str);
		PreparedStatement pstmt1=con.prepareStatement(str1);
		pstmt.setString(1,empid);
		pstmt.setString(2,company);
		pstmt.setString(3, empid);
		pstmt1.setString(1,empid);
		pstmt1.setString(2,company);

		ResultSet rs2=pstmt.executeQuery();
		ResultSet rs1=pstmt1.executeQuery();
		double remain=0.0,grandleaves=0.0,bcl=0.0,bsl=0.0,bpl=0.0;
		 rs1.afterLast();
					   while(rs1.previous())//last record
					   {
		grandleaves=rs1.getDouble(1);
		remain=rs1.getDouble(2);
		bcl=rs1.getDouble(3);
		bsl=rs1.getDouble(4);
		bpl=rs1.getDouble(5);
		break;
		}
		////////System.out.println("Grand Leaves........."+grandleaves);
		////////System.out.println("Remaining Leaves........."+remain);
		//rs1.close();
		String id;
		double cl=0.0;
		double sl=0.0;
		double pl=0.0;
		double lop=0.0;
		//out.println("<table border=1><tr><td>EMP ID.</td><td>CL</td><td>SL</td><td>PL</td><td>LOP</td><td>TOTAL LEAVES</td><td>Remaining LEAVES</td></tr>");
		while(rs2.next())
		{

		  id=rs2.getString(1);
		  cl=rs2.getDouble(2);
		  sl=rs2.getDouble(3);
		  pl=rs2.getDouble(4);
		  lop=rs2.getDouble(5);
		  
	}
	out.println("<tr align='center'><td><font color='#330099'><strong>"+empid+"</strong></font></td><td><font color='#330099'><strong>"+cl+"</strong></font></td><td><font color='#330099'><strong>"+sl+"</strong></font></td><td><font color='#330099'><strong>"+pl+"</strong></font></td><td><font color='#330099'><strong>"+grandleaves+"</strong></font></td><td><font color='#FF0000'><strong>"+remain+"</strong></font></td><td><font color='#FF0000'><strong>"+lop+"</strong></font></td><td><font color='#FF0000'><strong>"+bcl+"</strong></font></td><td><font color='#FF0000'><strong>"+bsl+"</strong></font></td><td><font color='#FF0000'><strong>"+bpl+"</strong></font></td></tr>");
		
		
		
}catch(Exception e){
	logger.error(util_stacktrace.sendingErrorAsString(e));
}finally {
	try
	{
		//////System.out.println("leaveauthentication.jsp::ConnectionPool--Before Close --->>>>Test");
		if (con != null) connectionUtils.setDBClose();
		//////System.out.println("leaveauthentication.jsp::ConnectionPool--After Close--->>>>Test");

	} catch (Exception e)
	{
		logger.error(util_stacktrace.sendingErrorAsString(e));
	}
	
	
}    
	response.setContentType("text/plain");



		}

}
