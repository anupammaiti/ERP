package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.LedgerDetailsBean;
import net.sf.json.JSONObject;

public interface IN_LedgerDetailsDAO {
	public boolean createLedgerDetails(LedgerDetailsBean ledgerdetails);
	public boolean viewLedgerDetailsByParentGroup(String under);
	public String viewUnderByUsingLedgerName(String ledgername);
	public JSONObject getLedgerNameListByExecutiveName(String deltby);
}
