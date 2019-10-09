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
 * Servlet implementation class SearchForMail
 */
public class SearchForMail extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    private Connection con;
    private Statement st;
    private PreparedStatement pr;
    private ResultSet rs;
	private PrintWriter out;
	private ConnectionUtils conn=new ConnectionUtils();
	  static Logger logger = Logger.getLogger(SearchForLeaveAdjst.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchForMail() {
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
		int count=0;
		try{
			out=response.getWriter();
			con=conn.getDBConnection();
			pr=con.prepareStatement("select empid,empname,date,count(authentication) from  empabsent where compname=? and date between ? and ? and authentication='AB' group by empid;");
			pr.setString(1,request.getParameter("comp"));
			pr.setString(2,request.getParameter("fromdate"));
			pr.setString(3, request.getParameter("todate"));
			rs=pr.executeQuery();
			while(rs.next()){
				count++;
			/*	//////System.out.println("Data is\t"+rs.getString(1));*/
					
				
				out.println(" <tr   onMouseOver='this.className='highlight' onMouseOut='this.className='normal'' class='tr1'><td><input type='checkbox' name='cbmail' value="+rs.getString(1)+"></td><td align='center'><a href='noofleaves?empid=<%=rs.getString(1)%>'  id='anchorcolor' title='Click Here To View Leaves' target='_blank'><img src='images/report1.png' align='absmiddle'>&nbsp;"+rs.getString(1)+"</a></td><td align='left'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+rs.getString(2));   
			 
					   
				      
				
			}
		if(count==0){
			out.println("<font color=red size=4>No Data Found</font>");
			out.println("<form name=frm><input type=hidden value=nodata name=nd></form>");	
		}
		
			con.close();
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			try
			{
				
				if (conn != null) conn.setDBClose();
				

			} catch (Exception e)
			{
			
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		
		response.setContentType("text/plain");	
		
	}

}
