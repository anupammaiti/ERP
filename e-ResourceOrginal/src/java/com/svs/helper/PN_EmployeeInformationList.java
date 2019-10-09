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
import com.svs.erp.Hr.DAO.EmployeeInformationDAO;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class PN_EmployeeInformationList
 */
public class PN_EmployeeInformationList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Logger logger = Logger.getLogger(PG_PaySlipList.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PN_EmployeeInformationList() {
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
        EmployeeInformationDAO empdao = new EmployeeInformationDAO();
       
         	
        
        List<EmployeeBean> list = empdao.viewEmployeeInfoList((page-1)*recordsPerPage,recordsPerPage,companyname);
        int noOfRecords = empdao.getNoOfRecords();
        //////System.out.println("No of Records"+noOfRecords);
        int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
        request.setAttribute("employeeList", list);
        request.setAttribute("noOfPages", noOfPages);
        request.setAttribute("currentPage", page);
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
        RequestDispatcher view = request.getRequestDispatcher("Home");
        view.forward(request, response);
	}

}
