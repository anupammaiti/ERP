package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.ReportingToBean;
import net.sf.json.JSONObject;

public interface IN_ReportingToDAO {
	public boolean createReportingTo(ReportingToBean reportingto);
	public JSONObject viewReportingTo();

}
