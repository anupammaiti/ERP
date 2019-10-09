package com.svs.finance.dao;

import com.svs.finance.bean.CurrentAssertsBean;

public interface IN_CurrentAssertDAO {

	public boolean createCurrentAsserts(CurrentAssertsBean currentasserts);
	public boolean updateCurrentAsserts(String ledgername,String balance,String under,String companyname);
	public boolean isAvailable(String ledgername,String under,String companyname);
	public String  viewCurrentAssertsAmount(String under,String ledgername);
	public boolean isAvalable(String ledgername,String login_comp);
	public String viewCurrentAssetsBalance(String ledgername);
	public boolean updateCurrentAssets(String amount,String ledgername,String companyname);
}
