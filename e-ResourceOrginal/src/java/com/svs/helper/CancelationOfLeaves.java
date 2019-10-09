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

import net.sf.json.JSONObject;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class CancelationOfLeaves
 */
public class CancelationOfLeaves extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
    private Statement st;
    private PreparedStatement pr;
    private ResultSet rs;
	private PrintWriter out;
	private ConnectionUtils conn=new ConnectionUtils();
	private JSONObject employeelist=new JSONObject();	
	static Logger logger = Logger.getLogger(CancelationOfLeaves.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CancelationOfLeaves() {
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
			out=response.getWriter();
			int count=0;
			String empid=request.getParameter("empid");
			String query="select * from leavestatus where employeecode=? order by fromdate desc limit 1";
			con=conn.getDBConnection();
			pr=con.prepareStatement(query);
			pr.setString(1, empid);
			////////System.out.println("*******User Name in Cancel leaves...."+empid);
			rs=pr.executeQuery();
			while(rs.next()){
				count++;
				out.println("<tr onMouseOver='this.className='highlight'' onMouseOut='this.className='normal'' class='tr1'><td>"+rs.getString(3)+"</td><td>"+rs.getString(1)+"<br/></td><td>"+rs.getString(28)+"<br/></td><td>"+rs.getString(7)+"<br/></td><td>"+rs.getString(8)+"<br/></td><td>"+rs.getString(24)+"<br/></td><td>"+rs.getString(5)+"<br/></td><td align='center'><a href='cancelleave?id="+rs.getString(3)+" &fromdate="+rs.getString(7)+"&todate="+rs.getString(8)+"&leavetype="+rs.getString(24)+" id='anchorcolor' title='Click Here To Cancel'><img src='images/remove.png' align='absmiddle' onClick='return delete1()'></td></tr>");
			
			}
			if(count==0){
				out.println("<font color=red size=4>No Data Found</font>");
				out.println("<form name=frm><input type=hidden value=nodata name=nd></form>");	
			}
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			try
			{
				//////System.out.println("leaveauthentication.jsp::ConnectionPool--Before Close --->>>>Test");
				if (con != null) conn.setDBClose();
				//////System.out.println("leaveauthentication.jsp::ConnectionPool--After Close--->>>>Test");

			} catch (Exception e)
			{
				
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
			
			
		}
		
		
		
	}

}
