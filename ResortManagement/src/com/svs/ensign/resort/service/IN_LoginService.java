package com.svs.ensign.resort.service;


import com.svs.ensign.resort.bean.LoginBean;
import net.sf.json.JSONObject;

public interface IN_LoginService {
	public JSONObject checkLogin(String username,String password);
	public boolean changePassword(LoginBean loginbean);
}
