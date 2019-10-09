package com.svs.erp.Hr.BO;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.DAO.CompanyPaySlipDAO;
import com.svs.util.ConvertStackTracetoString;

/**
 * Servlet implementation class view_CompanyPaySlip
 */
public class view_CompanyPaySlip extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private JSONObject companypayslip=new JSONObject();
	private CompanyPaySlipDAO companypayslipdao=new CompanyPaySlipDAO();
	private String companyname="SVSINFOMATICS";
	private ArrayList companypaysliplist=new ArrayList();
	private PrintWriter out;
	private static Logger logger = Logger.getLogger(view_CompanyPaySlip.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		out=response.getWriter();
		companypaysliplist.clear();
		companypaysliplist=companypayslipdao.viewCompanyPaySlip(companyname);
		try{
		/*//////System.out.println("company payslip list"+companypaysliplist);
		//////System.out.println("company payslip list size\t"+companypaysliplist.size());
		//////System.out.println("Company Name\t"+companypaysliplist.get(0));*/
		companypayslip.put("companyname",companypaysliplist.get(0));
		companypayslip.put("basic",companypaysliplist.get(1));
		companypayslip.put("hra", companypaysliplist.get(3));
		companypayslip.put("pf", companypaysliplist.get(4));
		companypayslip.put("da", companypaysliplist.get(6));
		companypayslip.put("conv", companypaysliplist.get(2));
		
		companypayslip.put("mis1", companypaysliplist.get(7));
		companypayslip.put("mie1",  companypaysliplist.get(8));
		companypayslip.put("mip1",  companypaysliplist.get(9));
		companypayslip.put("mis2",  companypaysliplist.get(10));
		companypayslip.put("mie2",  companypaysliplist.get(11));
		companypayslip.put("mip2",  companypaysliplist.get(12));
		/*//////System.out.println("MIP2\t"+companypaysliplist.get(12));*/
		companypayslip.put("mis3",  companypaysliplist.get(13));
		companypayslip.put("mie3",  companypaysliplist.get(14));
		companypayslip.put("mip3",  companypaysliplist.get(15));
		companypayslip.put("mis4",  companypaysliplist.get(16));
		/*//////System.out.println("MIS4\t"+companypaysliplist.get(16));*/
		companypayslip.put("mie4",  companypaysliplist.get(17));
		companypayslip.put("mip4", companypaysliplist.get(18));
		
		companypayslip.put("fis1", companypaysliplist.get(19));
		/*//////System.out.println("FIS1\t"+companypaysliplist.get(19));*/
		companypayslip.put("fie1", companypaysliplist.get(20));
		companypayslip.put("fip1", companypaysliplist.get(21));
		companypayslip.put("fis2", companypaysliplist.get(22));
		companypayslip.put("fie2", companypaysliplist.get(23));
		companypayslip.put("fip2", companypaysliplist.get(24));
		companypayslip.put("fis3", companypaysliplist.get(25));
		companypayslip.put("fie3", companypaysliplist.get(26));
		companypayslip.put("fip3", companypaysliplist.get(27));
		companypayslip.put("fis4", companypaysliplist.get(28));
		
		companypayslip.put("fie4", companypaysliplist.get(29));
		/*//////System.out.println("FIE4"+companypaysliplist.get(29));*/
		companypayslip.put("fip4", companypaysliplist.get(30));
		companypayslip.put("sno", companypaysliplist.get(31));
		//////System.out.println("sno\t"+companypaysliplist.get(31));
		out.println(companypayslip);
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
	}

	

}
