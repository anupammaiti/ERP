package com.svs.appraiser;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.apache.log4j.Logger;

import com.svs.util.ConvertStackTracetoString;

public class AppraiserForm extends HttpServlet {
	Collection appraiser_col=new ArrayList();
	AppraiserFormDao appraiserform=new AppraiserFormDao();
	String hide_appraiseeid=null;
	String aPPraiseeName=null;
	String aPPraiseeId=null;
	final static Logger logger = Logger.getLogger(AppraiserForm.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		PrintWriter out=response.getWriter();
		boolean duplicate=false;
			HttpSession session,session1;
			session=request.getSession();
			session1=request.getSession();
			//session1.setAttribute("aPPraiseeId",aPPraiseeId);
			
			////////System.out.println("APPRAISEE ID IS ----->> APPRAAISERFORM.JAVA:::--->>"+aPPraiseeId);
		
		hide_appraiseeid=request.getParameter("hide_appraiseeid");	
		//////System.out.println("APPRAISERFORM:::hide_appraiseeid is a---->>>"+hide_appraiseeid);	
		aPPraiseeId=request.getParameter("aPPraiseeId");
		appraiser_col.add(request.getParameter("aPPraiseeId"));
		appraiser_col.add(request.getParameter("aPPraiseeName"));
		appraiser_col.add(request.getParameter("grouPProject"));
		appraiser_col.add(request.getParameter("assessmentFrom"));
		appraiser_col.add(request.getParameter("assessmentTo"));
		appraiser_col.add(request.getParameter("aPPraiserId"));
		appraiser_col.add(request.getParameter("aPPraiserName"));
		appraiser_col.add(request.getParameter("reviewerId"));
		appraiser_col.add(request.getParameter("reviewerName"));
		appraiser_col.add(request.getParameter("AP1"));
		appraiser_col.add(request.getParameter("AP2"));
		appraiser_col.add(request.getParameter("AP3"));
		appraiser_col.add(request.getParameter("AP4"));
		appraiser_col.add(request.getParameter("AP5"));
		appraiser_col.add(request.getParameter("AP6"));
		appraiser_col.add(request.getParameter("AP7"));
		appraiser_col.add(request.getParameter("AP8"));
		appraiser_col.add(request.getParameter("AP9"));
		appraiser_col.add(request.getParameter("AP10"));
		appraiser_col.add(request.getParameter("AP11"));
		appraiser_col.add(request.getParameter("APD1"));
		appraiser_col.add(request.getParameter("AP12"));
		appraiser_col.add(request.getParameter("AQ1"));
		appraiser_col.add(request.getParameter("AQ2"));
		appraiser_col.add(request.getParameter("AQ3"));
		appraiser_col.add(request.getParameter("AQ4"));
		appraiser_col.add(request.getParameter("AQ5"));
		appraiser_col.add(request.getParameter("AQ6"));
		appraiser_col.add(request.getParameter("AQ7"));
		appraiser_col.add(request.getParameter("AQ8"));
		appraiser_col.add(request.getParameter("AQD1"));
		appraiser_col.add(request.getParameter("AQ9"));
		appraiser_col.add(request.getParameter("AJK1"));
		appraiser_col.add(request.getParameter("AJK2"));
		appraiser_col.add(request.getParameter("AJK3"));
		appraiser_col.add(request.getParameter("AJK4"));
		appraiser_col.add(request.getParameter("AJK5"));
		appraiser_col.add(request.getParameter("AJK6"));
		appraiser_col.add(request.getParameter("AJKD1"));
		appraiser_col.add(request.getParameter("AJK7"));
		appraiser_col.add(request.getParameter("AJResp1"));
		appraiser_col.add(request.getParameter("AJResp2"));
		appraiser_col.add(request.getParameter("AJResp3"));
		appraiser_col.add(request.getParameter("AJResp4"));
		appraiser_col.add(request.getParameter("AJResp5"));
		appraiser_col.add(request.getParameter("AJResp6"));
		appraiser_col.add(request.getParameter("AJResp7"));
		appraiser_col.add(request.getParameter("AJResp8"));
		appraiser_col.add(request.getParameter("AJResp9"));
		appraiser_col.add(request.getParameter("AJRespD1"));
		appraiser_col.add(request.getParameter("AJResp10"));
		appraiser_col.add(request.getParameter("APM1"));
		appraiser_col.add(request.getParameter("APM2"));
		appraiser_col.add(request.getParameter("APM3"));
		appraiser_col.add(request.getParameter("APM4"));
		appraiser_col.add(request.getParameter("APM5"));
		appraiser_col.add(request.getParameter("APM6"));
		appraiser_col.add(request.getParameter("APMD1"));
		appraiser_col.add(request.getParameter("APM7"));
		appraiser_col.add(request.getParameter("ACA1"));
		appraiser_col.add(request.getParameter("ACA2"));
		appraiser_col.add(request.getParameter("ACA3"));
		appraiser_col.add(request.getParameter("ACA4"));
		appraiser_col.add(request.getParameter("ACAD1"));
		appraiser_col.add(request.getParameter("ACA5"));
		appraiser_col.add(request.getParameter("APII1"));
		appraiser_col.add(request.getParameter("APII2"));
		appraiser_col.add(request.getParameter("APII3"));
		appraiser_col.add(request.getParameter("APII4"));
		appraiser_col.add(request.getParameter("APII5"));
		appraiser_col.add(request.getParameter("APII6"));
		appraiser_col.add(request.getParameter("APII7"));
		appraiser_col.add(request.getParameter("APII8"));
		appraiser_col.add(request.getParameter("APIID1"));
		appraiser_col.add(request.getParameter("APII9"));
		appraiser_col.add(request.getParameter("ADocu1"));
		appraiser_col.add(request.getParameter("ADocuD1"));
		appraiser_col.add(request.getParameter("ADocu2"));
		appraiser_col.add(request.getParameter("ACI1"));
		appraiser_col.add(request.getParameter("ACI2"));
		appraiser_col.add(request.getParameter("ACI3"));
		appraiser_col.add(request.getParameter("ACID1"));
		appraiser_col.add(request.getParameter("ACI4"));
		appraiser_col.add(request.getParameter("AHR1"));
		appraiser_col.add(request.getParameter("AHR2"));
		appraiser_col.add(request.getParameter("AHR3"));
		appraiser_col.add(request.getParameter("AHR4"));
		appraiser_col.add(request.getParameter("AHR5"));
		appraiser_col.add(request.getParameter("AHR6"));
		appraiser_col.add(request.getParameter("AHR7"));
		appraiser_col.add(request.getParameter("AHR8"));
		appraiser_col.add(request.getParameter("AHRD1"));
		appraiser_col.add(request.getParameter("AHR9"));
		appraiser_col.add(request.getParameter("AOR1"));
		appraiser_col.add(request.getParameter("AOR2"));
		appraiser_col.add(request.getParameter("AOR3"));
		appraiser_col.add(request.getParameter("AOR4"));
		appraiser_col.add(request.getParameter("AOR5"));
		appraiser_col.add(request.getParameter("AOR6"));
		appraiser_col.add(request.getParameter("AOR7"));
		appraiser_col.add(request.getParameter("AOR8"));
		appraiser_col.add(request.getParameter("AOR9"));
		appraiser_col.add(request.getParameter("AOR10"));
		appraiser_col.add(request.getParameter("AOR11"));
		appraiser_col.add(request.getParameter("AORD1"));
		appraiser_col.add(request.getParameter("AOR12"));
		appraiser_col.add(request.getParameter("AAverage"));
		appraiser_col.add(request.getParameter("ATotalScore"));
		appraiser_col.add(request.getParameter("AOverallRating"));
		appraiser_col.add(request.getParameter("AOverallGrade"));
		
		/*//////System.out.println(request.getParameter("appraiseeName"));
		//////System.out.println(request.getParameter("grouPProject"));
		//////System.out.println(request.getParameter("reviewerName"));
		//////System.out.println(request.getParameter("APD1"));
		//////System.out.println(request.getParameter("AAverage"));*/

		
		try{
			duplicate=appraiserform.checking_appraiser(aPPraiseeId);
			if(duplicate==true)
			{
			session.setAttribute("appraiser_Duplicate","Appraiser Form Already Filled");
			response.sendRedirect("AppraiserForm.jsp?hide_appraiseeid="+hide_appraiseeid);
			}
			else
			{
			aPPraiseeName=appraiserform.insertappraiserform(appraiser_col);
			
			session1.setAttribute("appraiser_Success","Appraiser Form Submited Successfully ");
			response.sendRedirect("AppraiserForm.jsp?hide_appraiseeid="+hide_appraiseeid);
			}
		}catch(Exception e){
				logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		
	}
}