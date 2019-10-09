package com.svs.appraisal;

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

import com.svs.util.ConvertStackTracetoString;

public class AppraisalForm extends HttpServlet {
	Collection appraisal_col=new ArrayList();
	AppraisalFormDao appraisalform=new AppraisalFormDao();
	String aPPraiseeName=null;
	String aPPraiseeId=null;
	final static Logger logger = Logger.getLogger(AppraisalForm.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		PrintWriter out=response.getWriter();
		boolean duplicate=false;
		aPPraiseeName=request.getParameter("aPPraiseeName");	
			HttpSession session,session1;
		session=request.getSession();
		session1=request.getSession();
		aPPraiseeId=request.getParameter("aPPraiseeId");
		appraisal_col.add(request.getParameter("aPPraiseeId"));
		appraisal_col.add(request.getParameter("aPPraiseeName"));
		appraisal_col.add(request.getParameter("grouPProject"));
		appraisal_col.add(request.getParameter("assessmentFrom"));
		appraisal_col.add(request.getParameter("assessmentTo"));
		appraisal_col.add(request.getParameter("aPPraiserId"));
		appraisal_col.add(request.getParameter("aPPraiserName"));
		appraisal_col.add(request.getParameter("reviewerId"));
		appraisal_col.add(request.getParameter("reviewerName"));
		appraisal_col.add(request.getParameter("P1"));
		appraisal_col.add(request.getParameter("P2"));
		appraisal_col.add(request.getParameter("P3"));
		appraisal_col.add(request.getParameter("P4"));
		appraisal_col.add(request.getParameter("P5"));
		appraisal_col.add(request.getParameter("P6"));
		appraisal_col.add(request.getParameter("P7"));
		appraisal_col.add(request.getParameter("P8"));
		appraisal_col.add(request.getParameter("P9"));
		appraisal_col.add(request.getParameter("P10"));
		appraisal_col.add(request.getParameter("P11"));
		appraisal_col.add(request.getParameter("PD1"));
		appraisal_col.add(request.getParameter("P12"));
		appraisal_col.add(request.getParameter("Q1"));
		appraisal_col.add(request.getParameter("Q2"));
		appraisal_col.add(request.getParameter("Q3"));
		appraisal_col.add(request.getParameter("Q4"));
		appraisal_col.add(request.getParameter("Q5"));
		appraisal_col.add(request.getParameter("Q6"));
		appraisal_col.add(request.getParameter("Q7"));
		appraisal_col.add(request.getParameter("Q8"));
		appraisal_col.add(request.getParameter("QD1"));
		appraisal_col.add(request.getParameter("Q9"));
		appraisal_col.add(request.getParameter("JK1"));
		appraisal_col.add(request.getParameter("JK2"));
		appraisal_col.add(request.getParameter("JK3"));
		appraisal_col.add(request.getParameter("JK4"));
		appraisal_col.add(request.getParameter("JK5"));
		appraisal_col.add(request.getParameter("JK6"));
		appraisal_col.add(request.getParameter("JKD1"));
		appraisal_col.add(request.getParameter("JK7"));
		appraisal_col.add(request.getParameter("JResp1"));
		appraisal_col.add(request.getParameter("JResp2"));
		appraisal_col.add(request.getParameter("JResp3"));
		appraisal_col.add(request.getParameter("JResp4"));
		appraisal_col.add(request.getParameter("JResp5"));
		appraisal_col.add(request.getParameter("JResp6"));
		appraisal_col.add(request.getParameter("JResp7"));
		appraisal_col.add(request.getParameter("JResp8"));
		appraisal_col.add(request.getParameter("JResp9"));
		appraisal_col.add(request.getParameter("JRespD1"));
		appraisal_col.add(request.getParameter("JResp10"));
		appraisal_col.add(request.getParameter("PM1"));
		appraisal_col.add(request.getParameter("PM2"));
		appraisal_col.add(request.getParameter("PM3"));
		appraisal_col.add(request.getParameter("PM4"));
		appraisal_col.add(request.getParameter("PM5"));
		appraisal_col.add(request.getParameter("PM6"));
		appraisal_col.add(request.getParameter("PMD1"));
		appraisal_col.add(request.getParameter("PM7"));
		appraisal_col.add(request.getParameter("CA1"));
		appraisal_col.add(request.getParameter("CA2"));
		appraisal_col.add(request.getParameter("CA3"));
		appraisal_col.add(request.getParameter("CA4"));
		appraisal_col.add(request.getParameter("CAD1"));
		appraisal_col.add(request.getParameter("CA5"));
		appraisal_col.add(request.getParameter("PII1"));
		appraisal_col.add(request.getParameter("PII2"));
		appraisal_col.add(request.getParameter("PII3"));
		appraisal_col.add(request.getParameter("PII4"));
		appraisal_col.add(request.getParameter("PII5"));
		appraisal_col.add(request.getParameter("PII6"));
		appraisal_col.add(request.getParameter("PII7"));
		appraisal_col.add(request.getParameter("PII8"));
		appraisal_col.add(request.getParameter("PIID1"));
		appraisal_col.add(request.getParameter("PII9"));
		appraisal_col.add(request.getParameter("Docu1"));
		appraisal_col.add(request.getParameter("DocuD1"));
		appraisal_col.add(request.getParameter("Docu2"));
		appraisal_col.add(request.getParameter("CI1"));
		appraisal_col.add(request.getParameter("CI2"));
		appraisal_col.add(request.getParameter("CI3"));
		appraisal_col.add(request.getParameter("CID1"));
		appraisal_col.add(request.getParameter("CI4"));
		appraisal_col.add(request.getParameter("HR1"));
		appraisal_col.add(request.getParameter("HR2"));
		appraisal_col.add(request.getParameter("HR3"));
		appraisal_col.add(request.getParameter("HR4"));
		appraisal_col.add(request.getParameter("HR5"));
		appraisal_col.add(request.getParameter("HR6"));
		appraisal_col.add(request.getParameter("HR7"));
		appraisal_col.add(request.getParameter("HR8"));
		appraisal_col.add(request.getParameter("HRD1"));
		appraisal_col.add(request.getParameter("HR9"));
		appraisal_col.add(request.getParameter("OR1"));
		appraisal_col.add(request.getParameter("OR2"));
		appraisal_col.add(request.getParameter("OR3"));
		appraisal_col.add(request.getParameter("OR4"));
		appraisal_col.add(request.getParameter("OR5"));
		appraisal_col.add(request.getParameter("OR6"));
		appraisal_col.add(request.getParameter("OR7"));
		appraisal_col.add(request.getParameter("OR8"));
		appraisal_col.add(request.getParameter("OR9"));
		appraisal_col.add(request.getParameter("OR10"));
		appraisal_col.add(request.getParameter("OR11"));
		appraisal_col.add(request.getParameter("ORD1"));
		appraisal_col.add(request.getParameter("OR12"));
		appraisal_col.add(request.getParameter("Average"));
		appraisal_col.add(request.getParameter("TotalScore"));
		appraisal_col.add(request.getParameter("OverallRating"));
		appraisal_col.add(request.getParameter("OverallGrade"));
		
		//////System.out.println(request.getParameter("appraiseeName"));
		//////System.out.println(request.getParameter("grouPProject"));
		//////System.out.println(request.getParameter("reviewerName"));
		//////System.out.println(request.getParameter("PD1"));
		//////System.out.println(request.getParameter("Average"));
		
		
		
		try{
			duplicate=appraisalform.checking(aPPraiseeId);
			if(duplicate==true)
			{
			session.setAttribute("appraisee_Duplicate","Appraisee Form Already Submited");
			response.sendRedirect("AppraiseeForm.jsp");
			}
			else
			{
			aPPraiseeName=appraisalform.insertappraisalform(appraisal_col);
			//////System.out.println("ApprisalForm.java::-->>"+aPPraiseeName);
			session1.setAttribute("appraisee_Success","Appraisee Form Successfully Submited");
			response.sendRedirect("AppraiseeForm.jsp");
			}
		}catch(Exception e){
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		
	}
}