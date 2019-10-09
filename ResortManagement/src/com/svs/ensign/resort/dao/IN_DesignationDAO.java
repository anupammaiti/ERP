package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.DesignationBean;
import net.sf.json.JSONObject;

public interface IN_DesignationDAO {

	public boolean createDesignation(DesignationBean designationbean);
	public boolean updateDesignation();
	public boolean deleteDesignation();
	public JSONObject displayDesignation();
}
