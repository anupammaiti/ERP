// Java Document

package com.svs.erp.company.BO;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.svs.erp.company.DAO.*;
public class addingCompanyBO extends HttpServlet
{

	String companyname ;
	addingCompanyDAO acdao=new addingCompanyDAO();

public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{
	companyname=req.getParameter("name");
	acdao.insert(companyname);
	res.sendRedirect("addcompany.jsp");
	
}
}