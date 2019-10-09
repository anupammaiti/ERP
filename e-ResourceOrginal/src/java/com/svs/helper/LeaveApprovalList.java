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
 * Servlet implementation class LeaveApprovalList
 */
public class LeaveApprovalList extends HttpServlet {
	private static final long serialVersionUID = 1L;
    static Logger logger = Logger.getLogger(LeaveApprovalList.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LeaveApprovalList() {
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
		Connection conn=null;
	 	ConnectionUtils connectionUtils=new ConnectionUtils();
	 	PrintWriter out=response.getWriter();
	 	String comp=request.getParameter("comp");
	 	try
	 	{
	   //Class.forName("com.mysql.jdbc.Driver");
	   //Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp","root","root");
	  	 	//////System.out.println("LeaveApprovalHRRMHR.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
			conn=connectionUtils.getDBConnection();
			//////System.out.println("LeaveApprovalHRRMHR.jsp::ConnectionPool----->>>>After Open --->>>>Test");
				//////System.out.println("Company Name\t"+comp);
	   String str="select * from  leavestatus where company=? and status='Open' ";  
	   PreparedStatement pr=conn.prepareStatement(str);
	   pr.setString(1, comp);
	   ResultSet rs=pr.executeQuery();
	   String fromdate;
	   String temp=null;
	   int count=0;
	   while(rs.next()){
		   count++;
		   if(rs.getString("purposeofleave")!=null){
			 
			   out.println("<tr onMouseOver='this.className='highlight'' onMouseOut='this.className='normal'' class='tr1'><td><a href='proratedforLeaveAutheHR?Leave Approval Form For Employee&fromdate="+rs.getString(7)+"&todate="+rs.getString(8)+"&Code112=25548"+rs.getString(3)+"&6885KVK"+rs.getString(20)+"&empid="+rs.getString(3)+"' id='anchorcolor' title='Click Here To Approve Leave'>"+rs.getString(3)+"</a></td><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(24)+"</td><td>"+temp+"</td></tr>");
		   }
		  
	    
	
   //  fromdate=rs.getString(7);
	 //out.println(fromdate);
	}
	   if(count==0){
		   out.println("<tr align=center><td><font color=red size=4>No Data Found</font><td></tr>");
	   }
	   
	   }
	catch(Exception e)
{
logger.error(util_stacktrace.sendingErrorAsString(e));
}finally {
			try
			{
				
			
				if (conn != null)connectionUtils.setDBClose();
				
				
			} catch (Exception e)
			{
				
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
	}

}
