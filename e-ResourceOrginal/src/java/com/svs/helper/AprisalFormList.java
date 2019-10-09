package com.svs.helper;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import net.sf.json.JSONObject;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.erp.paidholidays.DAO.paidholidaysDAO;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class AprisalFormList
 */
public class AprisalFormList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 	private Connection con;
	    private Statement st;
	    private PreparedStatement pr;
	    private ResultSet rs;
		private PrintWriter out;
		private ConnectionUtils conn=new ConnectionUtils();
		private JSONObject employeelist=new JSONObject();	
		static Logger logger = Logger.getLogger(AprisalFormList.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			out=response.getWriter();
			con=conn.getDBConnection();
			pr=con.prepareStatement("select * from appraisee where aPPraiserName=?");
			pr.setString(1,request.getParameter("empno"));
			rs=pr.executeQuery();
			while(rs.next()){
			/*	//////System.out.println("Data is\t"+rs.getString(1));*/
				employeelist.put("appresialname", rs.getString(2));
				employeelist.put("empno", rs.getString(1));
				employeelist.put("reportingto", rs.getString(10));
				employeelist.put("empmanager", rs.getString(33));
				out.println(employeelist);
			}
			con.close();
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			try
			{
				//////System.out.println("deletepaidholidaysDAO ::ConnectionPool--Before Close --->>>>Test");
				if (con != null) conn.setDBClose();
				//////System.out.println("deletepaidholidaysDAO ::ConnectionPool--After Close--->>>>Test");

			} catch (SQLException e)
			{
				
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		response.setContentType("text/plain");	
		
	}

}
