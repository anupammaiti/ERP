package com.svs.finance.dao;

import java.util.List;

import com.svs.finance.bean.CompanyPaySlipBean;

public interface IN_CompanyPaySlipDAO {
	
	public boolean generateCompanyPaySlip(CompanyPaySlipBean companypayslip);
	public List<CompanyPaySlipBean> viewCompanyPaySlipByCollegeName(String compname);

}
