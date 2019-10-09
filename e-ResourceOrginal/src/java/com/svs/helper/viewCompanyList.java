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
 * Servlet implementation class viewCompanyList
 */
public class viewCompanyList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Connection con;
    private Statement st;
    private PreparedStatement pr;
    private ResultSet rs;
	private PrintWriter out;
	private ConnectionUtils conn=new ConnectionUtils();
	private int count=0;
	  static Logger logger = Logger.getLogger(UpdatingEmployee.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try{
			out=response.getWriter();
			con=conn.getDBConnection();
			pr=con.prepareStatement("select * from companylist");
			rs=pr.executeQuery();
			while(rs.next()){
				count++;
			/*	//////System.out.println("Data is\t"+rs.getString(1));*/
				out.print("<tr onMouseOver=this.className='highlight' onMouseOut=this.className='normal' class=tr1 ><td>"+count+"</td><td>"+rs.getString(2)+"</td><td align=center><a href=deletecompany?id="+rs.getString(1)+" id=anchorcolor title=Click Here To Delete><img src=images/remove.png align=absmiddle onClick=return delete1()></td></tr>");
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
