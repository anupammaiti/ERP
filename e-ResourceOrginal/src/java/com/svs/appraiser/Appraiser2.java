package com.svs.appraiser;

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

import com.svs.appraisal.AppraisalFormDao;
import com.svs.util.ConvertStackTracetoString;


public class Appraiser2 extends HttpServlet {
	Collection appraiser2_col=new ArrayList();
	Appraiser2Dao appraiser2=new Appraiser2Dao();
	String aPPraiseeName=null;
	String aPPraiseeId=null;
	final static Logger logger = Logger.getLogger(Appraiser2.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
	
		PrintWriter out=response.getWriter();
		boolean duplicate=false;
		HttpSession session,session1;
		session=request.getSession();
		session1=request.getSession();
		aPPraiseeId=request.getParameter("aPPraiseeId");
		aPPraiseeName=request.getParameter("aPPraiseeName");		
		appraiser2_col.add(request.getParameter("aPPraiseeId"));
		appraiser2_col.add(request.getParameter("aPPraiseeName"));
		appraiser2_col.add(request.getParameter("grouPProject"));
		appraiser2_col.add(request.getParameter("assessmentFrom"));
		appraiser2_col.add(request.getParameter("assessmentTo"));
		appraiser2_col.add(request.getParameter("aPPraiserId"));
		appraiser2_col.add(request.getParameter("aPPraiserName"));
		appraiser2_col.add(request.getParameter("reviewerId"));
		appraiser2_col.add(request.getParameter("reviewerName"));
		appraiser2_col.add(request.getParameter("saatext"));
		appraiser2_col.add(request.getParameter("ossftext"));
		appraiser2_col.add(request.getParameter("appraiseeStrengths"));
		appraiser2_col.add(request.getParameter("currentResponsibilites"));
		appraiser2_col.add(request.getParameter("additionalResponsibilites"));
		appraiser2_col.add(request.getParameter("learningPlan"));
		appraiser2_col.add(request.getParameter("selftext"));
		appraiser2_col.add(request.getParameter("appraiser"));
		appraiser2_col.add(request.getParameter("ipl"));
		
				
		//////System.out.println(request.getParameter("appraiseeName"));
		//////System.out.println(request.getParameter("grouPProject"));
		//////System.out.println(request.getParameter("reviewerName"));
		//////System.out.println(request.getParameter("learningPlan"));
		//////System.out.println(request.getParameter("appraiser"));

		
		
		try{
			duplicate=appraiser2.checking(aPPraiseeId);
			if(duplicate==true)
			{
			session.setAttribute("appraiser_Duplicate","Appraiser Form Already Filled");
			response.sendRedirect("AppraiseeFormList.jsp");
			}
			else
			{
			aPPraiseeName=appraiser2.insertappraiser(appraiser2_col);
			//////System.out.println("Apprisal2.java::-->>"+aPPraiseeName);
			session1.setAttribute("appraiser_Success","Appraiser Form Successfully Submited");
			response.sendRedirect("AppraiseeFormList.jsp");
			}
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));

		}
		
	}
}