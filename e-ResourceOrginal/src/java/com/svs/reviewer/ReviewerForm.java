package com.svs.reviewer;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.svs.hrerp.login.LoginCheckUp;
import com.svs.util.ConvertStackTracetoString;

public class ReviewerForm extends HttpServlet {
	Collection reviewer_col=new ArrayList();
	ReviewerFormDao reviewer=new ReviewerFormDao();
	String aPPraiseeName=null;
	String aPPraiseeId=null;
	 static Logger log = Logger.getLogger(ReviewerForm.class.getName());
		ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();   
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		PrintWriter out=response.getWriter();
		boolean duplicate=false;
		HttpSession session,session1;
		session=request.getSession();
		session1=request.getSession();
		
		aPPraiseeId=request.getParameter("aPPraiseeId");
		aPPraiseeName=request.getParameter("aPPraiseeName");		
		reviewer_col.add(request.getParameter("aPPraiseeId"));
		reviewer_col.add(request.getParameter("aPPraiseeName"));
		reviewer_col.add(request.getParameter("grouPProject"));
		reviewer_col.add(request.getParameter("assessmentFrom"));
		reviewer_col.add(request.getParameter("assessmentTo"));
		reviewer_col.add(request.getParameter("aPPraiserId"));
		reviewer_col.add(request.getParameter("aPPraiserName"));
		reviewer_col.add(request.getParameter("reviewerId"));
		reviewer_col.add(request.getParameter("reviewerName"));
		reviewer_col.add(request.getParameter("discussions_apse"));
		reviewer_col.add(request.getParameter("apse_attitude"));
		reviewer_col.add(request.getParameter("apse_presentresp"));
		reviewer_col.add(request.getParameter("apse_highresp"));
		reviewer_col.add(request.getParameter("comments_remarks"));
		
				
		//////System.out.println(request.getParameter("appraiseeName"));
		//////System.out.println(request.getParameter("grouPProject"));
		//////System.out.println(request.getParameter("reviewerName"));
		//////System.out.println(request.getParameter("apse_highresp"));
		//////System.out.println(request.getParameter("comments_remarks"));

		
		try{
			duplicate=reviewer.checking(aPPraiseeId);
			if(duplicate==true)
			{
			session.setAttribute("reviewer_Duplicate","Reviewer Form Already Submited");
			response.sendRedirect("ReviewerForm.jsp");
			}
			else
			{
			aPPraiseeName=reviewer.insertreviewer(reviewer_col);
			//////System.out.println("ReviewerForm.java::-->>"+aPPraiseeName);
			session1.setAttribute("reviewer_Success","Reviewer Form Successfully Submited");
			response.sendRedirect("ReviewerForm.jsp");
			}
		}catch(Exception e){
			log.error(util_stacktrace.sendingErrorAsString(e));
		}
		
	}
}