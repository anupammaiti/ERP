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


public class Leavecard extends HttpServlet
{
	
	private ServletContext servletContext;
	private ConnectionUtils conn=new ConnectionUtils();
	private CompanyRegistrationDAO companyregdao=new CompanyRegistrationDAO();
	private Properties_Util util_prop=new Properties_Util();
	private Properties prop=new Properties();
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
	 HttpSession session = request.getSession(true);
        
		String empid=request.getParameter("empno");
		String fromdate=(String)session.getAttribute("fromdate");
		String todate=(String)session.getAttribute("todate");
		//String time=null;
		////////System.out.println("***"+empid);
		////////System.out.println(fromdate);
	//	//////System.out.println(todate);
	Connection con = null;
		try {
			
			double CL=0.0;
			double SL=0.0;
			double LOP=0.0;
			double PL=0.0;
			double TL=0.0;
				double CL1=0.0;
			double SL1=0.0;
			double LOP1=0.0;
			double PL1=0.0;
			//double TL1=0.0;
			
			
			con=conn.getDBConnection();
			////////////////////////////////////////////////////////////////////////////////
			PreparedStatement ps=con.prepareStatement("select sum(cl) from leaveapplications where empid=? and leavetype=? and fromdate between ? and ? group by leavetype");
			ps.setString(1,empid);
			ps.setString(2,"CL");
			ps.setString(3,fromdate);
			ps.setString(4,todate);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
			CL=rs.getDouble(1);
			}
			//////System.out.println("CL"+CL);
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
			////////////////////////////////////////////////////////////////////////////////
			PreparedStatement ps5=con.prepareStatement("select sum(cl) from leaveapplications where empid=? and leavetype=? and fromdate between ? and ? group by leavetype");
			ps5.setString(1,empid);
			ps5.setString(2,"1/2CL");
			ps5.setString(3,fromdate);
			ps5.setString(4,todate);
			ResultSet rs5=ps5.executeQuery();
			
			while(rs5.next())
			{
			CL1=rs5.getDouble(1);
			}
			////////System.out.println("CL1"+CL1);
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
			PreparedStatement ps1=con.prepareStatement("select sum(lop) from leaveapplications where empid=? and leavetype=? and fromdate between ? and ? group by leavetype");
			ps1.setString(1,empid);
			ps1.setString(2,"LOP");
			ps1.setString(3,fromdate);
			ps1.setString(4,todate);
			ResultSet rs1=ps1.executeQuery();
			while(rs1.next())
			{
			LOP=rs1.getDouble(1);
			}
			////////System.out.println("LOP"+LOP);
			////////////////////////////////////////////////////////////////////////////
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
			PreparedStatement ps6=con.prepareStatement("select sum(lop) from leaveapplications where empid=? and leavetype=? and fromdate between ? and ? group by leavetype");
			ps6.setString(1,empid);
			ps6.setString(2,"1/2LOP");
			ps6.setString(3,fromdate);
			ps6.setString(4,todate);
			ResultSet rs6=ps6.executeQuery();
			while(rs6.next())
			{
			LOP1=rs6.getDouble(1);
			}
			////////System.out.println("LOP1"+LOP1);
			////////////////////////////////////////////////////////////////////////////
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			/*PreparedStatement ps2=con.prepareStatement("select sum(leavetype) from leaveapplications where empid=? and leavetype=? and date between ? and ? group by leavetype");
			ps2.setString(1,empid);
			ps2.setString(2,"TL");
			ps2.setString(3,fromdate);
			ps2.setString(4,todate);
			ResultSet rs2=ps2.executeQuery();
			while(rs2.next())
			{
			TL=rs2.getDouble(1);
			}
			//////System.out.println("TL"+TL);*/
			////////////////////////////////////////////////////////////////////////////
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			PreparedStatement ps3=con.prepareStatement("select sum(sl) from leaveapplications where empid=? and leavetype=? and fromdate between ? and ? group by leavetype");
			ps3.setString(1,empid);
			ps3.setString(2,"SL");
			ps3.setString(3,fromdate);
			ps3.setString(4,todate);
			ResultSet rs3=ps3.executeQuery();
			while(rs3.next())
			{
			 SL=rs3.getDouble(1);
			}
			////////System.out.println("SL"+SL);
			////////////////////////////////////////////////////////////////////////////
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			PreparedStatement ps7=con.prepareStatement("select sum(sl) from leaveapplications where empid=? and leavetype=? and fromdate between ? and ? group by leavetype");
			ps7.setString(1,empid);
			ps7.setString(2,"1/2SL");
			ps7.setString(3,fromdate);
			ps7.setString(4,todate);
			ResultSet rs7=ps7.executeQuery();
			while(rs7.next())
			{
			 SL1=rs7.getDouble(1);
			}
			////////System.out.println("SL1"+SL1);
			////////////////////////////////////////////////////////////////////////////
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			PreparedStatement ps4=con.prepareStatement("select sum(pl) from leaveapplications where empid=? and leavetype=? and fromdate between ? and ? group by leavetype");
			ps4.setString(1,empid);
			ps4.setString(2,"PL");
			ps4.setString(3,fromdate);
			ps4.setString(4,todate);
			ResultSet rs4=ps4.executeQuery();
			while(rs4.next())
			{
			PL=rs4.getDouble(1);
			}
			////////System.out.println("PL"+PL);
			////////////////////////////////////////////////////////////////////////////
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			PreparedStatement ps8=con.prepareStatement("select sum(pl) from leaveapplications where empid=? and leavetype=? and fromdate between ? and ? group by leavetype");
			ps8.setString(1,empid);
			ps8.setString(2,"1/2PL");
			ps8.setString(3,fromdate);
			ps8.setString(4,todate);
			ResultSet rs8=ps8.executeQuery();
			while(rs8.next())
			{
			PL1=rs8.getDouble(1);
			}
			////////System.out.println("PL1"+PL1);
			////////////////////////////////////////////////////////////////////////////
			CL=CL+CL1;
			SL=SL+SL1;
			PL=PL+PL1;
			LOP=LOP+LOP1;
			
			ServletOutputStream servletOutputStream = response.getOutputStream();
		
			InputStream reportStream = servletContext.getResourceAsStream("/Reports/Leavecard.jasper");
			String comp=(String)request.getSession().getAttribute("comp");
			
			HashMap hm = new HashMap();
			//Map reportParameters = new HashMap();
			 hm.put("empid",empid);
			    hm.put("fromdate",fromdate);
				hm.put("todate",todate);
					hm.put("CL",CL);
					hm.put("SL",SL);
					//hm.put("TL",TL);
					hm.put("PL",PL);
					hm.put("LOP",LOP);
					hm.put("comp", comp);
					String companyname=(String)request.getSession().getAttribute("comp");
					String imageName=companyregdao.viewImageNameByCompanyName(companyname);//Getting Image Name by using Companyname.
					prop=util_prop.getMessageUpload();//Setting properties file to properties Object.
					String imagePath=prop.getProperty("logopath")+imageName;//Merging(Concatinate) the Path and ImageName.
					hm.put("imagePath", imagePath);
					/*prop=util_prop.getMessageUpload();
					String image=compregdao.viewImageNameByCompanyName(comp);
					//////System.out.println("Image Name\t"+image);
					String imagePath1=prop.getProperty("logopath")+image;
					//////System.out.println("Image Path"+imagePath1);
					hm.put("imagePath",imagePath1);*/
					
								 
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
        					logger.error(util_stacktrace.sendingErrorAsString(e));
        				}
					}
	}
}

// JavaScript Document