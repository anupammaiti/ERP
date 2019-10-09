package com.erp.Reports;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.ArrayList;
//import java.sql.DriverManager;
//import java.sql.SQLException;
import java.util.HashMap;
import java.util.Properties;
import java.util.StringTokenizer;

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
import com.svs.util.ConvertStackTracetoString;
import com.svs.util.Properties_Util;

public class TotalattandancesummaryRM extends HttpServlet
{
	
	private ServletContext servletContext;
	final static Logger logger = Logger.getLogger(TotalattandancesummaryRM.class);
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
	HashMap hm = new HashMap();
	PreparedStatement pr=null;
	ResultSet rs=null;
	
        	ServletOutputStream servletOutputStream = response.getOutputStream();
			InputStream reportStream = servletContext.getResourceAsStream("/Reports/TotalattandancesummaryRM.jasper");

		String empno=null;
		String rm=session.getAttribute("rm").toString();
		String fromdate=session.getAttribute("fromdate").toString();
		String todate=session.getAttribute("todate").toString();
		String hod=session.getAttribute("hod").toString();
		String empno1=session.getAttribute("empno1").toString();
		//////System.out.println("String is"+empno1);
		 try {
		 /////////////////////////////////////////////////////////////////////////initialization
		 double totalwhrs=0.0;
		double totaltime=0.0;
			double totaltime1;
		double totaltimeOD;
		double total1=0.0;
		double total=0.0;
		double  excess1;
		double actualpercent;
		double revisedpercent;
		String excess=null;;
		double totalodtime=0.0;
		String month=null;
		String tname1=null;
		 ConnectionUtils conn=new ConnectionUtils();
			con=conn.getDBConnection();
			PreparedStatement pr4=con.prepareStatement("show tables");
			 ResultSet rs4=pr4.executeQuery();
			boolean flag1=false;
			try{
			while(rs4.next())
			{
			 tname1=rs4.getString(1).trim();
			 	if(tname1.equals("rmtable"))
		flag1=true;
			}
			if(flag1)
			{
			PreparedStatement pr3=con.prepareStatement("drop table rmtable");
			//////System.out.println("table deleted");
			 pr3.executeUpdate();
			 }
			 }
			 catch(SQLException ex)
			 {
			 //////System.out.println("Exception"+ex);
			 }
			//////////////////////////////////////////////////code to delete table/////////////////////////////////////////////////////
			
		/////////////////////////////////////////////////////////complete initialization
		 /////////////////////////////////////////////////////////////////////////////////////////String tokenizer to split values
		 String  empno2= empno1.replace( '[', ',' );
		String  empno3= empno2.replace( ']', ',' );
		
		ArrayList<String> empno5 = new ArrayList<String>(); ////////////array list to add empnos
		 StringTokenizer st = new StringTokenizer(empno3, ",");
				while(st.hasMoreTokens()) {
				
				 String empno4 = st.nextToken();
								
				empno5.add(empno4); // adding empno in array list
				
			}
	/////////////////////////////////////////////////////////////////////////////////////////
	

		for(int i=0; i< empno5.size(); i++){                                 // for loop to calculate all the values by emno wise which are added in arraylist
	
			empno=empno5.get(i).trim();
    ////////////////////////////////////////////////////////////////////////////////////
		
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
			month=mex.getvalue(empno,fromdate,todate);
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
			////////System.out.println("TOT1    :"+tot1);
			double tot2=((double)( totaltime-tot1))*100;
			////////System.out.println("TOT2    :"+tot2);
			if(tot2>=60)
						{
						tot1=tot1+1;
						////////System.out.println(" Mins>60 then..... hours....."+hours);
						tot2=tot2-60;
						////////System.out.println(" Mins>60 then..... minutes....."+minutes);
						}
			int tot3=(int)(Math.ceil(tot2));
			////////System.out.println("TOT3    :"+tot3);
			///*********COMPLETED conversion totaltime in HH and MM******************//
			///*********conversion total in HH and MM******************//
			int tot4=(int)total;
			////////System.out.println("TOT4    :"+tot4);
			double tot5=((double)( total-tot4))*100;
		//	//////System.out.println("TOT5    :"+tot5);
		if(tot5>=60)
						{
						tot4=tot4+1;
						////////System.out.println(" Mins>60 then..... hours....."+hours);
						tot5=tot5-60;
						////////System.out.println(" Mins>60 then..... minutes....."+minutes);
						}
			int tot6=(int)(Math.ceil(tot5));
			////////System.out.println("TOT6    :"+tot6);
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
				//////System.out.println("TIME FROM .(TAS RM ).FOR TEMP HRS1........."+res1);
				}
				
				PreparedStatement ps2=con.prepareStatement("select time_to_sec('"+temphrs2+"') from dual");
				ResultSet rs2=ps2.executeQuery();
				while(rs2.next())
				{
				res2=rs2.getString(1);
				//////System.out.println("TIME FROM DB..........."+res2);
				}
				double res11=Double.parseDouble(res1);
				double res22=Double.parseDouble(res2);
				double res=Math.abs(res11-res22);
				
				/*PreparedStatement ps3=con.prepareStatement("select sec_to_time('"+res+"') from dual");
				ResultSet rs3=ps3.executeQuery();
				while(rs3.next())
				{
				res3=rs3.getString(1);
				//////System.out.println("FINAL TIME TO FIND EXCESS/SHORT FALL..........."+res3);			}*/
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
				excess="-- "+res3;
				//////System.out.println("SHORTFALL..........."+excess);
				}
				////////////////////////////////END OF CONV IN DB//////////////////////////////////////////
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
		/* closed here
			int tothrs=tot4-tot1;
			////////System.out.println("tothrs"+tothrs);
			int totmins=tot6-tot3;
			////////System.out.println("totmins"+totmins);
			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			String leng1=Integer.toString(totmins);
						int length1=leng1.length();
						double totmins1;
						double excess2;
					if(length1<2)
					{
					double totalmins=(double)totmins;
					
					totmins1=totalmins/100;
					////////System.out.println("minutes"+totmins1);
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
			////////System.out.println("else "+excess);
			}
					}//else
					closed upto here*/
					/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
					int co=0;
					PreparedStatement pc=con.prepareStatement("select count(date) from empinout1 where empid=? and date between ? and ?");
					pc.setString(1,empno);
					pc.setString(2,fromdate);
					pc.setString(3,todate);
					ResultSet rc=pc.executeQuery();
					while(rc.next())
					{
					co=rc.getInt(1);
					//////System.out.println("card swiped days are.........."+co);
					}
					///////////////////~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~getting empdetails....................
					String empname1=null;
					String designation1=null;
					String HOD1=null;
					String RM1=null;
					PreparedStatement pdetails=con.prepareStatement("select  empname,designation,HOD,RM from empinout1 where empid=?");
					pdetails.setString(1,empno);
					ResultSet rdetails=pdetails.executeQuery();
					while(rdetails.next())
					{
					empname1=rdetails.getString(1);
					designation1=rdetails.getString(2);
					HOD1=rdetails.getString(3);
					RM1=rdetails.getString(4);
					}
	
