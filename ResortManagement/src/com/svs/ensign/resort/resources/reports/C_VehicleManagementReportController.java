package com.svs.ensign.resort.resources.reports;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;


@Controller
public class C_VehicleManagementReportController {

	@Autowired
	DataSource ds;
	
	@Value("${logo.folder}")String logofolder;
	String imagename="svs_logo.gif";
	
	
}
