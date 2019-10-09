package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.ClosingStockBean;
import net.sf.json.JSONObject;

public interface IN_ClosingStockDAO {
	
	public boolean geneateClosingStock(ClosingStockBean closingstock);
	public boolean updateClosingStock(String quantity,String rate,String balance,String itemname);
	public boolean isAvilable(String ledgername);
	public JSONObject viewCloseStockItems(String itemname);
	
	

}
