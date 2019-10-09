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
 * Servlet implementation class viewDesignationList
 */
public class viewDesignationList extends HttpServlet {
	private static final long serialVersionUID = 1L;
		private Connection con;
	    private Statement st;
	    private PreparedStatement pr;
	    private ResultSet rs;
		private PrintWriter out;
		private ConnectionUtils conn=new ConnectionUtils();
		private int count=0;
		static Logger logger = Logger.getLogger(viewDesignationList.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try{
			String comp=(String)request.getSession().getAttribute("comp");
			out=response.getWriter();
			con=conn.getDBConnection();
			pr=con.prepareStatement("select * from designation where companyname=?");
			pr.setString(1, comp);
			rs=pr.executeQuery();
			while(rs.next()){
				count++;
			/*	//////System.out.println("Data is\t"+rs.getString(1));*/
				out.println("<tr onMouseOver=this.className='highlight' onMouseOut=this.className='normal' class=tr1><td align=center>"+count+"</td><td><div >"+rs.getString(2)+"</div></td><td align=center><a href=deletedesig?id="+rs.getString(1)+" id=anchorcolor title=Click Here To Delete><img src=images/remove.png align=absmiddle onClick=return delete1();></td>");
				
			}
			con.close();
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			try
			{	
				
				
				if (con != null) conn.setDBClose();
				

			} catch (Exception e)
			{
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		response.setContentType("text/plain");
	}

}