	/////////////////////////////////////////////////////////////////////////////////////////////create temp table/////////////////////////////////////////////
			String tname=null;
			 pr=con.prepareStatement("show tables");
			 rs=pr.executeQuery();
			 boolean flag=false;
			while(rs.next())
			{
			 tname=rs.getString(1).trim();
			//////System.out.println("Table name is........."+tname);
			if(tname.equals("rmtable"))
		flag=true;
			}
			
			if(flag)
			{
			PreparedStatement pr1=con.prepareStatement("insert into rmtable(empno,totalwhrs,totaltime,total,excess,totalodtime,ndays,nwds,totaltime1,actualpercent,revisedpercent,empname,designation,RM,HOD)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pr1.setString(1,empno);
			pr1.setDouble(2,totalwhrs);
			pr1.setDouble(3,totaltime);
			pr1.setDouble(4,total);
			pr1.setString(5,excess);
			pr1.setDouble(6,totalodtime);
			pr1.setInt(7,co);
			pr1.setInt(8,nwds);
			pr1.setDouble(9,totaltime1);
			pr1.setDouble(10,actualpercent);
			pr1.setDouble(11,revisedpercent);
			pr1.setString(12,empname1);
			pr1.setString(13,designation1);
			pr1.setString(14,RM1);
			pr1.setString(15,HOD1);
			pr1.executeUpdate();
			}
			else
			{
			PreparedStatement pr2=con.prepareStatement("create table rmtable(empno varchar(30),totalwhrs DOUBLE PRECISION,totaltime DOUBLE PRECISION,total DOUBLE PRECISION,excess varchar(20),totalodtime DOUBLE PRECISION,ndays int(10),nwds int(10),totaltime1 DOUBLE PRECISION,actualpercent DOUBLE PRECISION,revisedpercent DOUBLE PRECISION,empname varchar(70),designation varchar(70),RM varchar(70),HOD varchar(70))");
			pr2.executeUpdate();
			PreparedStatement pr1=con.prepareStatement("insert into rmtable(empno,totalwhrs,totaltime,total,excess,totalodtime,ndays,nwds,totaltime1,actualpercent,revisedpercent,empname,designation,RM,HOD)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pr1.setString(1,empno);
			pr1.setDouble(2,totalwhrs);
			pr1.setDouble(3,totaltime);
			pr1.setDouble(4,total);
			pr1.setString(5,excess);
			pr1.setDouble(6,totalodtime);
			pr1.setInt(7,co);
			pr1.setInt(8,nwds);
			pr1.setDouble(9,totaltime1);
			pr1.setDouble(10,actualpercent);
			pr1.setDouble(11,revisedpercent);
			pr1.setString(12,empname1);
			pr1.setString(13,designation1);
			pr1.setString(14,RM1);
			pr1.setString(15,HOD1);
			//////System.out.println("ELSE OF RM");
			pr1.executeUpdate();
			}
			/////////////////////////////////////////////////////////////////////////////////////////////END for temp/////////////////////////////////////////////
			////////System.out.println(month+"month");
				hm.put("rm",rm);
			    hm.put("fromdate",fromdate);
				hm.put("todate",todate);
				hm.put("month",month);
				hm.put("hod",hod);
				
									}//for
		String comp=(String)request.getSession().getAttribute("comp");
			hm.put("comp",comp);			
			String companyname=(String)request.getSession().getAttribute("comp");
			String imageName=companyregdao.viewImageNameByCompanyName(companyname);//Getting Image Name by using Companyname.
			prop=util_prop.getMessageUpload();//Setting properties file to properties Object.
			String imagePath=prop.getProperty("logopath")+imageName;//Merging(Concatinate) the Path and ImageName.
			hm.put("imagePath", imagePath);
			
			JasperRunManager.runReportToPdfStream(reportStream , servletOutputStream,hm, con);
			
			
			
			

			
		
			response.setContentType("application/pdf");
			servletOutputStream.flush();
			servletOutputStream.close();
	
			
		}//try 
		
		catch (JRException e1) {
			logger.error(util_stacktrace.sendingErrorAsString(e1));
		} 
		catch (ClassNotFoundException e) {
			logger.error(util_stacktrace.sendingErrorAsString(e));
		} 
		catch (SQLException e) {
			logger.error(util_stacktrace.sendingErrorAsString(e));
		}
		catch (Exception ex){
			logger.error(util_stacktrace.sendingErrorAsString(ex));
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
	}//doGet
}//class

