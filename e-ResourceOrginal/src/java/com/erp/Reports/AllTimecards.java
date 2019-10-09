package com.erp.Reports;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperRunManager;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.erp.company.DAO.CompanyRegistrationDAO;
import com.svs.util.ConvertStackTracetoString;
import com.svs.util.Properties_Util;

public class AllTimecards extends HttpServlet
{
	
	private ServletContext servletContext;
	private ConnectionUtils conn=new ConnectionUtils();
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
	 HttpSession session = request.getSession(true);
        String fromdate=request.getParameter("fromdate");
		        String todate=request.getParameter("todate");
				Connection con = null;
				PreparedStatement ps1=null;
				PreparedStatement ps=null;
				PreparedStatement pr=null;
				PreparedStatement pr1=null;
//String empname=	session.getAttribute("empname").toString();
//String empno=session.getAttribute("empno").toString();
//String empno=request.getParameter("empno");
		//String fromdate=session.getAttribute("fromdate").toString();
		//String todate=session.getAttribute("todate").toString();
		//String time=null;
		double totalwhrs;
		//double totaltime;
		//double totaltimeOD;
		//double total=0;
		//double  excess1;
		//String excess;
		//double totalodtime;
		////////System.out.println("injava"+fromdate);
		////////System.out.println(todate);
		
		
		try {
			String companyname=(String)request.getSession().getAttribute("comp");
			String imageName=companyregdao.viewImageNameByCompanyName(companyname);//Getting Image Name by using Companyname.
			prop=util_prop.getMessageUpload();//Setting properties file to properties Object.
			String imagePath=prop.getProperty("logopath")+imageName;//Merging(Concatinate) the Path and ImageName.
		
			con=conn.getDBConnection();
		String table=null;
		boolean flag=false;
			ps=con.prepareStatement("show tables");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
			table=rs.getString(1).trim();
			//////System.out.println("Table name is........."+table);
			if(table.equals("timecard1"))
		flag=true;
			}
			
			if(flag)
			{
			ps1=con.prepareStatement("drop view timecard1");
			ps1.executeUpdate();
			////////System.out.println("timecard deleted...........");
			
			pr=con.prepareStatement("create view timecard1 as select empid,empname,date,first,last,tothrs,leavetype from empinout1 where date between '"+fromdate+"'  and '"+todate+"' UNION select empid,empname,date,first,last,tothrs,authentication from empabsent where date between '"+fromdate+"'  and '"+todate+"' ");  
			pr.executeUpdate();
			}
			else
			{
			pr1=con.prepareStatement("create view timecard1 as select empid,empname,date,first,last,tothrs,leavetype from empinout1 where date between '"+fromdate+"'  and '"+todate+"' UNION select empid,empname,date,first,last,tothrs,authentication from empabsent where date between '"+fromdate+"'  and '"+todate+"' ");  
			//////System.out.println("ELSE OF ALL TIMECARD");
			pr1.executeUpdate();
			}
		//====================================================
			ServletOutputStream servletOutputStream = response.getOutputStream();
		
			InputStream reportStream = servletContext.getResourceAsStream("/Reports/alltimecards.jasper");
		
			String comp=(String)request.getSession().getAttribute("comp");
			HashMap hm = new HashMap();
			//Map reportParameters = new HashMap();
			// hm.put("empid",empno);
			    hm.put("fromdate",fromdate);
				hm.put("todate",todate);
				hm.put("comp",comp);
				hm.put("imagePath",imagePath);
				//hm.put("totalwhrs",totalwhrs);
				//hm.put("totaltime",totaltime);
				//hm.put("total",total);
				//hm.put("excess",excess);
				//hm.put("totalodtime",totalodtime);
				//hm.put("excess",excess);
								//hm.put("time",time);
			//hm.put("John Doe", new Double(3434.34)); 
			JasperRunManager.runReportToPdfStream(reportStream , servletOutputStream, hm, con);
			
			response.setContentType("application/pdf");
			servletOutputStream.flush();
			servletOutputStream.close();

			
		} catch (JRException e1) {
			logger.error(util_stacktrace.sendingErrorAsString(e1));
		}  catch (SQLException e) {
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}catch (Exception ex){
			logger.error(util_stacktrace.sendingErrorAsString(ex));
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

// JavaScript Document