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

import com.svs.erp.Hr.DAO.EmployeeInformationDAO;
import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class ListOfAbsetDays
 */
public class ListOfAbsetDays extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeInformationDAO empdao=new EmployeeInformationDAO();
	private ConnectionUtils conn=new ConnectionUtils();
	private Connection con=null;
	private PreparedStatement pr;
	private ResultSet rs;
	private int c=0;
	private int cab=0;
	static Logger logger = Logger.getLogger(ListOfAbsetDays.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListOfAbsetDays() {
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
			String empid=request.getParameter("empid");
			if(empdao.getEmployeeList(empid)){
				out.println("<tr><td colspan=8 align=right><button   id=startab class=buttonab onMouseOver=goLite(this.id) onMouseOut=goDim(this.id)>Click here to view your absent days details</i></button></td></tr>");
				con=conn.getDBConnection();
				pr=con.prepareStatement("select * from  leavestatus where status='Open' and toempcode=?");
				pr.setString(1,empid);
				rs=pr.executeQuery();
				while(rs.next()){
					
				 out.println("<tr><td><strong><font color=#000066>Emp ID </font></strong></td><td><strong><font color=#000066>Emp Name</font></strong></td><td><strong><font color=#000066>Company.</font></strong></td><td><strong><font color=#000066>Designation</font></strong></td><td><strong><font color=#000066>From Date</font></strong></td><td><strong><font color=#000066>To Date</font></strong></td><td><strong><font color=#000066>Leave Type</font></strong></td><td><strong><font color=#000066>Purpose of leave</font></strong></td></tr>");
				 out.println("<tr onMouseOver=this.className='highlight' onMouseOut=this.className='normal' class=tr1><td><a href=proratedforLeaveAuthe?Leave Approval Form For Employee&fromdate="+rs.getString(7)+"&todate="+rs.getString(8)+"&Code112=25548"+rs.getString(3)+"&6885KVK"+rs.getString(20)+"&empid="+rs.getString(3)+"id=anchorcolor title=Click Here To Approval Leave>"+rs.getString(3)+"</a></td><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(4)+" </td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(24)+"</td>");
				 if(rs.getString(5)!=null){
					 
				 out.println("<td>"+rs.getString(5)+"</td></tr>");
				 
				 }
				if(c==0){
					out.println("<tr align=center><td><font color=red size=2><i> No Leave requests to be approved</i></font></td></tr>");
					}
				con.close();
				rs.close();
				out.close();
				}
				}else{
					out.println("<tr><td><strong><font color=#000066>Emp ID</font> </strong> </td><td> <strong> <font color=#000066>Emp Name</font></strong></td><td><strong><font color=#000066>Date of Absent</font></strong></td> <td><strong><font color=#000066>Designation</font></strong></td><td><strong><font color=#000066>Department</font></strong></td><td><strong><font color=#000066>RM</font></strong></td><td><strong><font color=#000066> HOD</font></strong></td></tr>");
					con=conn.getDBConnection();
					pr=con.prepareStatement("select * from  empabsent where authentication='AB' and  empid=?");
					pr.setString(1,empid);
					rs=pr.executeQuery();
					while(rs.next()){
						cab++;
						
						out.println("<tr onMouseOver=this.className='highlight' onMouseOut=this.className='normal' class=tr1> <td><a id=anchorcolor>"+rs.getString(1)+"</a> </td> <td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td>");
						   
						   if(rs.getString(11)!=null){
							   out.println("<td>"+rs.getString(9)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td>");
						   }
						   out.println("</tr>");				
							}
							
							
							if(cab==0){
							 
							 out.println("<td><font color=#CC3300 size=2>No Absent Days</font></td>");
					 		
							}//ifcab==0
							}//else
				
					
					
				
			
			
			
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}finally {
			//if (rs != null) rs.close();
			
			try{
				
				con=conn.getDBConnection();
				
			}catch(Exception e){
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
				
						
						
						
						
						
			}
		
		response.setContentType("text/plain");
		
	}
}
