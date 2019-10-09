package com.svs.helper;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.svs.erp.Hr.DAO.EmployeeInformationDAO;
import com.svs.util.ConvertStackTracetoString;
import com.svs.util.Utl_StringOperations;

/**
 * Servlet implementation class Hlp_EmpidGeneration
 */
public class Hlp_EmpidGeneration extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private EmployeeInformationDAO empinfo=new EmployeeInformationDAO();   
	private Utl_StringOperations util_stringop=new Utl_StringOperations();
	private String id=null;
	static Logger logger = Logger.getLogger(Hlp_EmpidGeneration.class.getName());
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hlp_EmpidGeneration() {
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
		String name=request.getParameter("cname");
		PrintWriter out=response.getWriter();
		String empid=empinfo.getMaxOfEmployee();
		//////System.out.println("Company Name\t"+name);
		if(name.isEmpty()){
			out.println("");
		}else{
			id="";	
			//////System.out.println("Company Name\t"+name);
			 id=util_stringop.gettingCapitalLetters(name);
					//////System.out.println("Empid Code"+id);
			
			int i=Integer.parseInt(empid);
			i++;
			//////System.out.println("Empid \t"+i);
			id+=i;
			//////System.out.println("Employee id\t"+id);
			out.println(id);
		}
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		
		
		
		response.setContentType("text/plain");
		
	}

}
