package com.svs.erp.company.BO;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.svs.appraiser.AppraiserFormDao;
import com.svs.erp.company.DAO.CompanyRegistrationDAO;
import com.svs.hrerp.login.loginDAO;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class CompanyRegistrationBO
 */
public class CompanyRegistrationBO extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    private CompanyRegistrationDAO companyregi=new CompanyRegistrationDAO();
    private loginDAO logindao=new loginDAO();
    private boolean taskstatus=false;
	final static Logger logger = Logger.getLogger(CompanyRegistrationBO.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanyRegistrationBO() {
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
		
		
		List<String> companydetails=new ArrayList<String>();
		String companyname=request.getParameter("companyname");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String designation="Admin";
		companydetails.add(companyname);
		companydetails.add(request.getParameter("firstname"));
		companydetails.add(request.getParameter("lastname"));
		companydetails.add(request.getParameter("mobile"));
		companydetails.add(request.getParameter("email"));
		companydetails.add(username);
		companydetails.add(password);
		companydetails.add(designation);
		
		
		
		taskstatus=companyregi.generateCompany(companydetails);
		logindao.generateLogin(username, password, companyname,designation);
		
		if(taskstatus){
			
		}else{
			
		}
		request.getSession().setAttribute("companyname",companyname);
		response.sendRedirect("upload_image.jsp");
		
	}

}
