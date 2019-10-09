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

import org.apache.log4j.Logger;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperRunManager;

import com.svs.erp.Hr.db.ConnectionUtils;
import com.svs.erp.company.DAO.CompanyRegistrationDAO;
import com.svs.util.ConvertStackTracetoString;
import com.svs.util.Properties_Util;


public class Halfdayreport extends HttpServlet
{
	
	private ServletContext servletContext;
	final static Logger logger = Logger.getLogger(Halfdayreport.class);
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
        String fromdate=request.getParameter("fromdate");
		String todate=request.getParameter("todate");
		String time=null;
		Connection con = null;
		String companyname=null;
		//////System.out.println(fromdate);
		try {
			companyname=(String)request.getSession().getAttribute("comp");
			ServletOutputStream servletOutputStream = response.getOutputStream();
		
			InputStream reportStream = servletContext.getResourceAsStream("/Reports/Halfdayreport.jasper");
		String msg=null;
		String empid=null;
		String empname=null;
		String dept=null;
		String des=null;
		String rm=null;
		String hod=null;
		String first=null;
		String last=null;
		String tothrs=null;
		String odtime=null;
		String date=null;
			
			ConnectionUtils conn=new ConnectionUtils();
			con=conn.getDBConnection();
			PreparedStatement pr=null;
			ResultSet rs11=null;
			//~~~~~~~~~~temp half table finds delete it
			String tname=null;
			 pr=con.prepareStatement("show tables");
			 rs11=pr.executeQuery();
			 boolean flag=false;
			while(rs11.next())
			{
			 tname=rs11.getString(1).trim();
			////////System.out.println("............."+tname);
			if(tname.equals("halfday"))
			
		flag=true;
			}
			if(flag)
			{
			PreparedStatement pr3=con.prepareStatement("delete from halfday");
			////////System.out.println("halfday....table data deleted");
			 pr3.executeUpdate();
			 }
			else
			{
			PreparedStatement pr2=con.prepareStatement("create table halfday(empid varchar(20),empname varchar(70),dept varchar(60),desig varchar(60),RM varchar(60),HOD varchar(60),companyname varchar(100),date date,first time,last time,tothrs time,odtime time default '00:00:00')");
			pr2.executeUpdate();
			}
			/////////////////////code to find halfday absenties whoare <04:15:00 and not authenticated
			PreparedStatement ps=con.prepareStatement("select empid,empname,department,designation,RM,HOD,date,first,last,tothrs,odtime from empinout1 where date between ? and ? and (first>='10:30:00' || last<='14:45:00') and leavetype='XX'");
			ps.setString(1,fromdate);
			ps.setString(2,todate);
			ResultSet rs=ps.executeQuery();
			int co=0;
			while(rs.next())
			{
			empid=rs.getString(1);
			empname=rs.getString(2);
			dept=rs.getString(3);
			des=rs.getString(4);
			rm=rs.getString(5);
			hod=rs.getString(6);
			date=rs.getString(7);
			first=rs.getString(8);
			last=rs.getString(9);
			tothrs=rs.getString(10);
			odtime=rs.getString(11);
			
			co++;
			//////System.out.println("..........."+co);
			//~~~~~~~~~~~insert into halfday
			PreparedStatement pr1=con.prepareStatement("insert into halfday(empid,empname,dept,desig,rm,hod,date,first,last,tothrs,odtime,companyname)values(?,?,?,?,?,?,?,?,?,?,?,?)");
			//pr1.setInt(1,c);
			pr1.setString(1,empid);
			pr1.setString(2,empname);
			////////System.out.println("**************"+co);
			pr1.setString(3,dept);
			pr1.setString(4,des);
			pr1.setString(5,rm);
			pr1.setString(6,hod);
			pr1.setString(7,date);
			pr1.setString(8,first);
			pr1.setString(9,last);
			pr1.setString(10,tothrs);
			pr1.setString(11,odtime);
			pr1.setString(12,companyname);
			pr1.executeUpdate();
			//////System.out.println("<06:00:00 and XX");
			}//while <04:15:00 and XX
			
			//~~~~~~~~~~~~~~~~~~~~~~<04:15:00and OD
			PreparedStatement ps1=con.prepareStatement("select  empid,empname,department,designation,RM,HOD,date,first,last,tothrs,odtime from empinout1 where  totnod<'08:00:00' and leavetype='OD' and date between ? and ?");
			ps1.setString(1,fromdate);
			ps1.setString(2,todate);			
			ResultSet rs1=ps1.executeQuery();
			while(rs1.next())
			{
			co++;
			//////System.out.println("..........."+co);
			PreparedStatement pr4=con.prepareStatement("insert into halfday(empid,empname,dept,desig,rm,hod,date,first,last,tothrs,odtime)values(?,?,?,?,?,?,?,?,?,?,?)");
			//pr1.setInt(1,c);
			pr4.setString(1,rs1.getString(1));
			pr4.setString(2,rs1.getString(2));
			////////System.out.println("**************"+co);
			pr4.setString(3,rs1.getString(3));
			pr4.setString(4,rs1.getString(4));
			pr4.setString(5,rs1.getString(5));
			pr4.setString(6,rs1.getString(6));
			pr4.setString(7,rs1.getString(7));
			pr4.setString(8,rs1.getString(8));
			pr4.setString(9,rs1.getString(9));
			pr4.setString(10,rs1.getString(10));
			pr4.setString(11,rs1.getString(11));
			pr4.executeUpdate();
			////////System.out.println("<06:00:00 and OD");
			}//while <04:15:00 and XX
			
			//~~~~~~~~~~~~~~~~~~<04:15 and PER
	PreparedStatement ps2=con.prepareStatement("select  empid,empname,department,designation,RM,HOD,date,first,last,tothrs,odtime from empinout1 where  totnod<'08:00:00' and leavetype='PER' and date between ? and ?");
			ps2.setString(1,fromdate);
			ps2.setString(2,todate);			
			ResultSet rs2=ps2.executeQuery();
			while(rs2.next())
			{
			co++;
			////////System.out.println("..........."+co);
			PreparedStatement pr5=con.prepareStatement("insert into halfday(empid,empname,dept,desig,rm,hod,date,first,last,tothrs,odtime)values(?,?,?,?,?,?,?,?,?,?,?)");
			//pr1.setInt(1,c);
			pr5.setString(1,rs2.getString(1));
			pr5.setString(2,rs2.getString(2));
			////////System.out.println("**************"+co);
			pr5.setString(3,rs2.getString(3));
			pr5.setString(4,rs2.getString(4));
			pr5.setString(5,rs2.getString(5));
			pr5.setString(6,rs2.getString(6));
			pr5.setString(7,rs2.getString(7));
			pr5.setString(8,rs2.getString(8));
			pr5.setString(9,rs2.getString(9));
			pr5.setString(10,rs2.getString(10));
			pr5.setString(11,rs2.getString(11));
			pr5.executeUpdate();
			//////System.out.println("<06:00:00 and PER");
			}//while <04:15:00 and PER
			
			//~~~~~~~~~~~~~~~~~~<04:15 and 1/2 LOP
	PreparedStatement ps3=con.prepareStatement("select  empid,empname,department,designation,RM,HOD,date,first,last,tothrs,odtime from empinout1 where  tothrs<'08:00:00' and leavetype='1/2LOP' and date between ? and ?");
			ps3.setString(1,fromdate);
			ps3.setString(2,todate);			
			ResultSet rs3=ps3.executeQuery();
			while(rs3.next())
			{
			co++;
			//////System.out.println("..........."+co);
			PreparedStatement pr6=con.prepareStatement("insert into halfday(empid,empname,dept,desig,rm,hod,date,first,last,tothrs,odtime)values(?,?,?,?,?,?,?,?,?,?,?)");
			//pr1.setInt(1,c);
			pr6.setString(1,rs3.getString(1));
			pr6.setString(2,rs3.getString(2));
			////////System.out.println("**************"+co);
			pr6.setString(3,rs3.getString(3));
			pr6.setString(4,rs3.getString(4));
			pr6.setString(5,rs3.getString(5));
			pr6.setString(6,rs3.getString(6));
			pr6.setString(7,rs3.getString(7));
			pr6.setString(8,rs3.getString(8));
			pr6.setString(9,rs3.getString(9));
			pr6.setString(10,rs3.getString(10));
			pr6.setString(11,rs3.getString(11));
			pr6.executeUpdate();
			////////System.out.println("<06:00:00 and 1/2LOP");
			}//while <04:15:00 and 1/2LOP


			
			/////////////////////////////////////////////////////////////////////////////////////////////END for temp/////////////////////////////////////////////
			//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
			HashMap hm = new HashMap();
			//Map reportParameters = new HashMap();
			    hm.put("fromdate",fromdate);
				hm.put("todate",todate);
				
				if(co==0)
			{
			msg="No Data Found";
			////////System.out.println("*********"+msg);
				hm.put("msg",msg);}
				String comp=(String)request.getSession().getAttribute("comp");
				hm.put("comp",comp);
				String imageName=companyregdao.viewImageNameByCompanyName(companyname);//Getting Image Name by using Companyname.
				prop=util_prop.getMessageUpload();//Setting properties file to properties Object.
				String imagePath=prop.getProperty("logopath")+imageName;//Merging(Concatinate) the Path and ImageName.
				hm.put("imagePath", imagePath);
								//hm.put("time",time);
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
        					logger.error(util_stacktrace.sendingErrorAsString(e));
        				}
					}
	}
}

// JavaScript Document