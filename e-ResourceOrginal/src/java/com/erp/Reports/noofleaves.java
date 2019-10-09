package com.erp.Reports;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
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


public class noofleaves extends HttpServlet
{
	
	private ServletContext servletContext;
	final static Logger logger = Logger.getLogger(noofleaves.class);
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
        
		String empid=request.getParameter("empid");
		String fromdate=session.getAttribute("fromdate").toString();
		String todate=session.getAttribute("todate").toString();
		//String time=null;
	//	//////System.out.println("***"+empid);
	//	//////System.out.println(fromdate);
	//	//////System.out.println(todate);
		Connection con = null;
		try {
			
			int CL=0;
			int SL=0;
			int AB=0;
			int PL=0;
			int TL=0;
			
			ConnectionUtils conn=new ConnectionUtils();
			con=conn.getDBConnection();
			////////////////////////////////////////////////////////////////////////////////
			PreparedStatement ps=con.prepareStatement("select count(authentication) from empabsent where empid=? and authentication=? and date between ? and ? group by authentication");
			ps.setString(1,empid);
			ps.setString(2,"CL");
			ps.setString(3,fromdate);
			ps.setString(4,todate);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
			CL=rs.getInt(1);
			}
			//////System.out.println("CL"+CL);
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			PreparedStatement ps1=con.prepareStatement("select count(authentication) from empabsent where empid=? and authentication=? and date between ? and ? group by authentication");
			ps1.setString(1,empid);
			ps1.setString(2,"AB");
			ps1.setString(3,fromdate);
			ps1.setString(4,todate);
			ResultSet rs1=ps1.executeQuery();
			while(rs1.next())
			{
			AB=rs1.getInt(1);
			}
			//////System.out.println("AB"+AB);
			////////////////////////////////////////////////////////////////////////////
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			PreparedStatement ps2=con.prepareStatement("select count(authentication) from empabsent where empid=? and authentication=? and date between ? and ? group by authentication");
			ps2.setString(1,empid);
			ps2.setString(2,"TL");
			ps2.setString(3,fromdate);
			ps2.setString(4,todate);
			ResultSet rs2=ps2.executeQuery();
			while(rs2.next())
			{
			TL=rs2.getInt(1);
			}
			//////System.out.println("TL"+TL);
			////////////////////////////////////////////////////////////////////////////
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			PreparedStatement ps3=con.prepareStatement("select count(authentication) from empabsent where empid=? and authentication=? and date between ? and ? group by authentication");
			ps3.setString(1,empid);
			ps3.setString(2,"SL");
			ps3.setString(3,fromdate);
			ps3.setString(4,todate);
			ResultSet rs3=ps3.executeQuery();
			while(rs3.next())
			{
			 SL=rs3.getInt(1);
			}
			//////System.out.println("SL"+SL);
			////////////////////////////////////////////////////////////////////////////
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			PreparedStatement ps4=con.prepareStatement("select count(authentication) from empabsent where empid=? and authentication=? and date between ? and ? group by authentication");
			ps4.setString(1,empid);
			ps4.setString(2,"PL");
			ps4.setString(3,fromdate);
			ps4.setString(4,todate);
			ResultSet rs4=ps4.executeQuery();
			while(rs4.next())
			{
			PL=rs4.getInt(1);
			}
			//////System.out.println("PL"+PL);
			////////////////////////////////////////////////////////////////////////////
			String eid=null;
		   String name1=null;
		   double cl1=0;
		   double sl1=0;
		   double pl1=0;
		   double ab1=0;
		   double lop1=0;
		   double totleaves=0;
		   double remainleaves=0;
		   double takenleaves=0;
			PreparedStatement ps5=con.prepareStatement("select empid,name,max(totalcl),max(totalsl),max(totalpl),totalleaves,max(lop1) as lop,min(remainingleaves)as remainingleaves,max(grandleaves) as grandleaves from leaveapplications where empid=? group by ?");
			ps5.setString(1,empid);
			//ps5.setString(2,fromdate);
			//ps5.setString(3,todate);
			ps5.setString(2,empid);
			//ps4.setString(3,fromdate);
			//ps4.setString(4,todate);
			ResultSet rs5=ps5.executeQuery();
			while(rs5.next())
			{
			eid=rs5.getString(1);
			name1=rs5.getString(2);
			cl1=rs5.getDouble(3);
			sl1=rs5.getDouble(4);
			pl1=rs5.getDouble(5);
			lop1=rs5.getDouble(7);
			totleaves=rs5.getDouble(6);
			remainleaves=rs5.getDouble(8);
			takenleaves=rs5.getDouble(9);
			}
			//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			/////////////////////////////create view  for report//////////////////////////////////
			boolean flag=false;
			String table=null;
			PreparedStatement ps6=con.prepareStatement("show tables");
			ResultSet rs6=ps6.executeQuery();
			while(rs6.next())
			{
			table=rs6.getString(1).trim();
			////////System.out.println(" name.........."+table);
			if(table.equals("noofleaves"))
		flag=true;
			}
			
			if(flag)
			{
			PreparedStatement ps7=con.prepareStatement("drop view noofleaves");
			ps7.executeUpdate();
			////////System.out.println("noofleaves deleted...........");
			
			PreparedStatement pr1=con.prepareStatement("create view noofleaves as select empid,date,leavetype from empinout1 where tothrs<='04:15:00' and leavetype='XX' and empid=? and date between ? and ?UNION select empid,date,authentication from empabsent where authentication='AB' and empid=? and date between ? and ?");  
			pr1.setString(1,empid);
			pr1.setString(2,fromdate);
			pr1.setString(3,todate);
			pr1.setString(4,empid);
			pr1.setString(5,fromdate);
			pr1.setString(6,todate);
			pr1.executeUpdate();
			}
			else
			{
			PreparedStatement pr1=con.prepareStatement("create view noofleaves as select empid,date,leavetype from empinout1 where tothrs<='04:15:00' and leavetype='XX' and empid=? and date between ? and ?UNION select empid,date,authentication from empabsent where authentication='AB' and empid=? and date between ? and ?");  
			////////System.out.println("ELSE OF No Of leaves");
			pr1.setString(1,empid);
			pr1.setString(2,fromdate);
			pr1.setString(3,todate);
			pr1.setString(4,empid);
			pr1.setString(5,fromdate);
			pr1.setString(6,todate);
			pr1.executeUpdate();

		}

			////////////////////////////////////////////////////////////////////////////////
			
			
			ServletOutputStream servletOutputStream = response.getOutputStream();
		
			InputStream reportStream = servletContext.getResourceAsStream("/Reports/noofleaves.jasper");
		
			
			HashMap hm = new HashMap();
			//Map reportParameters = new HashMap();
			 hm.put("empid",empid);
			    hm.put("fromdate",fromdate);
				hm.put("todate",todate);
					hm.put("CL",cl1);
					hm.put("SL",sl1);
					hm.put("TL",TL);
					hm.put("EL",pl1);
					hm.put("LOP",lop1);
					hm.put("totalleaves",totleaves);
					hm.put("remain",remainleaves);
					hm.put("taken",takenleaves);
					hm.put("AB",AB);
					String companyname=(String)request.getSession().getAttribute("comp");
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
		} catch (Exception e) {
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