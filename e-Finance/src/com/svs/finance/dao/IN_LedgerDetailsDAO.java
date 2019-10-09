package com.svs.finance.dao;

import com.svs.finance.bean.LedgerDetailsBean;

public interface IN_LedgerDetailsDAO {
	public boolean createLedgerDetails(LedgerDetailsBean ledgerdetails);
	public boolean viewLedgerDetailsByParentGroup(String under);
	public String viewUnderByUsingLedgerName(String ledgername);
}
