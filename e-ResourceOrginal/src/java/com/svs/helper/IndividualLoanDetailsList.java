package com.svs.helper;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.svs.bean.EmployeeBean;
import com.svs.bean.LoanFormBean;
import com.svs.erp.loan.DAO.LoanDAO;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class IndividualLoanDetailsList
 */
public class IndividualLoanDetailsList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Logger logger = Logger.getLogger(IndividualLoanDetailsList.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndividualLoanDetailsList() {
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
		int page = 1;
        int recordsPerPage = 5;
        if(request.getParameter("page") != null)
            page = Integer.parseInt(request.getParameter("page"));
        String companyname=(String)request.getSession().getAttribute("comp");
        LoanDAO loandao = new LoanDAO();
        List<LoanFormBean> list = loandao.displayLoanAuthentication((page-1)*recordsPerPage,recordsPerPage,companyname);
        int noOfRecords = loandao.getNoOfRecords();
        //////System.out.println("No of Records"+noOfRecords);
        int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
        request.setAttribute("loanapply", list);
        request.setAttribute("noOfPages", noOfPages);
        request.setAttribute("currentPage", page);
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
        RequestDispatcher view = request.getRequestDispatcher("individual_loan_details.jsp");
        view.forward(request, response);
	}

}
