package com.svs.finance.dao;

import com.svs.finance.bean.CompanyRegistrationBean;

public interface IN_CompanyRegistrationDAO {
	
	public boolean generateCompany(CompanyRegistrationBean companyregistration);
	public boolean viewCompanyIsAvailable(String username,String companyname);
	public boolean updateCompanyLogoPath(String companyname,String path,String filename);
	public boolean updatePassword(String username,String password,String companyname);
	public String viewImageByCompanyName(String companyname);
	
	
}
