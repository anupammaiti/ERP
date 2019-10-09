package com.erp.Reports;



import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
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
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperRunManager;
import net.sf.jasperreports.engine.export.JExcelApiExporterParameter;
import net.sf.jasperreports.engine.export.JRXlsAbstractExporterParameter;
import net.sf.jasperreports.engine.export.JRXlsExporter;
import net.sf.jasperreports.engine.export.JRXlsExporterParameter;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.util.ConvertStackTracetoString;
import com.svs.util.Properties_Util;

public class leaveclosing extends HttpServlet
{
	
	private ServletContext servletContext;
	private Properties_Util util_prop = new Properties_Util();
	Properties prop=new Properties();
	final static Logger logger = Logger.getLogger(Leavecard.class);
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
		//String fromdate=request.getParameter("fromdate");
		//String todate=request.getParameter("todate");
        ////////System.out.println(fromdate);
			Connection con = null;
		try {
			prop=util_prop.getMessageUpload();
			String file_path=prop.getProperty("excel.report");
			ServletOutputStream servletOutputStream = response.getOutputStream();
		
			InputStream reportStream = servletContext.getResourceAsStream("/Reports/leaveclosing.jasper");
		
		
			ConnectionUtils conn=new ConnectionUtils();
			con=conn.getDBConnection();
			///////////////////////////code to get leavebalance  of CL,SL,PL
			
			File reportFile = new File(file_path);
String path = reportFile.getAbsolutePath(); //tried getAbsolutePath()
			/////////////////////////////////////////////////////////////
			HashMap hm = new HashMap();
			
			JasperPrint jasperPrint = JasperManager.fillReport ( path,hm, con);
byte bytes[] = new byte[10];
String result = JasperRunManager.runReportToHtmlFile(file_path , hm, con);

/*Code for Excel Sheet Generation */
JRXlsExporter exporter = new JRXlsExporter();
ByteArrayOutputStream xlsReport = new ByteArrayOutputStream();
exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);

exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, xlsReport);

exporter.setParameter(JRExporterParameter.OUTPUT_FILE, "./reports/");

			exporter.setParameter(JRExporterParameter.OUTPUT_FILE_NAME,"leaveclosing.xls");

exporter.setParameter(JRXlsAbstractExporterParameter.IS_REMOVE_EMPTY_SPACE_BETWEEN_ROWS, Boolean.TRUE);

exporter.setParameter(JRXlsAbstractExporterParameter.MAXIMUM_ROWS_PER_SHEET,200);

exporter.setParameter(JRXlsExporterParameter.IS_ONE_PAGE_PER_SHEET, Boolean.FALSE);


/* Will give the lines in the excel sheet when ever it open*/
exporter.setParameter(JRXlsExporterParameter.IS_WHITE_PAGE_BACKGROUND, Boolean.FALSE);

exporter.setParameter(JRXlsExporterParameter.IGNORE_PAGE_MARGINS, Boolean.TRUE);

exporter.setParameter(JRXlsExporterParameter.IS_AUTO_DETECT_CELL_TYPE, Boolean.TRUE);

exporter.setParameter(JExcelApiExporterParameter.IS_DETECT_CELL_TYPE, Boolean.TRUE);

exporter.exportReport();
/*

*/

////////System.out.println("Sixe of byte array:"+xlsReport.size());
bytes = xlsReport.toByteArray();
/*Format for Printing the output*/
response.setContentType("application/vnd.ms-excel");
////////System.out.println("After JasperPrint = "+result);
response.setContentLength(bytes.length);
xlsReport.close();
OutputStream ouputStream = response.getOutputStream();
ouputStream.write(bytes, 0, bytes.length);
ouputStream.flush();
ouputStream.close();		
con.close();	
		} catch (JRException e1) {
			logger.error(util_stacktrace.sendingErrorAsString(e1));
		} catch (Exception e) {
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		finally {
					try
       				 {
            			con.close();
        				} catch (SQLException e)
        				{
            			//logger.error("The statement cannot be closed.", e);
        					logger.error(util_stacktrace.sendingErrorAsString(e));
        				}
					}
	}
}

