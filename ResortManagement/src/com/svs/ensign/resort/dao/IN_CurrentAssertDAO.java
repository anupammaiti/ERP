package com.svs.ensign.resort.dao;

import com.svs.ensign.resort.bean.CurrentAssertsBean;

public interface IN_CurrentAssertDAO {

	public boolean createCurrentAsserts(CurrentAssertsBean currentasserts);
	public boolean updateCurrentAsserts(String ledgername,String balance,String under);
	public boolean isAvailable(String ledgername,String under);
	public String  viewCurrentAssertsAmount(String under,String ledgername);
	public boolean isAvalable(String ledgername);
	public String viewCurrentAssetsBalance(String ledgername);
	public boolean updateCurrentAssets(String amount,String ledgername);
}
