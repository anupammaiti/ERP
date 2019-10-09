package com.erp.helper;

import javax.sql.DataSource;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.view.JasperViewer;

import org.springframework.beans.factory.annotation.Autowired;

public class ReportHelper {
	
	@Autowired
	DataSource datasource;
	
	

	public void generateReport() {
		try
		{
			JasperDesign jasperdesign=JRXmlLoader.load("E:/javaprojects/ERPV2.0/ERPV2.0/reports/employees.jrxml");
			
			JasperReport jasperreport=JasperCompileManager.compileReport(jasperdesign);
			
			JasperPrint jasperprint=JasperFillManager.fillReport(jasperreport,null ,datasource.getConnection());
			
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
	
	
	
}
