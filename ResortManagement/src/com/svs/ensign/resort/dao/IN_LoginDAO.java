package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.LoginBean;
import net.sf.json.JSONObject;

public interface IN_LoginDAO {
	public void createLogin(LoginBean loginbean);
	public JSONObject checkLogin(String username,String password);
	public boolean edingLogin(String userName,String oldPassword,String newPassword);
	public boolean passwordCheck(String username,String password);
}
