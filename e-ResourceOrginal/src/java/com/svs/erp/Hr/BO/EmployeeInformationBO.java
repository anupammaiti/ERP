package com.svs.erp.Hr.BO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.DAO.EmployeeInformationDAO;
import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.hrerp.login.loginDAO;
import com.svs.util.ConvertStackTracetoString;

public class EmployeeInformationBO extends HttpServlet
{
int empno;
		String empnoo;

		Collection employee_coll=new ArrayList();
		EmployeeInformationDAO empinformation=new EmployeeInformationDAO();
		
		Connection con=null;;
	ConnectionUtils connectionUtils=new ConnectionUtils();
	loginDAO logindao=new loginDAO();
	final static Logger logger = Logger.getLogger(EmployeeInformationBO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();

	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
	        HttpSession session=req.getSession();

	////////System.out.println("Start coll");
		//employee_coll.add(empno);
		
		employee_coll.add(req.getParameter("name"));//a[0]
		employee_coll.add(req.getParameter("lname"));//a[1]
		employee_coll.add(req.getParameter("fathername"));//a[2]
		employee_coll.add(req.getParameter("dob"));//a[3]
		employee_coll.add(req.getParameter("sex"));//a[4]
		employee_coll.add(req.getParameter("joiningdate"));//a[5]
		employee_coll.add(req.getParameter("designation"));//a[6]
		employee_coll.add(req.getParameter("department"));//a[7]
		employee_coll.add(req.getParameter("reportingto"));//a[8]
		employee_coll.add(req.getParameter("joblevel"));//a[9]
		employee_coll.add(req.getParameter("location"));//a[10]
		employee_coll.add(req.getParameter("entrymanner"));//a[11]
		employee_coll.add(req.getParameter("nomination"));//a[12]
		employee_coll.add(req.getParameter("birthplace"));//a[13]
		employee_coll.add(req.getParameter("phoneno"));//a[14]
		employee_coll.add(req.getParameter("address"));//a[15]
		employee_coll.add(req.getParameter("religion"));//a[16]
		employee_coll.add(req.getParameter("pannumber"));//a[17]
		employee_coll.add(req.getParameter("passportnumber"));//a[18]
		employee_coll.add("-");//a[19]
		employee_coll.add("-");//a[20]
		employee_coll.add(req.getParameter("companyname"));//a[21]
    	employee_coll.add(req.getParameter("qualification"));//a[22]
		employee_coll.add(req.getParameter("presentsalary"));//a[23]
		employee_coll.add("00000");//a[24]
		employee_coll.add("00000");//a[25]
		employee_coll.add(req.getParameter("BankAcno"));//a[26]
		employee_coll.add("-");//a[27]
		employee_coll.add("00");//a[28]////////////joining time
		employee_coll.add(req.getParameter("hod"));//a[29]
		employee_coll.add(req.getParameter("emailid"));//a[30]
		employee_coll.add(req.getParameter("moe"));//a[31]
				employee_coll.add(req.getParameter("emailidd"));//a[32]
employee_coll.add(req.getParameter("empno"));//a[33]

	
	try
	{
		empnoo=empinformation.insert(employee_coll);
		//////System.out.println("UserName"+empno);
         HttpSession ses=req.getSession(true);
         session.setAttribute("empno" , empnoo);
		 //////System.out.println("Empno in session"+empnoo);
		 String companyname=req.getParameter("companyname");
		 //////System.out.println("Company Name\t"+companyname);
		 logindao.insert(empnoo,"123456",req.getParameter("companyname"),req.getParameter("designation"));
		employee_coll.clear();
		res.sendRedirect("employeeloginsave.jsp");
	}
	catch (Exception e)
	{
		logger.error(util_stacktrace.sendingErrorAsString(e));
	}finally {
			try
			{
				
				if (con != null) connectionUtils.setDBClose();
				

			} catch (SQLException e){
				
				logger.error(util_stacktrace.sendingErrorAsString(e));
			}
		}
		
	}
}