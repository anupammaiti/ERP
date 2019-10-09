package com.svs.finance.dao;

import java.util.List;

import com.svs.finance.bean.ClosingStockBean;

public interface IN_ClosingStockDAO {
	
	public boolean geneateClosingStock(ClosingStockBean closingstock);
	public boolean updateClosingStock(String quantity,String rate,String balance,String itemname);
	public boolean isAvilable(String ledgername);
	public List viewCloseStockItems(String itemname);
	
	

}
