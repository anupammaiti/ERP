package com.svs.erp.loan.BO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jfree.util.Log;

import com.svs.erp.Hr.DAO.LoanStatusDAO;
import com.svs.erp.loan.DAO.LoanDAO;
import com.svs.util.C_Util_Date;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class UpdateLoanAuthentication
 */
public class UpdateLoanAuthentication extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private boolean insertorupdate=false;
	private C_Util_Date util_date=new C_Util_Date();
	private String dateofsan=null;
	private LoanDAO loandao=new LoanDAO();
	private LoanStatusDAO loanstatus=new LoanStatusDAO();
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String empid=request.getParameter("empid");
		String status=request.getParameter("status");
		dateofsan=util_date.generateDate();
		try{
		loandao.updateLoadStatus(empid, status, dateofsan);
		loanstatus.updateLoadStatus(empid, status, dateofsan);
		}catch(Exception e){
			Log.error(util_stacktrace.sendingErrorAsString(e));
		}
		String message="Status Updated";
		request.getSession().setAttribute("message",message);
		response.sendRedirect("LoanAuthentication");
	}

}
