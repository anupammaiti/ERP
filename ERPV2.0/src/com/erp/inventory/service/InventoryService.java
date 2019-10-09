package com.erp.inventory.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.erp.inventory.bean.InventoryReportBean;
import com.erp.inventory.bean.OutOfStockNoticeBean;
import com.erp.inventory.bean.PettyCashVocherBean;
import com.erp.inventory.bean.PettyCastBean;
import com.erp.inventory.bean.PhysicalInventoryCount;
import com.erp.inventory.bean.PurchaseRequisitionBean;
import com.erp.inventory.dao.InventoryReportDAO;
import com.erp.inventory.dao.OutOfStockDAO;
import com.erp.inventory.dao.PettyCashJournalDAO;
import com.erp.inventory.dao.PettyCashVocherDAO;
import com.erp.inventory.dao.PhysicalInventoryDAO;
import com.erp.inventory.dao.PurchaseRequisitionDAO;
import com.erp.util.DateUtil;

public class InventoryService implements InventoryServiceIN{

	@Autowired
	PurchaseRequisitionDAO purcreqdao;
	@Autowired
	InventoryReportDAO invrepdao;
	@Autowired
	OutOfStockDAO outstockdao;
	@Autowired
	PhysicalInventoryDAO physcialinventorydao;
	@Autowired
	PettyCashJournalDAO pettycashjournaldao;
	@Autowired
	DateUtil dateutil;
	@Autowired
	PettyCashVocherDAO pettycashvocherdao;
	
	private List purchasereport;
	private List inventoryreport;
	private List outofstockreport;
	private List physicalinventoryreport;
	private List pettycashjournalreport;
	
	@Override
	public void createPurchaseRequisition(PurchaseRequisitionBean purchesreq) {
		purchesreq.setDate(dateutil.generateDate());
		purchesreq.setPartyname("Delta Soft Solutions");
		purchesreq.setQuantityno("5");
		purcreqdao.createPurchaseRequisition(purchesreq);
	}
@Override
	public void createInventroyReport(InventoryReportBean invreport) {
		invrepdao.createInventoryReport(invreport);
	}
@Override
	public void createOutOfStock(OutOfStockNoticeBean outofstock){
		outstockdao.createOutOfStock(outofstock);
	}
@Override
	public void createPhysicalInventoryCount(PhysicalInventoryCount physicalinventorycount){
		
		physcialinventorydao.createPhysicalinventoryCount(physicalinventorycount);
	}
@Override
	public void createPettyCashJournal(PettyCastBean ptbean){
		pettycashjournaldao.createPettyCashJournal(ptbean);		
	}
@Override
	public List PurchaseReport(){
	
	purchasereport=purcreqdao.viewPurchaseReport();
	System.out.println("Size of list in service \t"+purchasereport.size());
	return purchasereport;
	}

	@Override
	public List InventoryReport() {
		// TODO Auto-generated method stub
		inventoryreport=invrepdao.viewInventoryReport();
		return inventoryreport;
	}

	@Override
	public List OutOfStockReport() {
		// TODO Auto-generated method stub
		outofstockreport=outstockdao.viewOutOfStock();
		return outofstockreport;
	}

	@Override
	public List PhysicalInventoryCount() {
		// TODO Auto-generated method stub
		physicalinventoryreport=physcialinventorydao.viewPhysicalinventory();
		return physicalinventoryreport;
	}

	@Override
	public List PettyCashJournal() {
		// TODO Auto-generated method stub
		pettycashjournalreport=pettycashjournaldao.viewPettyCashJournal();		
		return pettycashjournalreport;
	}
	@Override
	public List StockDetails() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void createPettyCashVocher(PettyCashVocherBean pettycashvocher) {
		// TODO Auto-generated method stub
		pettycashvocherdao.generatePettyCashVocher(pettycashvocher);
	}
	@Override
	public int generatePurchaseRequisitionId() {
		// TODO Auto-generated method stub
		int purchaseid=0;
		purchaseid=purcreqdao.generatePurchaseRequisitionId();
		System.out.println("Purchase Id"+purchaseid);
		purchaseid=purchaseid+1;
		System.out.println("Purchase Id2\t"+purchaseid);
		return purchaseid;
	}
}
