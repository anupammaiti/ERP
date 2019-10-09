package com.svs.erp.loan.BO;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.DAO.LoanStatusDAO;
import com.svs.erp.Leaveauthe.BO.forgetswipeBO;
import com.svs.erp.loan.DAO.LoanDAO;
import com.svs.util.C_Util_Date;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class LoanApplyFormBO
 */
public class LoanApplyFormBO extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private C_Util_Date util_date=new C_Util_Date();
	private LoanDAO loandao=new LoanDAO();
	private boolean insertorupdate=false;
	private String message=null;
	private LoanStatusDAO loanstatus=new LoanStatusDAO();
	static Logger logger = Logger.getLogger(LoanApplyFormBO.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String employeeid=request.getParameter("empid");
		String amount=request.getParameter("loanamount");
		String noofmonths=request.getParameter("noofmonths");
		String monthlyamount=request.getParameter("monthlyamount");
		String status="Porcesses";
		String gendate=util_date.generateDate();
		String comp=(String)request.getSession().getAttribute("comp");
		try{
			insertorupdate=loandao.insert(employeeid, amount, noofmonths, monthlyamount, status,gendate,comp);	
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		
		if(insertorupdate){
			message="Request Send To HRADMIN";
		}else{
			
		}
		request.getSession().setAttribute("message",message);
		response.sendRedirect("loan_form_employee.jsp");
	}

}
