package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.EntertainmentExpencesesBean;
import net.sf.json.JSONObject;

public interface IN_EntertainmentExpDAO {

	public boolean generateEntertainmentExp(EntertainmentExpencesesBean entertainmentexp);
	public JSONObject viewEntertainmentExpByExecutive(String username);
}
