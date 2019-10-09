package com.erp.Reports;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.*;

import org.apache.log4j.Logger;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperRunManager;

import com.svs.erp.Hr.DAO.*;
import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.erp.company.DAO.CompanyRegistrationDAO;
import com.svs.util.ConvertStackTracetoString;
import com.svs.util.Properties_Util;

public class timecard extends HttpServlet
{
	
	private ServletContext servletContext;
	private  ConnectionUtils conn=new ConnectionUtils();
	final static Logger logger = Logger.getLogger(timecard.class);
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
        
String empname=	session.getAttribute("empname").toString();
//String empno=session.getAttribute("empno").toString();
String empno=request.getParameter("empno");
		String fromdate=session.getAttribute("fromdate").toString();
		String todate=session.getAttribute("todate").toString();
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
		
			Connection con = null;
		try {
	
			
			con=conn.getDBConnection();
		//total working hours
			totalworkinghrs twh=new  totalworkinghrs();
		totalwhrs=twh.getvalue(empno,fromdate,todate);
			//total woking hours in the month
			//totalworkinghrsmonth twhm=new totalworkinghrsmonth();
			//totaltime=twhm.getvalue1(empno,fromdate,todate);
			//total working hours including OD/PER
			//totalworkinghrsOD whod=new totalworkinghrsOD();
			//totaltimeOD=whod.getvalue2(empno,fromdate,todate);
		////////System.out.println(Double.parseDouble(totaltime));
		//total OD Time
		//ODTime odt=new ODTime();
			//totalodtime=odt.getvalue3(empno,fromdate,todate);
			/////////////////////////////create view  for report//////////////////////////////////
			boolean flag=false;
			String table=null;
			PreparedStatement ps=con.prepareStatement("show tables");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
			table=rs.getString(1).trim();
			//////System.out.println(" name.........."+table);
			if(table.equals("timecard"))
		flag=true;
			}
			
			if(flag)
			{
			PreparedStatement ps1=con.prepareStatement("drop view timecard");
			ps1.executeUpdate();
			//////System.out.println("timecard deleted...........");
			
			PreparedStatement pr=con.prepareStatement("create view timecard as select empid,empname,date,first,last,tothrs,leavetype from empinout1 where empid='"+empno+"' and date between '"+fromdate+"' and '"+todate+"' UNION select empid,empname,date,first,last,tothrs,authentication from empabsent where empid='"+empno+"' and date between '"+fromdate+"' and '"+todate+"'");  
			pr.executeUpdate();
			}
			else
			{
			PreparedStatement pr1=con.prepareStatement("create view timecard as select empid,empname,date,first,last,tothrs,leavetype from empinout1 where empid='"+empno+"' and date between '"+fromdate+"' and '"+todate+"' UNION select empid,empname,date,first,last,tothrs,authentication from empabsent where empid='"+empno+"' and date between '"+fromdate+"' and '"+todate+"'");  
			//////System.out.println("ELSE OF TIMECARD");
			pr1.executeUpdate();
			}
			
			
		/*	//===============================================
			totalodtime=totalodtime/3600;
	total=totalwhrs+totalodtime;
	//////System.out.println("TOTALWHRS"+totalwhrs);
		//////System.out.println("TOTALODTIME"+totalodtime);
	//////System.out.println("TOTAL  OD+TOTWHRS"+total);
	
	excess1=total-totaltime;
	////////System.out.println("EXCESS"+excess1);
	////////System.out.println("Excess"+excess1);
		int excess_ts = (int)excess1*3600;
			////////System.out.println("Excess"+excess_ts);
	int excess_h = (int)(excess_ts/3600);
	////////System.out.println("Excess"+excess_h);
	int excess_m = (int)((excess_ts%3600)/60);
	////////System.out.println("Excess"+excess_m);
	int excess_s = (int)(excess_ts%60.0);
	////////System.out.println("Excess"+excess_s);
	excess=excess_h+":"+excess_m+":"+excess_s;
	//excess=totaltimeOD;
	//////System.out.println("excess"+excess);*/
		//====================================================
			ServletOutputStream servletOutputStream = response.getOutputStream();
		
			InputStream reportStream = servletContext.getResourceAsStream("/Reports/timecard.jasper");
			String company=(String)request.getSession().getAttribute("comp");
			
			HashMap hm = new HashMap();
			//Map reportParameters = new HashMap();
			 hm.put("empid",empno);
			    hm.put("fromdate",fromdate);
				hm.put("todate",todate);
				hm.put("totalwhrs",totalwhrs);
				hm.put("comp", company);
				String companyname=(String)request.getSession().getAttribute("comp");
				String imageName=companyregdao.viewImageNameByCompanyName(companyname);//Getting Image Name by using Companyname.
				prop=util_prop.getMessageUpload();//Setting properties file to properties Object.
				String imagePath=prop.getProperty("logopath")+imageName;//Merging(Concatinate) the Path and ImageName.
				hm.put("imagePath", imagePath);
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
		} catch (ClassNotFoundException e) {
			logger.error(util_stacktrace.sendingErrorAsString(e));
		} catch (SQLException e) {
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}catch (Exception ex){
			logger.error(util_stacktrace.sendingErrorAsString(ex));
		}
		finally {
					try
       				 {
					 //pr1.close();
					 //pr.close();
					 //ps1.close();
					 //ps.close();
            			con.close();
        				} catch (SQLException e)
        				{
            			//logger.error("The statement cannot be closed.", e);
        					logger.error(util_stacktrace.sendingErrorAsString(e));
        				}
					}
		
	}
}

// JavaScript Document