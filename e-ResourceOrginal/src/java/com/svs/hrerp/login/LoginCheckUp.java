package com.svs.hrerp.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.svs.erp.Leaveauthe.DAO.SickLeaveDao;
import com.svs.util.ConvertStackTracetoString;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class LoginCheckUp
 */
public class LoginCheckUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private loginDAO logindao=new loginDAO();
    private String desingation=null;
    static Logger log = Logger.getLogger(LoginCheckUp.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();    
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginCheckUp() {
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
		log.info("Login Checkup\t **********************");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String navig_page=null;
		String designation=null;
		String companyname=null;
		JSONObject loginstatus=new JSONObject();
		
		try{
			////////System.out.println("Login Check up Starts");
			loginstatus=logindao.getLoginDetails(username,password);
			String ipaddress=request.getRemoteAddr();
			log.info("Login Checkup\t ################");
			designation=(String)loginstatus.get("designation");
			companyname=(String)loginstatus.get("company");
		//System.out.println("Designation in Login Servlet\t"+designation);
			if((designation!=null)&&(!designation.isEmpty())){
				
			//	System.out.println("Designation is Available");
				 if(designation.equals("Admin")){
					 log.info("User ID:\t"+username+"\t Company:\t"+companyname+"\tDesignation\t"+designation+"\nIP:"+ipaddress+"\tLog In Status:\t Successful\n\n");
					
						request.getSession().setAttribute("userlog", username);
						request.getSession().setAttribute("passlog", password);
						request.getSession().setAttribute("comp",companyname);
						response.sendRedirect("PN_EmployeeInformationList");
					}else if(designation!="Admin"){
						 log.info("User ID:\t"+username+"\t Company:\t"+companyname+"\tDesignation\t"+designation+"\nIP:"+ipaddress+"\tLog In Status:\t Successful\n\n");
				//	System.out.println("***Employee Login\t"+designation);
						request.getSession().setAttribute("userlog", username);
						request.getSession().setAttribute("passlog", password);
						request.getSession().setAttribute("comp",companyname);
						response.sendRedirect("HomeofEmp");
					}else{
					//	System.out.println("***Designation is Not Available");
						response.sendRedirect("index");
						 log.info("User ID:\t"+username+"\t Company:\t"+companyname+"\tDesignation\t"+designation+"\nIP:"+ipaddress+"\tLog In Status:\t Fail\n\n");
				
				}
			}else{
				
				////////System.out.println("***Designation is  Null\t"+designation);
				 log.info("User ID:\t"+username+"\t Company:\t"+companyname+"\tDesignation\t"+designation+"\nIP:"+ipaddress+"\tLog In Status:\t Fail\n\n");
				
				
			}
				
				
				

		}catch(Exception e){
			log.error(util_stacktrace.sendingErrorAsString(e));
		}
		
		
	}

}
