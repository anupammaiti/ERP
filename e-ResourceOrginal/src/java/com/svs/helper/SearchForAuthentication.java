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
 * Servlet implementation class SearchForAuthentication
 */
public class SearchForAuthentication extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection conn=null;
	ConnectionUtils connectionUtils=new ConnectionUtils();
	  static Logger logger = Logger.getLogger(ReportingList.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
   //Class.forName("com.mysql.jdbc.Driver");
   //Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hrerp","root","root");
    ResultSet rs;
	PreparedStatement pstmt=null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchForAuthentication() {
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
		
		try
			{
			 
			  String query;
			
				////////System.out.println("searchforauthe3.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
				conn=connectionUtils.getDBConnection();
				////////System.out.println("searchforauthe3.jsp::ConnectionPool----->>>>After Open --->>>>Test");
				////////System.out.println("2");		
				String name=request.getParameter("ename");
				////////System.out.println("3");
				String empno=request.getParameter("empno");
				String comp=request.getParameter("comp");
				/*//////System.out.println("4");
				//////System.out.println("Employee No\t"+empno);
				//////System.out.println("Name\t"+name);*/
				if((empno.isEmpty()&&(empno!=null)) && ((name!=null)&&name.isEmpty()))
				{
				////////System.out.println("company"+companyname);
				////////System.out.println("11");
				   query="select * from  employee where companyname=?";
				   ////////System.out.println("company"+companyname);
			            pstmt=conn.prepareStatement(query);
			            pstmt.setString(1, comp);
			            rs=pstmt.executeQuery();
			    }else  if((name!="")&&(empno.equals(""))){
		////////System.out.println("company"+companyname);
		////////System.out.println("8");
		   query="select * from  employee where (name=? and companyname=?) ";
		  // //////System.out.println("company"+companyname);
	            pstmt=conn.prepareStatement(query);
	            pstmt.setString(1, name);
	            pstmt.setString(2, comp);
	            rs=pstmt.executeQuery();
	    }
		
			else if((empno!="")&&(name.equals("")))
		{
		////////System.out.println("company"+companyname);
		////////System.out.println("10");
		   query="select * from  employee where (empno=? and companyname=?)";
		   ////////System.out.println("company"+companyname);
	            pstmt=conn.prepareStatement(query);
	            pstmt.setString(1, empno);
	            pstmt.setString(2,comp);
	            rs=pstmt.executeQuery();
	    }else if((empno!=null)&&(name!=null)){
	    	 query="select * from  employee where (name=?) and (empno=?) and (companyname=?) ";
	            pstmt=conn.prepareStatement(query);
	            pstmt.setString(1, name);
	            pstmt.setString(2, empno);
	            pstmt.setString(3,comp);
	          //  //////System.out.println("12");
                     rs=pstmt.executeQuery();

	    }
		
	  
	   
	  int c=0;
	  while(rs.next()){
		  c++;
		  ////////System.out.println(rs.getString(2)+"Count Value\t"+c);
		  out.println("<tr onMouseOver='this.className='highlight'' onMouseOut='this.className='normal'' class='tr1'><td width='99'><a href='prorated?empid="+rs.getString(1)+"'  id='anchorcolor' title='Click Here To Go For Authentication'><img src='images/report1.png' align='absmiddle'>&nbsp;"+rs.getString(1)+"</a></td><td width='140'>"+rs.getString(2)+"</td><td width='140'>"+rs.getString(10)+"</td><td>"+rs.getString(33)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(23)+"</td></tr>");
		  
	  }

	
	  if(c==0)
		{
	out.println("<tr align=center><td><font color=red size=4>No Data Found</font><td></tr>");
		}
	  
	  
	if (conn != null){ conn.close();}
	}catch(Exception ex)
			{
			 logger.error(util_stacktrace.sendingErrorAsString(ex));
			}finally {
				try
				{
					//////System.out.println("searchforauthe3.jsp::ConnectionPool--Before Close --->>>>Test");
					if (conn != null) connectionUtils.setDBClose();
					//////System.out.println("searchforauthe3.jsp::ConnectionPool--After Close--->>>>Test");

				} catch (Exception e)
				{
					logger.error(util_stacktrace.sendingErrorAsString(e));
				}
			}
			response.setContentType("text/plain");
			
	}

}
