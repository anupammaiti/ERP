package com.svs.helper;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import net.sf.json.JSONObject;

import com.svs.bean.EmployeeBean;
import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class EmployeeCardUpdate
 */
public class EmployeeCardUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private Statement st;
	private PreparedStatement pr;
	private ResultSet rs;
	private JSONObject json=new JSONObject();
    private ConnectionUtils connectionUtils=new ConnectionUtils();
    private List<EmployeeBean> employeelist=new ArrayList<EmployeeBean>();
    private EmployeeBean empbean=null;
    PrintWriter out=null;
    static Logger logger = Logger.getLogger(EmployeeCardUpdate.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
    
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeCardUpdate() {
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
			con=connectionUtils.getDBConnection();
			int c = 0;
			
				//////System.out.println("inoutreload1.jsp::ConnectionPool----->>>>Before Open --->>>>Test");
				con=connectionUtils.getDBConnection();
				//////System.out.println("inoutreload1.jsp::ConnectionPool----->>>>After Open --->>>>Test");
				//////System.out.println("Sno\t"+request.getParameter("sno"));
				//////System.out.println("Company Name\t"+request.getParameter("comp"));
				pr = con.prepareStatement("select * from employee where empno=? and companyname=?");
				pr.setString(1, request.getParameter("sno"));
				pr.setString(2,request.getParameter("comp"));
				rs = pr.executeQuery();

				while (rs.next()) {
					/*empbean=new EmployeeBean();
					empbean.setDepartment(rs.getString(9));
					empbean.setDesignation(rs.getString(8));
					empbean.setRm(rs.getString(10));
					empbean.setHod(rs.getString(33));
					employeelist.add(empbean);*/
					//////System.out.println("Name is\t"+rs.getString(2));
					json.put("name",rs.getString(2));
					json.put("department", rs.getString(9));
					json.put("designation",rs.getString(8));
					json.put("rm",rs.getString(10));
					json.put("hod",rs.getString(33));
					c++;
					json.put("result", c);
					
					
			
				}
				//////System.out.println("Counter is\t"+c);
				if(c!=0){
					out.print(json);	
				}
				else{
					json.clear();
					json.put("result", c);
					out.println(json);
				}
				//request.setAttribute("emplist", employeelist);
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			try
			{	
				
				if (con != null) connectionUtils.setDBClose();
				

			} catch (SQLException e)
			{
				
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		response.setContentType("text/plain");	
		  //RequestDispatcher view = request.getRequestDispatcher("forgetcarddetailssearch");
		  //view.forward(request, response);
	}

}
