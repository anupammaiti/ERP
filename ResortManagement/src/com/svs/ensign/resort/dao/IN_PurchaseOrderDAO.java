package com.svs.ensign.resort.dao;

import java.util.List;

import com.svs.ensign.resort.bean.PurchaseOrderBean;
import net.sf.json.JSONObject;

public interface IN_PurchaseOrderDAO {

	public boolean createPurchaseOrder(PurchaseOrderBean purchaseorder);
	public JSONObject viewPurchaseOrderByExecutive(String username);
	public JSONObject viewPurchaseOrderByManager(String username);
	public JSONObject viewPurchaseOrderByDirector();
	
}
