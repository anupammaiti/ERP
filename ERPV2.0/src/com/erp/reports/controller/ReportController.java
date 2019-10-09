package com.erp.reports.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.JasperRunManager;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.view.JasperViewer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.erp.finance.dao.GroupsDAO;
import com.erp.hr.dao.EmployeeDAO;
import com.erp.util.DBConnection;

@Controller
public class ReportController {
	@Autowired 	DBConnection dbconnection;
	@Autowired 	EmployeeDAO empdao;
	@Autowired GroupsDAO groupsdao;
	JRDataSource jrds;
	@Autowired	DataSource ds;
	Connection con;
	
	@Autowired
	public void setDataSource(DataSource ds){
		this.ds=ds;
	}
	
	@RequestMapping(value="report.erp",method=RequestMethod.GET)
	public String createReport(ModelMap model){
		generateReport();
		return "redirect:hr_admin_main";
	}
	
	public void generateReport() {
		
		try
		{
			dbconnection.getDBConnection();
			
			JasperDesign jasperdesign=JRXmlLoader.load("E:/javaprojects/ERPV2.0/ERPV2.0/reports/employee1.jrxml");
			JasperReport jasperreport=JasperCompileManager.compileReport(jasperdesign);
			HashMap parameters=new HashMap();
			JasperPrint jasperprint=JasperFillManager.fillReport(jasperreport,parameters ,con);
			
			JasperViewer.viewReport(jasperprint); 
		}
		catch(JRException jre)
		{
			jre.printStackTrace();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
	}
	
	
	
	@RequestMapping(value="report1.erp",method=RequestMethod.GET)
	public String createJasperReport(ModelMap model){
		
		jrds=new JRBeanCollectionDataSource(empdao.viewEmployee());
		System.out.println("Hello");
		model.addAttribute("datasource",jrds);
		model.addAttribute("format","pdf");
		System.out.println("Hai");
		return "multiViewReport";
	}
	
	
	
	@RequestMapping(value="webreport.erp",method=RequestMethod.GET)
	public String generateJasperReport(HttpServletRequest request,HttpServletResponse response,HttpServlet ht,ServletConfig Conf,ServletContext servletContext){
			
		try {
			ht.init(Conf);
			servletContext = Conf.getServletContext();
			ServletOutputStream servletOutputStream = response.getOutputStream();
		
			InputStream reportStream = servletContext.getResourceAsStream("/reports/employees.jasper");
		
			Connection con = null;
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/erp","root","root");
		
			HashMap hm = new HashMap();
			
			
			JasperRunManager.runReportToPdfStream(reportStream ,servletOutputStream, hm, con);
			
			response.setContentType("application/pdf");
			servletOutputStream.flush();
			servletOutputStream.close();

			
		} catch (JRException e1) {
			e1.printStackTrace();
		} 
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		} 
		catch (SQLException e2) {
			e2.printStackTrace();
		}
		catch(IOException e3){
			e3.printStackTrace();
		}
		catch(ServletException e4){
			e4.printStackTrace();
		}
		
		return "redirect:InterviewEvalutionReport.erp";
	}
	
