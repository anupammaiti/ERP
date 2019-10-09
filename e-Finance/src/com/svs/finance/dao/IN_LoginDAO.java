package com.svs.finance.dao;

import java.util.List;

import com.svs.finance.bean.LoginBean;

public interface IN_LoginDAO {
	
	public boolean save(LoginBean loginbean);
	
	public boolean loginCheckUp(String username,String password);
	public List loginDetails(String username,String password);
	public boolean changePassword(String username,String password,String companyname);

}
