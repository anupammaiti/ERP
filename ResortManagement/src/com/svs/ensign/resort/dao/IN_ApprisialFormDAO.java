package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.ApprisialFormBean;
import net.sf.json.JSONObject;

public interface IN_ApprisialFormDAO {
	
	public boolean createApprisialForm(ApprisialFormBean apprisialform);
	public JSONObject viewApprisialFormByExecutive(String username);
	public JSONObject viewApprisialFormByManager(String username);
	public JSONObject viewApprisalFormByDirector();
}
