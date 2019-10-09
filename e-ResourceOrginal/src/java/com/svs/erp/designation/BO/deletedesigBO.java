// Java Document

package com.svs.erp.designation.BO;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.svs.erp.designation.DAO.*;
public class deletedesigBO extends HttpServlet
{

	String id;
	String event;
	deletedesigDAO phdao=new deletedesigDAO();

public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
{
	id=req.getParameter("id");
	//event=req.getParameter("event");
	phdao.delete(id);
	res.sendRedirect("adddesignation.jsp");
	
}
}