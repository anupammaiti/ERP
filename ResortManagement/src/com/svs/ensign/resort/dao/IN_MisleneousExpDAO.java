package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.MisleniousExpencesesBean;
import net.sf.json.JSONObject;

public interface IN_MisleneousExpDAO {
	
	public boolean generateMisleneousExp(MisleniousExpencesesBean misleniousexp);
	public JSONObject viewMisleneouseExpByExecutive(String username);

}
