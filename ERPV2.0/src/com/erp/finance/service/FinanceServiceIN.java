package com.erp.finance.service;

import java.util.List;

import com.erp.finance.bean.AgingAccountBean;
import com.erp.finance.bean.AgingAccountPayble;
import com.erp.finance.bean.AutoExpencesesTravelBean;
import com.erp.finance.bean.CashDisbursmentJournalBean;
import com.erp.finance.bean.CashReciptJournalBean;
import com.erp.finance.bean.CompanyPaySlipBean;
import com.erp.finance.bean.DailyCashReportBean;
import com.erp.finance.bean.EntertainmentExpencesesBean;
import com.erp.finance.bean.FinalPaySlipBean;
import com.erp.finance.bean.FoodExcepensesBean;
import com.erp.finance.bean.GroupDetailsBean;
import com.erp.finance.bean.HotelExpensesBean;
import com.erp.finance.bean.LedgerBean;
import com.erp.finance.bean.MeasuresBean;
import com.erp.finance.bean.MisleniousExpencesesBean;
import com.erp.finance.bean.NonTradingExpencesesBean;
import com.erp.finance.bean.PhoneBillExpencesesBean;
import com.erp.finance.bean.RecieptBean;
import com.erp.finance.bean.StockGroupBean;
import com.erp.finance.bean.StockItemsBean;
import com.erp.finance.bean.VocherContraBean;
import com.erp.finance.bean.VocherDetailsBean;
import com.erp.finance.bean.VocherJournalBean;
import com.erp.finance.bean.VocherPaymentBean;
import com.erp.finance.bean.VocherPurchaseBean;
import com.erp.finance.bean.VocherPurchaseReturnBean;
import com.erp.finance.bean.VocherSalesBean;
import com.erp.finance.bean.VocherSalesReturnBean;
import com.erp.finance.bean.VocherTypeBean;
import com.erp.finance.bean.WeeklyExpencesesReportBean;

public interface FinanceServiceIN {
	
	public List createBalanceSheet();
	public List createProfitAndLoss();
	
	//Account Package
	public void generateGroups(GroupDetailsBean groupdetails);
	public void generateLedger(LedgerBean ledger);
	
	public void generateStockGroup(StockGroupBean stockgroup);
	public void generateStockItems(StockItemsBean stockitem);
	public void generateUnitMeasures(MeasuresBean unitmeasurment);
	public void generateVocherType(VocherDetailsBean vochertype);
	public void generateVocherRecipt(RecieptBean recipt);
	public void generateVocherContra(VocherContraBean vochercontra);
	public void generateVocherPayment(VocherPaymentBean vocherpayment);
	public void generateVocherJournal(VocherJournalBean vocherjournal);
	public void generateVocherPurchase(VocherPurchaseBean vochasepurchase);
	public void generateVocherSales(VocherSalesBean vochersales);
	public void generateVocherPurchaseReturn(VocherPurchaseReturnBean vocherpurchasereturn);
	public void generateVocherSalesReturn(VocherSalesReturnBean vochersalesreturn);
	public void getDBBackup();
	public void generateAgingAccountPayable(AgingAccountPayble aapayable);
	public void generateCashDisbursmentJournal(CashDisbursmentJournalBean cashdisburmentjournal);
	public void generateCashReciptJournal(CashReciptJournalBean cashreciptjournal);
	public void generateDailyCashReport(DailyCashReportBean dailycashreport);
	public void generatedAutoExpencessesTravel(AutoExpencesesTravelBean autoexpencesestravel);
	public void generatePhoneBillExpenceses(PhoneBillExpencesesBean phonebillexpenceses);
	public void generatedFoodExcepenses(FoodExcepensesBean foodexpenceses);
	public void generateHotelExpenceses(HotelExpensesBean hotelexpenceses);
	public void generateEntertainmentExpenceses(EntertainmentExpencesesBean entertainmentexpenceses);
	public void generateMislaniousExpenceses(MisleniousExpencesesBean milslaniousexpenceses);
	public void generateNonTradingExpenceses(NonTradingExpencesesBean nontradingexpenceses);
	public void generateWeeklyExpencesesReport(WeeklyExpencesesReportBean weeklyexpenceses);
	
	
	public List getLedgersData();
	public List getVochersData();
	public List getStockGroups();
	public List getStockItems();
	public List getVocherMeasures();
	
	
	
	public List getGroups();
	public List getLedgers();
	public List getVochers();
	
	
	//Payroll
	public void generateCompanyPaySlip(CompanyPaySlipBean companypayslip);
	public void generateAgingAccount(AgingAccountBean agingaccount);
	public void generatePaySlip(String empno);
	public void generateFinalPaySlip(FinalPaySlipBean fialpayslip);
	
	public List getCompanypayslip();
	public List getPaySlipDetails();
	
}
