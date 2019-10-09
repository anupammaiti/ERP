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

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.erp.Hr.db.MYException;
import com.svs.erp.company.DAO.CompanyRegistrationDAO;
import com.svs.util.ConvertStackTracetoString;
import com.svs.util.Properties_Util;

/**
 * Servlet implementation class Rep_LoanStatus
 */
public class Rep_LoanStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletContext servletContext;
	private ConnectionUtils connectionUtils=new ConnectionUtils();
	private CompanyRegistrationDAO companyregdao=new CompanyRegistrationDAO();
	private Properties_Util util_prop=new Properties_Util();
	private Properties prop=new Properties();
	final static Logger logger = Logger.getLogger(Rep_LoanStatus.class);
	ConvertStackTracetoString util_stacktrace=new ConvertStackTracetoString();
	
	
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
        
		String empid=request.getParameter("id");
		
		Connection con = null;
		//////System.out.println(empid);
		try {
			
			ServletOutputStream servletOutputStream = response.getOutputStream();
		
			InputStream reportStream = servletContext.getResourceAsStream("/Reports/rep_LoanStatus.jasper");
		String companyname=(String)request.getSession().getAttribute("comp");//Getting Company Name from Session.
		String imageName=companyregdao.viewImageNameByCompanyName(companyname);//Getting Image Name by using Companyname.
		prop=util_prop.getMessageUpload();//Setting properties file to properties Object.
		String imagePath=prop.getProperty("logopath")+imageName;//Merging(Concatinate) the Path and ImageName.
		//////System.out.println("Employee id\t"+empid);
			try {
				con=connectionUtils.getDBConnection();
				HashMap hm = new HashMap();
			//Map reportParameters = new HashMap();
			    hm.put("empid",empid);
				hm.put("imagePath", imagePath);//Sending the Image Path to the Report.
			//hm.put("John Doe", new Double(3434.34)); 
			JasperRunManager.runReportToPdfStream(reportStream , servletOutputStream, hm, con);
			
			response.setContentType("application/pdf");
			servletOutputStream.flush();
			servletOutputStream.close();

		} catch (MYException e) {
			// TODO Auto-generated catch block
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		} catch (JRException e1) {
			logger.error(util_stacktrace.sendingErrorAsString(e1));
		}  catch (SQLException e) {
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		finally {
					try
       				 {
            			con.close();
        				} catch (SQLException e)
        				{

        					logger.error(util_stacktrace.sendingErrorAsString(e));
        				}
					}
	}
	

}
