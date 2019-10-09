package com.svs.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.svs.hrerp.login.loginDAO;

/**
 * Servlet implementation class UserNameChecking
 */
public class UserNameChecking extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private loginDAO logindao=new loginDAO();
    private boolean insertorupdate=false;
    
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserNameChecking() {
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
		PrintWriter out=response.getWriter();
		
		insertorupdate=logindao.usernameAvailable(request.getParameter("username"));
		if(insertorupdate){
			out.println("Choose other UserName");
		}else{
			out.println("OK");
		}
		
		response.setContentType("plain/text");
	}catch(Exception e){
		e.printStackTrace();
	}
		
		
		
		
		
		
	}

}
