package com.svs.ensign.resort.resources.reports;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;


@Controller
public class C_HumanResourceReportController {

	@Value("${logo.folder}")String logofolder;
	String imagename="svs_logo.gif";
	
}
