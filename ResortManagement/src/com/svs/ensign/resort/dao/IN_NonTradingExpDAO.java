package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.NonTradingExpencesesBean;
import net.sf.json.JSONObject;

public interface IN_NonTradingExpDAO {

	public boolean generateNonTradingExp(NonTradingExpencesesBean nontradingexp);
	public JSONObject viewNonTradingExpByExecutive(String username);
}
