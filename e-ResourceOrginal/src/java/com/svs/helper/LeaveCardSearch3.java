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

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class LeaveCardSearch3
 */
public class LeaveCardSearch3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 static Logger logger = Logger.getLogger(LeaveCardSearch3.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LeaveCardSearch3() {
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
		String empname=request.getParameter("empname");
		  String empno=request.getParameter("empno");
		  String fromdate=request.getParameter("fromdate");
		   String todate=request.getParameter("todate");
		   String time=request.getParameter("time");
		   
		   PrintWriter out=response.getWriter();
		   HttpSession session=request.getSession();
		session.setAttribute("empname" , empname);
		   session.setAttribute("empno" , empno);
		   session.setAttribute("fromdate" , fromdate);
		   session.setAttribute("todate" , todate);
		   session.setAttribute("time" , time);
		  String query;

		   //Class.forName("com.mysql.jdbc.Driver");
		   //Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp","root","root");
		   	Connection conn=null;
		   	ConnectionUtils connectionUtils=new ConnectionUtils();
		   	try{
		   	//////System.out.println("PrivilegeLeaveDao::ConnectionPool----->>>>Before Open --->>>>Test");
			conn=connectionUtils.getDBConnection();
			//////System.out.println("PrivilegeLeaveDao::ConnectionPool----->>>>After Open --->>>>Test");
		    ResultSet rs;
			PreparedStatement pstmt=null;
			
			   
		  if((empno.equals("")) && (empname!="") )
			{
			////////System.out.println("company"+companyname);
			//////System.out.println("8");
			   query="select * from  employee where (name='"+empname+"') ";
			  // //////System.out.println("company"+companyname);
		            pstmt=conn.prepareStatement(query);
		            rs=pstmt.executeQuery();
		    }
			
				else if((empno!="") && (empname.equals("")))
			{
			////////System.out.println("company"+companyname);
			//////System.out.println("10");
			   query="select * from  employee where (empno='"+empno+"')";
			   ////////System.out.println("company"+companyname);
		            pstmt=conn.prepareStatement(query);
		            rs=pstmt.executeQuery();
		    }
			else if((empno.equals("")) && (empname.equals("")))
			{
			////////System.out.println("company"+companyname);
			//////System.out.println("11");
			   query="select * from  employee ";
			   ////////System.out.println("company"+companyname);
		            pstmt=conn.prepareStatement(query);
		            rs=pstmt.executeQuery();
		    }
			
				
		else
		  {
		    query="select * from  employee where (name='"+empname+"') and (empno='"+empno+"') ";
			            pstmt=conn.prepareStatement(query);

		                        rs=pstmt.executeQuery();
		  }                     
		                          int c=0;
		                        while(rs.next())
		                          {
		                     	 c++;
		                     	out.println("<tr onMouseOver='this.className='highlight'' onMouseOut='this.className='normal'' class='tr1'><td width='97'> <a href='Leavecard?empno="+rs.getString(1)+"' target='_blank'  id='anchorcolor' title='Click Here To View Report'><img src='images/report1.png' align='absmiddle'>&nbsp;"+rs.getString(1)+"</a></td><td width='140'>"+rs.getString(2)+"</td><td width='140'>"+rs.getString(10)+"</td><td width='140'>"+rs.getString(33)+"</td><td>"+ rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(23)+"</td></tr>");
		                     	   
		                     	 if(c==0)
		                     	{
		                     	out.println("<font color=red size=4>No Data Found</font>");
		                     	}
		                     	
		                        
		}
   

		////////System.out.println("company"+companyname);
		////////System.out.println("dept"+department);
		////////System.out.println("name"+name);
		////////System.out.println("empno"+empno);
		////////System.out.println("sex"+sex);
		////////System.out.println("qualification"+qualification);


		  // pstmt.setString(1,request.getParameter("startdate"));
		   //pstmt.setString(2,request.getParameter("enddate"));
		     // ResultSet rs1=pstmt1.executeQuery();

		   	}catch(Exception ex){
		   	logger.error(util_stacktrace.sendingErrorAsString(ex));
		   	}finally {
		   				try
		   				{
		   					//////System.out.println("LeaveAuthenticationEmp.jsp::ConnectionPool--Before Close --->>>>Test");
		   					if (conn != null) connectionUtils.setDBClose();
		   					//////System.out.println("LeaveAuthenticationEmp.jsp::ConnectionPool--After Close--->>>>Test");

		   				} catch (SQLException e)
		   				{
		   					logger.error(util_stacktrace.sendingErrorAsString(e));
		   				}
		   			}
		   	response.setContentType("text/palin");
	}

}
