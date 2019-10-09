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

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.DAO.LeaveApplicationDao;
import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class EmployeeInfomationByID
 */
public class EmployeeInfomationByID extends HttpServlet {
	
	static Logger log = Logger.getLogger(LeaveApplicationDao.class);
	private static final long serialVersionUID = 1L;
    private ConnectionUtils conn=new ConnectionUtils();
    private Connection con;
    private Statement st;
    private PreparedStatement pr;
    private ResultSet rs;
	private JSONObject emplist=new JSONObject();
	static Logger logger = Logger.getLogger(EmployeeInfomationByID.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeInfomationByID() {
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
			PrintWriter out=response.getWriter();
			String empno=request.getParameter("empno");
			con=conn.getDBConnection();
			pr=con.prepareStatement("select name,lname,designationid from employee where empno=?");
			pr.setString(1, empno);
			rs=pr.executeQuery();
			while(rs.next()){
				//////System.out.println("Employee list\t"+rs.getString(1));
				emplist.put("ename", rs.getString(1));
				emplist.put("lname",rs.getString(2));
				emplist.put("designationid",rs.getString(3));
				out.println(emplist);
			}
			
			
			
		}catch (Exception e)
			{
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
			finally 
			{
				try
				{	////////System.out.println("LeaveApplicationDao::ConnectionPool--Before Close --->>>>Test");
					if (con != null) {conn.setDBClose();}
					////////System.out.println("LeaveApplicationDao::ConnectionPool--After Close --->>>>Test");
				} 

				catch (Exception e) {
					logger.error(util_stacktrace.sendingErrorAsString(e));

				}

			}
		
		response.setContentType("text/plain");
	}

}
