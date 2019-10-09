package com.erp.Reports;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
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

import com.svs.erp.Hr.DAO.Actualpercentage;
import com.svs.erp.Hr.DAO.MonthExtract;
import com.svs.erp.Hr.DAO.ODTime;
import com.svs.erp.Hr.DAO.Revisedpercentage;
import com.svs.erp.Hr.DAO.noofworkdays;
import com.svs.erp.Hr.DAO.totalworkinghrs;
import com.svs.erp.Hr.DAO.totalworkinghrsmonth;
import com.svs.erp.Hr.DAO.totalworkinghrsmonth1;
import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.erp.company.DAO.CompanyRegistrationDAO;
//import java.sql.DriverManager;
import com.svs.util.ConvertStackTracetoString;
import com.svs.util.Properties_Util;

public class totalattendancesummary extends HttpServlet
{
	
	private ServletContext servletContext;
	final static Logger logger = Logger.getLogger(totalattendancesummary.class);
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
	 Connection con = null;
	 	try {
        
			ConnectionUtils conn=new ConnectionUtils();
			con=conn.getDBConnection();
String empname=	session.getAttribute("empname").toString();
//String empno=session.getAttribute("empno").toString();
String empno=request.getParameter("empno");
		String fromdate=session.getAttribute("fromdate").toString();
		String todate=session.getAttribute("todate").toString();
		//String time=null;
		double totalwhrs;
		double totaltime;
		double totaltime1;
		double totaltimeOD;
		double total1=0.0;
		double total=0.0;
		double  excess1;
		String excess=null;;
		double totalodtime;
		////////System.out.println("injava"+fromdate);
		////////System.out.println(todate);
		double actualpercent;
		double revisedpercent;
		
	
		//total working hours of the employee in the month based on in and out time
			totalworkinghrs twh=new  totalworkinghrs();
		totalwhrs=twh.getvalue(empno,fromdate,todate);
			//actual total woking hours for the employee based on present days in the month
			totalworkinghrsmonth twhm=new totalworkinghrsmonth();
			totaltime=twhm.getvalue1(empno,fromdate,todate);
			//total working hours including OD/PER of employee
			//totalworkinghrsOD whod=new totalworkinghrsOD();
			//totaltimeOD=whod.getvalue2(empno,fromdate,todate);
		
		//total OD Time
			ODTime odt=new ODTime();
			totalodtime=odt.getvalue3(empno,fromdate,todate);
			
			//extraction of month name to display in reports
			MonthExtract mex=new MonthExtract();
			String month=mex.getvalue(empno,fromdate,todate);
			//===============================================
			total1=totalwhrs+totalodtime;///////////////////////////////////////////adding total working hrs of employee+OD time
			DecimalFormat df = new DecimalFormat("##.## ");
			
			String d1=df.format(total1);
			total1=Double.parseDouble(d1);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////// calculation of od and totalworkinghrs of empl
			int hh=(int)total1;
			double mm=((double)( total1-hh))*100;
			int mmm=(int)(Math.ceil(mm));
			if(mmm>=60)
			{
			while(mmm>=60)
			{
			hh=hh+1;
			mmm=mmm-60;
			String leng11=Integer.toString(mmm);
				double mmm1;
				int length11=leng11.length();
				if(length11<2)
					{
					double mmmm=(double)mmm;
					
					mmm1=mmmm/100;
					////////System.out.println("MMM in if length<2.........."+mmm1);
					double totalod11=hh+mmm1;
					total=totalod11;
					////////System.out.println("total.............. if leng<2.........."+total);
					}
					else
					{
					String totalod1=hh+"."+mmm;
					total=Double.parseDouble(totalod1);
					////////System.out.println(" if-else total..................."+total);
					}
					////////////////////////////////////////////////////////////////////work is here
			}
			
			}
			else
			{
			////////System.out.println("else TIME IS"+totalodtime);
			total=total1;
			////////System.out.println("else total.........."+total);
			}
					
	///////////////////////////////////////////////////////////////////calculation of Excess/Shortfall time/////////////////////////////////////////////
		
			//////System.out.println("Actual total working hrs for the employee attended days/............... "+totaltime);
			//////System.out.println("Total working hrs including OD+time of work done by emp......... "+total);
			///*********conversion totaltime in HH and MM******************//
				
			int tot1=(int)totaltime;
			//////System.out.println("TOT1    :"+tot1);/////////////////hours
			double tot2=((double)( totaltime-tot1))*100;
			//////System.out.println("TOT2    :"+tot2);///////////////////mins
			
					if(tot2>=60)
						{
						tot1=tot1+1;
						////////System.out.println(" Mins>60 then..... hours....."+hours);
						tot2=tot2-60;
						////////System.out.println(" Mins>60 then..... minutes....."+minutes);
						}
			int tot3=(int)(Math.ceil(tot2));
			//////System.out.println("TOT3    :"+tot3);
			
			///*********COMPLETED conversion totaltime in HH and MM******************//
			///*********conversion total in HH and MM******************//
		
			int tot4=(int)total;
			//////System.out.println("TOT4    :"+tot4);
			double tot5=((double)( total-tot4))*100;
			//////System.out.println("TOT5    :"+tot5);
			if(tot5>=60)
						{
						tot4=tot4+1;
						////////System.out.println(" Mins>60 then..... hours....."+hours);
						tot5=tot5-60;
						////////System.out.println(" Mins>60 then..... minutes....."+minutes);
						}
			int tot6=(int)(Math.ceil(tot5));
			//////System.out.println("TOT6    :"+tot6);
			
				///*********COMPLETED conversion total in HH and MM******************//
			//////////////////////////////convert in data base///////////////////////////////////////////
				String temphrs1=tot1+":"+tot3;
				String temphrs2=tot4+":"+tot6;
				String res1=null;
				String res2=null;
				String res3=null;
				//////System.out.println("TEMP HRS............"+temphrs1+"..............."+temphrs2);
				PreparedStatement ps1=con.prepareStatement("select time_to_sec('"+temphrs1+"') from dual");
				ResultSet rs1=ps1.executeQuery();
				while(rs1.next())
				{
				res1=rs1.getString(1);
				//////System.out.println("TIME FROM .(TASummary ).FOR TEMP HRS1........."+res1);
				}
				
				PreparedStatement ps2=con.prepareStatement("select time_to_sec('"+temphrs2+"') from dual");
				ResultSet rs2=ps2.executeQuery();
				while(rs2.next())
				{
				res2=rs2.getString(1);
				//////System.out.println("TIME FROM ..(TASummary )..FOR TEMP HRS2......."+res2);
				}
				double res11=Double.parseDouble(res1);
				double res22=Double.parseDouble(res2);
				double res=Math.abs(res11-res22);
				/*PreparedStatement ps3=con.prepareStatement("select sec_to_time('"+res+"') from dual");
				ResultSet rs3=ps3.executeQuery();
				while(rs3.next())
				{
				res3=rs3.getString(1);
				//////System.out.println("FINAL TIME TO FIND EXCESS/SHORT FALL..........."+res3);
				}*/
				
				//~~~~~~~~~~~~~~~~~~~~~
				int h1=(int)res/3600;
						////////System.out.println("HH/3600..............:"+hours);
						int m1=(int)((res%3600)/60.0);
						////////System.out.println("MM%36000/60.................:"+minutes);
						
						if(m1>=60)
						{
						h1=h1+1;
						////////System.out.println(" Mins>60 then..... hours....."+hours);
						m1=m1-60;
						////////System.out.println(" Mins>60 then..... minutes....."+minutes);
						}
						////////////////////////////////////////////////////////////////////// adding decimal point if minuts have single digit
						String m11=Integer.toString(m1);
				double mm1;
				double tot111;
				int mlength1=m11.length();
						if(mlength1<2)
					{
					double mmmm=(double)m1;
					
					mm1=mmmm/100;
					////////System.out.println("MMM in if length<2.........."+mmm1);
					
					tot111=h1+mm1;
					res3=Double.toString(tot111);
					//////System.out.println("RESULT IS....E/S..."+res3);
					}
					else
					{
					//////////////////////////////////////////////////////////////////////
						 res3=h1+"."+m1;
					//////System.out.println(" Else ......RESULT IS.......E/S............"+res3);
						}
				//~~~~~~~~~~~~~~~~~~~~~~~~~~~~
				
				if(totaltime<total)
				{
				excess=res3;
				//////System.out.println("EXCESS..........."+excess);
				}
				else
				{
				excess="- "+res3;
				//////System.out.println("SHORTFALL..........."+excess);
				}
				////////////////////////////////END OF CONV IN DB//////////////////////////////////////////
			
			
			/* closed here
			int tothrs=tot4-tot1;
			//////System.out.println("tothrs"+tothrs);
			int totmins=tot6-tot3;
			//////System.out.println("totmins"+totmins);
			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			String leng1=Integer.toString(totmins);
						int length1=leng1.length();
						double totmins1;
						double excess2;
					if(length1<2)
					{
					double totalmins=(double)totmins;
					
					totmins1=totalmins/100;
					//////System.out.println("minutes"+totmins1);
					if(Math.abs(tothrs)!=tothrs)
					{
					 excess2=tothrs-totmins1;
					 excess=Double.toString(excess2);
					 }
					 else
					 {
					 excess2=tothrs+totmins1;
					 excess=Double.toString(excess2);
					 }
				}//if
					else{		
			///////////////
			if(totmins>=60)
			{
			while(totmins>=60)
			{
			tothrs=tothrs+1;
			totmins=totmins-60;
			}
			 excess=tothrs+":"+totmins;
			}
			else
			{
			totmins=Math.abs(totmins);
			excess=tothrs+":"+totmins;
			//////System.out.println("else "+excess);
			}
					}//else
					closed to here*/
	
	/////////////////////////////////////////////////////////////////// CODE TO COUNT NO OF WORKING DAYS
				noofworkdays nwd=new noofworkdays();
				int nwds=nwd.getdays(empno,fromdate,todate);
				//////System.out.println("No.of Working Days........."+nwds);
	//////////////////////////////////////////////////////////////////////////////
			totalworkinghrsmonth1 twhm1=new totalworkinghrsmonth1();
			totaltime1=twhm1.getvalue1(nwds);
			/////////////////////////////////////////////////////////////////////////////////////////////////////////////finding actual percentage
			Actualpercentage acper=new Actualpercentage();
			actualpercent=acper.getapercent(totalwhrs,totaltime);
			///////////////////////////////////////////////////////////////////////////////////////////////////////////
				/////////////////////////////////////////////////////////////////////////////////////////////////////////////finding revised percentage
			Revisedpercentage reper=new Revisedpercentage();
			revisedpercent=reper.getapercent(totaltime1,total);
			///////////////////////////////////////////////////////////////////////////////////////////////////////////
			ServletOutputStream servletOutputStream = response.getOutputStream();
		
			InputStream reportStream = servletContext.getResourceAsStream("/Reports/attendancesummary.jasper");
		
			
			HashMap hm = new HashMap();
			//Map reportParameters = new HashMap();
			 hm.put("empid",empno);
			 hm.put("empname",empname);
			    hm.put("fromdate",fromdate);
				hm.put("todate",todate);
				hm.put("totalwhrs",totalwhrs);
				hm.put("totaltime",totaltime);
				hm.put("total",total);
				hm.put("excess",excess);
				hm.put("totalodtime",totalodtime);
				hm.put("month",month);
				hm.put("totaltime1",totaltime1);
				hm.put("apercent",actualpercent);
				hm.put("rpercent",revisedpercent);
				//hm.put("excess",excess);
				hm.put("nwds",nwds);
				String comp=(String)request.getSession().getAttribute("comp");
				hm.put("comp", comp);	
				String companyname=(String)request.getSession().getAttribute("comp");
				String imageName=companyregdao.viewImageNameByCompanyName(companyname);//Getting Image Name by using Companyname.
				prop=util_prop.getMessageUpload();//Setting properties file to properties Object.
				String imagePath=prop.getProperty("logopath")+imageName;//Merging(Concatinate) the Path and ImageName.
				hm.put("imagePath", imagePath);
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
            			con.close();
        				} catch (SQLException e)
        				{

        					logger.error(util_stacktrace.sendingErrorAsString(e));
        				}
					}
		
	}
}