	@RequestMapping(value="report2.erp",method=RequestMethod.GET)
	public void generateReport(HttpServletRequest request,HttpServletResponse response) {
		List ll;
		try {
		//InputStream inputStream = new FileInputStream ("../reports/groups.jrxml");
		ll=groupsdao.getGroups();
		JRBeanCollectionDataSource beanColDataSource = new	JRBeanCollectionDataSource(ll);
		Map parameters = new HashMap();
		//JasperDesign jasperDesign = JRXmlLoader.load(inputStream);
		//JasperCompileManager.compileReport(jasperDesign);
		JasperReport jasperReport =(JasperReport)JRLoader.loadObject("/WEB-INF/reports/groups.jasper"); 
		JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, beanColDataSource);
		JasperExportManager.exportReportToPdfFile(jasperPrint, "C:/report/emp.pdf");
		
		} catch (Exception e1) {
			e1.printStackTrace();
		} 
		
	}
	
	@RequestMapping(value="staticjasperreport.erp",method=RequestMethod.GET)
	public void generateStaticReport(HttpServletRequest request,HttpServletResponse response)throws ServletException  {
		 
		try
		{
			//HttpServlet ht;
			//ServletConfig Confs;
			//File file=new File("groups.jrxml");
			//ServletContext servletContext;
			//String filepath="./reports/groups.jasper";
			//String actualpath=null;
			//actualpath=file.getAbsolutePath();
			//System.out.println("Path of the file is\t:"+actualpath);
			ServletOutputStream servletOutputStream = response.getOutputStream();
			//ht.init(Conf);
			//servletContext=Conf.getServletContext();
			//servletContext.getRealPath("/reports/groups.jasper");
			//	InputStream inputstream=httpservlet.getServletConfig().getServletContext().getResourceAsStream("/reports/groups.jasper");
			//InputStream inputstream=ht.getServletConfig().getServletContext().getResourceAsStream("/reports/groups.jasper");
			InputStream inputstream=this.getClass().getResourceAsStream("./reports/groups.jrxml");
		
			//JasperDesign jasperdesign=JRXmlLoader.load("/home/ravi/db/ERPV2.0/ERPV2.0/reports/groups.jrxml");
			
			//JasperReport jasperreport=JasperCompileManager.compileReport(jasperdesign);
			HashMap parameters=new HashMap();
			//JasperPrint jasperprint=JasperFillManager.fillReport(jasperreport,parameters);
			JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
			//JasperRunManager.runReportToPdfFile(filepath, parameters, ds.getConnection());
		// JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters);
			//JasperExportManager.exportReportToPdf(jasperprint);
			
			//JasperViewer.viewReport(is, isXMLFile)
			/**Generate the output*/
			//JasperViewer.viewReport(jasperprint);  
		//JasperExportManager.exportReportToPdf(jasperprint);
		response.setContentType("application/pdf");
		  servletOutputStream.flush();
		  servletOutputStream.close();
		//JRPdfExporter exporter=new JRPdfExporter();	
			//exporter.exportReport();
		//	JasperExportManager.exportReportToPdfFile(jasperprint,"/home/ravi/reports/StudentRegistration.pdf");
		}catch(JRException jre)
		{
			jre.printStackTrace();
		}
		catch(IOException ioe) {
			ioe.printStackTrace();
		}
		catch(SQLException sqlex) {
			sqlex.printStackTrace();
		}
		
		
	}
	@RequestMapping(value="employee_details_report.erp",method=RequestMethod.GET)
	public void generateEmployeeReport(HttpServletRequest request,HttpServletResponse response)throws ServletException  {
		 
		try
		{
			//HttpServlet ht;
			//ServletConfig Confs;
			//File file=new File("groups.jrxml");
			//ServletContext servletContext;
			//String filepath="./reports/groups.jasper";
			//String actualpath=null;
			//actualpath=file.getAbsolutePath();
			//System.out.println("Path of the file is\t:"+actualpath);
			ServletOutputStream servletOutputStream = response.getOutputStream();
			//ht.init(Conf);
			//servletContext=Conf.getServletContext();
			//servletContext.getRealPath("/reports/groups.jasper");
			//	InputStream inputstream=httpservlet.getServletConfig().getServletContext().getResourceAsStream("/reports/groups.jasper");
			//InputStream inputstream=ht.getServletConfig().getServletContext().getResourceAsStream("/reports/groups.jasper");
			InputStream inputstream=this.getClass().getResourceAsStream("/employee_details.jasper");
		
			//JasperDesign jasperdesign=JRXmlLoader.load("/home/ravi/db/ERPV2.0/ERPV2.0/reports/groups.jrxml");
			
			//JasperReport jasperreport=JasperCompileManager.compileReport(jasperdesign);
			HashMap parameters=new HashMap();
			//JasperPrint jasperprint=JasperFillManager.fillReport(jasperreport,parameters);
			JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters, ds.getConnection());
			//JasperRunManager.runReportToPdfFile(filepath, parameters, ds.getConnection());
		// JasperRunManager.runReportToPdfStream(inputstream, servletOutputStream, parameters);
			//JasperExportManager.exportReportToPdf(jasperprint);
			
			//JasperViewer.viewReport(is, isXMLFile)
			/**Generate the output*/
			//JasperViewer.viewReport(jasperprint);  
		//JasperExportManager.exportReportToPdf(jasperprint);
		response.setContentType("application/pdf");
		  servletOutputStream.flush();
		  servletOutputStream.close();
		//JRPdfExporter exporter=new JRPdfExporter();	
			//exporter.exportReport();
		//	JasperExportManager.exportReportToPdfFile(jasperprint,"/home/ravi/reports/StudentRegistration.pdf");
		}catch(JRException jre)
		{
			jre.printStackTrace();
		}
		catch(IOException ioe) {
			ioe.printStackTrace();
		}
		catch(SQLException sqlex) {
			sqlex.printStackTrace();
		}
		
		
	}
}
	