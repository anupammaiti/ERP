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
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class SearchForLeaveAdjst
 */
public class SearchForLeaveAdjst extends HttpServlet {
	private static final long serialVersionUID = 1L;
       HttpSession session=null;
 	  static Logger logger = Logger.getLogger(SearchForLeaveAdjst.class.getName());
 		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();   
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchForLeaveAdjst() {
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
		 String query=null;
		 String empno=request.getParameter("empno");
		 String name=request.getParameter("name");
		 String comp=request.getParameter("comp");
		 session=request.getSession();
		Connection conn=null;
		 ConnectionUtils connectionUtils=new ConnectionUtils();
		 ResultSet rs;
		PreparedStatement pstmt=null;
		PrintWriter out=response.getWriter();
			try
				{
					//////System.out.println("searchforauthe3adjust.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
					conn=connectionUtils.getDBConnection();
					//////System.out.println("searchforauthe3adjust.jsp::ConnectionPool----->>>>After Open --->>>>Test");
			
			   
		  if((empno.equals("")) && (name!="") )
			{
			////////System.out.println("company"+companyname);
			////////System.out.println("8");
			   query="select * from  employee where (name=? and companyname=?) ";
			  // //////System.out.println("company"+companyname);
		            pstmt=conn.prepareStatement(query);
		            pstmt.setString(1, name);
		            pstmt.setString(2, comp);
		            rs=pstmt.executeQuery();
		    }
			
				else if((empno!="") && (name.equals("")))
			{
			////////System.out.println("company"+companyname);
			////////System.out.println("10");
			   query="select * from  employee where (empno=? and companyname=?)";
			   ////////System.out.println("company"+companyname);
		            pstmt=conn.prepareStatement(query);
		            pstmt.setString(1, empno);
		            pstmt.setString(2, comp);
		            rs=pstmt.executeQuery();
		    }
			else if((empno.equals("")) && (name.equals("")))
			{
			////////System.out.println("company"+companyname);
			////////System.out.println("10");
			   query="select * from  employee where companyname=?" ;
			   ////////System.out.println("company"+companyname);
		            pstmt=conn.prepareStatement(query);
		            pstmt.setString(1, comp);
		            rs=pstmt.executeQuery();
		    }
			
				
		else
		  {
		    query="select * from  employee where (name=?) and (empno=?) and (companyname=?)";
			            pstmt=conn.prepareStatement(query);
			            pstmt.setString(1, name);
			            pstmt.setString(2, empno);
			            pstmt.setString(3, comp);
		                        rs=pstmt.executeQuery();
		}
		  int c=0;
		while(rs.next()){
			c++;
			out.println("<tr onMouseOver='this.className='highlight'' onMouseOut='this.className='normal'' class='tr1'><td width='99'><a href='proratedadjust?empid="+rs.getString(1)+"' id='anchorcolor' title='Click Here To Go For Authentication'><img src='images/report1.png' align='absmiddle'>&nbsp;"+rs.getString(1)+"</a></td><td width='140'>"+rs.getString(2)+"</td><td width='140'>"+rs.getString(10)+"</td><td>"+rs.getString(33)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(23)+"</td></tr>");
			
		}
		if(c==0)
		{
		out.println("<tr align=center><td><font color=red size=4>No Data Found</font><td></tr>");
		}
		

				}catch(Exception ex){
			 logger.error(util_stacktrace.sendingErrorAsString(ex));
			}finally {
				try
				{
					
					if (conn != null) connectionUtils.setDBClose();
					

				} catch (Exception e)
				{
				
					logger.error(util_stacktrace.sendingErrorAsString(e));
				}
			}
			response.setContentType("text/plain");
		  
		  
	}

}
