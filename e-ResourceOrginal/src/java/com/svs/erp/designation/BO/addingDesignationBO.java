// Java Document

package com.svs.erp.designation.BO;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.svs.erp.designation.DAO.*;
public class addingDesignationBO extends HttpServlet
{

	String companyname ;
	addingDesignationDAO acdao=new addingDesignationDAO();

public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{
	companyname=req.getParameter("name");
	String comp=(String)req.getSession().getAttribute("comp");
	
	acdao.insert(companyname,comp);
	res.sendRedirect("adddesignation.jsp");
	
}
}