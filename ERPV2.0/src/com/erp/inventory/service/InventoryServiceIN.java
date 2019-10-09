package com.erp.inventory.service;

import java.util.List;

import com.erp.inventory.bean.InventoryReportBean;
import com.erp.inventory.bean.OutOfStockNoticeBean;
import com.erp.inventory.bean.PettyCashVocherBean;
import com.erp.inventory.bean.PettyCastBean;
import com.erp.inventory.bean.PhysicalInventoryCount;
import com.erp.inventory.bean.PurchaseRequisitionBean;

public interface InventoryServiceIN {

	public void createPurchaseRequisition(PurchaseRequisitionBean purchesreq); 
	public void createInventroyReport(InventoryReportBean invreport) ;
	public void createOutOfStock(OutOfStockNoticeBean outofstock);
	public void createPhysicalInventoryCount(PhysicalInventoryCount physicalinventorycount);
	public void createPettyCashJournal(PettyCastBean ptbean);
	public void createPettyCashVocher(PettyCashVocherBean pettycashvocher);
	public List PurchaseReport();
	public List InventoryReport();
	public List OutOfStockReport();
	public List PhysicalInventoryCount();
	public List PettyCashJournal();
	public List StockDetails();
	
	public int generatePurchaseRequisitionId();
	
}
