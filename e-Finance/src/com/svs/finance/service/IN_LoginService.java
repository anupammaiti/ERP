package com.svs.finance.service;

import java.util.List;

public interface IN_LoginService {
	
	public boolean loginCheckup(String username,String password);
	public List getLoginDetails(String username,String password);
	public boolean updatePassword(String username,String password,String companyname);
	

}
