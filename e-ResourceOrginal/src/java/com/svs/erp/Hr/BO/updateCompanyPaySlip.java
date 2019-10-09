package com.svs.erp.Hr.BO;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.DAO.CompanyPaySlipDAO;
import com.svs.util.C_Util_Date;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class updateCompanyPaySlip
 */
public class updateCompanyPaySlip extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ArrayList companypayslip=new ArrayList();
	private CompanyPaySlipDAO companypayslipdao=new CompanyPaySlipDAO();
	private C_Util_Date util_date=new C_Util_Date();
	
	static Logger logger = Logger.getLogger(updateCompanyPaySlip.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		////////System.out.println("Company PaySlip\t");
		companypayslip.add(request.getParameter("companyname"));
		companypayslip.add(request.getParameter("basic"));
		companypayslip.add(request.getParameter("hra"));
		companypayslip.add(request.getParameter("pf"));
		companypayslip.add(request.getParameter("conv"));
		companypayslip.add(request.getParameter("da"));
		companypayslip.add(request.getParameter("mis1"));
		companypayslip.add(request.getParameter("mie1"));
		companypayslip.add(request.getParameter("mip1"));
		companypayslip.add(request.getParameter("mis2"));
		companypayslip.add(request.getParameter("mie2"));
		companypayslip.add(request.getParameter("mip2"));
		companypayslip.add(request.getParameter("mis3"));
		companypayslip.add(request.getParameter("mie3"));
		companypayslip.add(request.getParameter("mip3"));
		companypayslip.add(request.getParameter("mis4"));
		companypayslip.add(request.getParameter("mie4"));
		companypayslip.add(request.getParameter("mip4"));
		companypayslip.add(request.getParameter("fis1"));
		companypayslip.add(request.getParameter("fie1"));
		companypayslip.add(request.getParameter("fip1"));
		companypayslip.add(request.getParameter("fis2"));
		companypayslip.add(request.getParameter("fie2"));
		companypayslip.add(request.getParameter("fip2"));
		companypayslip.add(request.getParameter("fis3"));
		companypayslip.add(request.getParameter("fie3"));
		companypayslip.add(request.getParameter("fip3"));
		companypayslip.add(request.getParameter("fis4"));
		companypayslip.add(request.getParameter("fie4"));
		companypayslip.add(request.getParameter("fip4"));
		companypayslip.add(util_date.generateDate());
		companypayslip.add(request.getParameter("sno"));
try{
	
	companypayslipdao.updateCompanyPaySlip(companypayslip);
}catch(Exception e){
	logger.error(util_stacktrace.sendingErrorAsString(e));
}
		
		
		response.sendRedirect("update_company_payslip.jsp");
	}

}
