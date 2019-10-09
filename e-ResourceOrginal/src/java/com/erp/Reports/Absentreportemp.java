package com.erp.Reports;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Properties;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperRunManager;

import com.svs.appraisal.AppraisalForm;
import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.erp.company.DAO.CompanyRegistrationDAO;
import com.svs.util.ConvertStackTracetoString;
import com.svs.util.Properties_Util;


public class Absentreportemp extends HttpServlet
{
	
	private ServletContext servletContext;
	final static Logger logger = Logger.getLogger(Absentreportemp.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	private CompanyRegistrationDAO companyregdao=new CompanyRegistrationDAO();
	private Properties_Util util_prop=new Properties_Util();
	private Properties prop=new Properties();
	/** Initializes the Servlet and gets the Initial parameters */
	public void init(ServletConfig Conf) throws ServletException {
		super.init(Conf);
		
		try {
			servletContext = Conf.getServletContext();
		} catch (Exception ex) {
			logger.error(util_stacktrace.sendingErrorAsString(ex));
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		 String empid=request.getParameter("empid");
        String fromdate=request.getParameter("fromdate");
		String todate=request.getParameter("todate");
		String company=request.getParameter("company");
		Connection con = null;
		
		//////System.out.println(fromdate);
		try {
			String companyname=(String)request.getSession().getAttribute("comp");
			String imageName=companyregdao.viewImageNameByCompanyName(companyname);//Getting Image Name by using Companyname.
			prop=util_prop.getMessageUpload();//Setting properties file to properties Object.
			String imagePath=prop.getProperty("logopath")+imageName;//Merging(Concatinate) the Path and ImageName.
			
			ServletOutputStream servletOutputStream = response.getOutputStream();
		
			InputStream reportStream = servletContext.getResourceAsStream("/Reports/absentreportemp.jasper");
		
			
			ConnectionUtils conn=new ConnectionUtils();
			con=conn.getDBConnection();
			HashMap hm = new HashMap();
			//Map reportParameters = new HashMap();
			 hm.put("empid",empid);
			    hm.put("fromdate",fromdate);
				hm.put("todate",todate);
				hm.put("company", company);
				hm.put("imagePath", imagePath);
			//hm.put("John Doe", new Double(3434.34)); 
			JasperRunManager.runReportToPdfStream(reportStream , servletOutputStream, hm, con);
			
			response.setContentType("application/pdf");
			servletOutputStream.flush();
			servletOutputStream.close();

			
		} catch (JRException e1) {
			logger.error(util_stacktrace.sendingErrorAsString(e1));
		}  catch (Exception e) {
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		finally {
					try
       				 {
            			con.close();
        				} catch (SQLException e)
        				{
            			//logger.error("The statement cannot be closed.", e);
						//////System.out.println("Exception"+e);
        				}
					}
	}
}

// JavaScript Document