package com.erp.finance.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.erp.finance.bean.AgingAccountBean;
import com.erp.finance.bean.AgingAccountPayble;
import com.erp.finance.bean.AutoExpencesesTravelBean;
import com.erp.finance.bean.CashDisbursmentJournalBean;
import com.erp.finance.bean.CashReciptJournalBean;
import com.erp.finance.bean.CompanyPaySlipBean;
import com.erp.finance.bean.CurrentAssertsBean;
import com.erp.finance.bean.DailyCashReportBean;
import com.erp.finance.bean.EntertainmentExpencesesBean;
import com.erp.finance.bean.FinalPaySlipBean;
import com.erp.finance.bean.FoodExcepensesBean;
import com.erp.finance.bean.GroupDetailsBean;
import com.erp.finance.bean.Groups;
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
import com.erp.finance.bean.VocherTyopeBean;
import com.erp.finance.bean.VocherTypeBean;
import com.erp.finance.bean.WeeklyExpencesesReportBean;
import com.erp.finance.dao.AgingAccountDAO;
import com.erp.finance.dao.AgingAccountPayableDAO;
import com.erp.finance.dao.AutoExpencesesTravelDAO;
import com.erp.finance.dao.CashDisburmentJournalDAO;
import com.erp.finance.dao.CashReciptJournalDAO;
import com.erp.finance.dao.CompanyPaySlipDAO;
import com.erp.finance.dao.CurrentAssertsDAO;
import com.erp.finance.dao.DailyCashReportDAO;
import com.erp.finance.dao.EntertainmentExpencesesDAO;
import com.erp.finance.dao.FinalPaySlipDAO;
import com.erp.finance.dao.FoodExpensesDAO;
import com.erp.finance.dao.GroupDetailsDAO;
import com.erp.finance.dao.GroupsDAO;
import com.erp.finance.dao.HotelExpencesesDAO;
import com.erp.finance.dao.JournalDAO;
import com.erp.finance.dao.LedgerDAO;
import com.erp.finance.dao.MeasurmentDAO;
import com.erp.finance.dao.MilslaniousExpencesesDAO;
import com.erp.finance.dao.NonTradingExpenceseDAO;
import com.erp.finance.dao.PhoneBillExpencesesDAO;
import com.erp.finance.dao.StockGroupDAO;
import com.erp.finance.dao.StockItemsDAO;
import com.erp.finance.dao.TempPaySlipDAO;
import com.erp.finance.dao.VocherContraDAO;
import com.erp.finance.dao.VocherDAO;
import com.erp.finance.dao.VocherPaymentDAO;
import com.erp.finance.dao.VocherPurchaseDAO;
import com.erp.finance.dao.VocherPurchaseReturnDAO;
import com.erp.finance.dao.VocherReciptDAO;
import com.erp.finance.dao.VocherSalesDAO;
import com.erp.finance.dao.VocherSalesReturnDAO;
import com.erp.finance.dao.VocherTypeDAO;
import com.erp.finance.dao.WeeklyExpencesesDAO;
import com.erp.helper.PayrollHelper;
import com.erp.util.DBConnection;
import com.erp.util.DateUtil;

public class FinanceServiceImpl implements FinanceServiceIN {

	
	
	@Autowired
	AgingAccountDAO agingaccountdao;
	
	@Autowired CompanyPaySlipDAO companypayslipdao;
	@Autowired PayrollHelper payrollhelper;
	@Autowired GroupDetailsDAO groupdetailsdao;
	@Autowired GroupsDAO groupsdao;
	@Autowired VocherDAO vocherdao;
	@Autowired StockGroupDAO stockgroupdao;
	@Autowired StockItemsDAO stockitemsdao;
	@Autowired MeasurmentDAO unitmeasurementdao;
	@Autowired VocherTypeDAO vochertypedao;
	@Autowired VocherReciptDAO vocherreciptdao;
	@Autowired VocherContraDAO vochercontradao;
	@Autowired VocherPaymentDAO vocherpaymentdao;
	@Autowired JournalDAO journaldao;
	@Autowired VocherPurchaseDAO purchasedao;
	@Autowired VocherSalesDAO vochersalesdao;
	@Autowired VocherPurchaseReturnDAO vocherpurchasedao;
	@Autowired VocherSalesReturnDAO vochersalesreturndao;
	@Autowired DBConnection dbconnection;  
	@Autowired DateUtil dateutil;
	@Autowired TempPaySlipDAO temppayslipdao;
	@Autowired FinalPaySlipDAO finalpayslipdao;
	@Autowired AgingAccountPayableDAO aapayabledao;
	@Autowired CashDisburmentJournalDAO cashdisbursmentdao;
	@Autowired CashReciptJournalDAO cashreciptjournaldao;
	@Autowired DailyCashReportDAO dailycashreportdao;
	@Autowired AutoExpencesesTravelDAO autoexpencesestraveldao;
	@Autowired PhoneBillExpencesesDAO phonebillexpencesedao;
	@Autowired FoodExpensesDAO foodexpensesdao;
	@Autowired HotelExpencesesDAO hotelexpencesedao;
	@Autowired EntertainmentExpencesesDAO entertainmentexpencesesdao;
	@Autowired MilslaniousExpencesesDAO mislaniousexpencesesdao;
	@Autowired NonTradingExpenceseDAO nontradingexpencesesdao;
	@Autowired WeeklyExpencesesDAO weeklyexpencesesdao;
	@Autowired LedgerDAO legerdao;
	@Autowired CurrentAssertsDAO currentassertsdao;
	
	private CurrentAssertsBean currentasserts=new CurrentAssertsBean();
	
	
	@Override public List createBalanceSheet() { // TODO Auto-generated method stub
		return null;
	}

	@Override public List createProfitAndLoss() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override public void generateCompanyPaySlip(CompanyPaySlipBean companypayslip) {
		// TODO Auto-generated method stub
		
		companypayslip.setGendate(dateutil.generateDate());
		companypayslipdao.createCompanyPaySlip(companypayslip);
	}

	@Override public void generateAgingAccount(AgingAccountBean agingaccount) {
		// TODO Auto-generated method stub
		agingaccount.setGendate(dateutil.generateDate());
		agingaccountdao.generateAgingAccount(agingaccount);
	}

	@Override public void generatePaySlip(String empno) {
		// TODO Auto-generated method stub
		payrollhelper.generatePaySlip(empno);
	}

	@Override public void generateGroups(GroupDetailsBean groupdetails) {
		// TODO Auto-generated method stub
		boolean status=false;
		Groups groups=new Groups();
		groupdetails.setGetdate(dateutil.generateDate());
		status=groupsdao.getGroupsByName(groupdetails.getName());
		String groupname=groupdetails.getName();
		groupdetailsdao.generateGroups(groupdetails);
		if(status){
			groups.setGroupname(groupname);
			groupsdao.generateGroups(groups);
		}
		
	}

	@Override public void generateLedger(LedgerBean ledger) {
		// TODO Auto-generated method stub
		legerdao.generateLedger(ledger);
	}

	@Override public void generateVocherType(VocherDetailsBean vocherdetails) {
		// TODO Auto-generated method stub
		boolean status;
		VocherTypeBean vtypebean=new VocherTypeBean();
		vocherdetails.setGetdate(dateutil.generateDate());
		
		vochertypedao.generateVocherType(vocherdetails);
		status=vocherdao.getVocherByName(vocherdetails.getName());
		
		if(status){
			vtypebean.setVochername(vocherdetails.getName());
			vocherdao.generateVocher(vtypebean);	
		}
		
	}

	@Override public List getGroups() {
		// TODO Auto-generated method stub
			return groupdetailsdao.getGroups();
	}

	@Override public List getLedgers() {
		// TODO Auto-generated method stub
		return legerdao.viewLedger();
	}

	@Override public List getVochers() {
		// TODO Auto-generated method stub
		return vochertypedao.getVocherTypes();
	}

	@Override public void generateStockGroup(StockGroupBean stockgroup) {
		// TODO Auto-generated method stub
		stockgroup.setGetdate(dateutil.generateDate());
		stockgroupdao.generateStockGroup(stockgroup);
	}

	@Override public void generateStockItems(StockItemsBean stockitem) {
		// TODO Auto-generated method stub
		stockitemsdao.generateStockItems(stockitem);
	}

	@Override public void generateUnitMeasures(MeasuresBean unitmeasurment) {
		// TODO Auto-generated method stub
		
		unitmeasurementdao.generateMesurment(unitmeasurment);
	}

	

	@Override public void generateVocherRecipt(RecieptBean recipt) {
		// TODO Auto-generated method stub
		 boolean status=false;
		 String under=null;
		recipt.setGendate(dateutil.generateDate());
		
		
		System.out.println("************************************Ledger***********************************************");
		
		
		
//		LedgerData Conformation
		
		
		under=legerdao.viewByLedgerName(recipt.getAccount());
		System.out.println("Under is:"+under);
		//Current Assects
		currentasserts.setLedgername(recipt.getAccount());
		currentasserts.setUnder(under);
		currentasserts.setBalance(recipt.getAmount());
		currentasserts.setGendate(dateutil.generateDate());
		
		status=currentassertsdao.viewByLedgerName(recipt.getAccount());
		
		if(status) {
			currentassertsdao.generateCurrentAsserts(currentasserts);	
		}
		else
		{
			double amount1= Double.parseDouble(currentasserts.getBalance());
			System.out.println("Under"+currentasserts.getUnder());
			double ammount=currentassertsdao.getAmountByLedgerName(currentasserts.getUnder());
			ammount=ammount+amount1;
			currentassertsdao.updateCurrentAsserts(currentasserts.getLedgername(), Double.toString(ammount));
		}
		vocherreciptdao.generateVocherRecipt(recipt);
	}
	
	

	@Override public void generateVocherContra(VocherContraBean vochercontra) {
		// TODO Auto-generated method stub
		boolean status=false;
		 String under=null;
		
		under=legerdao.viewByLedgerName(vochercontra.getUnder());
		System.out.println("Under"+under);
		
		//Current Assects
		currentasserts.setLedgername(vochercontra.getAccount());
		currentasserts.setUnder(under);
		currentasserts.setBalance(vochercontra.getAmmount());
		currentasserts.setGendate(dateutil.generateDate());
		
		status=currentassertsdao.viewByLedgerName(vochercontra.getAccount());
		System.out.println("Status"+status);
		
		if(status) {
			currentassertsdao.generateCurrentAsserts(currentasserts);	
		}
		else
		{
			double amount1= Double.parseDouble(currentasserts.getBalance());
			double ammount=currentassertsdao.getAmountByLedgerName(currentasserts.getUnder());
			ammount=ammount+amount1;
			currentassertsdao.updateCurrentAsserts(currentasserts.getLedgername(), Double.toString(ammount));
		}
		
		
		vochercontra.setGendate(dateutil.generateDate());
		vochercontradao.generateVocherContra(vochercontra);
	}

	@Override public void generateVocherPayment(VocherPaymentBean vocherpayment) {
		// TODO Auto-generated method stub
		vocherpayment.setGetdate(dateutil.generateDate());
		vocherpaymentdao.generatePayment(vocherpayment);
	}

	@Override public void generateVocherJournal(VocherJournalBean vocherjournal) {
		// TODO Auto-generated method stub
		vocherjournal.setGetdate(dateutil.generateDate());
		journaldao.generateJournla(vocherjournal);
	}

	@Override
	public void generateVocherPurchase(VocherPurchaseBean vochasepurchase) {
		// TODO Auto-generated method stub
		vochasepurchase.setGetdate(dateutil.generateDate());
		purchasedao.generateVocherPurchase(vochasepurchase);
	}

	@Override
	public void generateVocherSales(VocherSalesBean vochersales) {
		// TODO Auto-generated method stub
		vochersales.setGendate(dateutil.generateDate());
		vochersalesdao.generateVocherSales(vochersales);
	}

	@Override
	public void generateVocherPurchaseReturn(
			VocherPurchaseReturnBean vocherpurchasereturn) {
		// TODO Auto-generated method stub
		vocherpurchasereturn.setGendate(dateutil.generateDate());
		vocherpurchasedao.generateVocherPurchaseReturn(vocherpurchasereturn);
	}

	@Override
	public void generateVocherSalesReturn(
			VocherSalesReturnBean vochersalesreturn) {
		// TODO Auto-generated method stub
		vochersalesreturn.setGendate(dateutil.generateDate());
		vochersalesreturndao.generateVocherSalesReturn(vochersalesreturn);
	}

	@Override
	public List getCompanypayslip() {
		// TODO Auto-generated method stub
		return companypayslipdao.getCompanyPaySlip();
	}

	@Override
	public void getDBBackup() {
		// TODO Auto-generated method stub
		System.out.println("Backup Service");
		dbconnection.getBackupDataBase();
	}

	@Override
	public List getPaySlipDetails() {
		// TODO Auto-generated method stub
		return temppayslipdao.getTempPaySlip();
	}

	@Override
	public void generateFinalPaySlip(FinalPaySlipBean fialpayslip) {
		// TODO Auto-generated method stub
		finalpayslipdao.generateFialPaySlip(fialpayslip);
		
		
		
	}

	@Override
	public void generateAgingAccountPayable(AgingAccountPayble aapayable) {
		// TODO Auto-generated method stub
		aapayabledao.generateAgingAccountPayable(aapayable);		
	}

	@Override
	public void generateCashDisbursmentJournal(
			CashDisbursmentJournalBean cashdisburmentjournal) {
		// TODO Auto-generated method stub
		cashdisbursmentdao.generateCashDisbursmentJournal(cashdisburmentjournal);		
	}

	@Override
	public void generateCashReciptJournal(
			CashReciptJournalBean cashreciptjournal) {
		// TODO Auto-generated method stub
		cashreciptjournaldao.generateCashReciptJournal(cashreciptjournal);		
	}

	@Override
	public void generateDailyCashReport(DailyCashReportBean dailycashreport) {
		// TODO Auto-generated method stub
		dailycashreportdao.generateDailyCashReport(dailycashreport);
	}

	@Override
	public void generatedAutoExpencessesTravel(
			AutoExpencesesTravelBean autoexpencesestravel) {
		// TODO Auto-generated method stub
		autoexpencesestraveldao.generateAutoExpencesesTravel(autoexpencesestravel);
	}

	@Override
	public void generatePhoneBillExpenceses(
			PhoneBillExpencesesBean phonebillexpenceses) {
		// TODO Auto-generated method stub
		phonebillexpencesedao.generatePhoneBillExpenceses(phonebillexpenceses);
	}

	@Override
	public void generatedFoodExcepenses(FoodExcepensesBean foodexpenceses) {
		// TODO Auto-generated method stub
		foodexpensesdao.generateFoodExpenses(foodexpenceses);
	}

	@Override
	public void generateHotelExpenceses(HotelExpensesBean hotelexpenceses) {
		// TODO Auto-generated method stub
		hotelexpencesedao.generateHotelExpenceses(hotelexpenceses);
	}

	@Override
	public void generateEntertainmentExpenceses(
			EntertainmentExpencesesBean entertainmentexpenceses) {
		// TODO Auto-generated method stub
		entertainmentexpencesesdao.generateEntertainmentExpenceses(entertainmentexpenceses);	
	}

	@Override
	public void generateMislaniousExpenceses(
			MisleniousExpencesesBean milslaniousexpenceses) {
		// TODO Auto-generated method stub
		mislaniousexpencesesdao.generateMislaniousExpenceses(milslaniousexpenceses);
	}

	@Override
	public void generateNonTradingExpenceses(NonTradingExpencesesBean nontradingexpenceses) {
		// TODO Auto-generated method stub
		nontradingexpencesesdao.generateNonTradingExpenceses(nontradingexpenceses);
	}

	@Override
	public void generateWeeklyExpencesesReport(
			WeeklyExpencesesReportBean weeklyexpenceses) {
		// TODO Auto-generated method stub
		weeklyexpencesesdao.generateWeeklyExpenceses(weeklyexpenceses);
	}

	@Override
	public List getLedgersData() {
		// TODO Auto-generated method stub
		
		return legerdao.viewLedger();
	}

	@Override
	public List getVochersData() {
		// TODO Auto-generated method stub
		return vochertypedao.getVocherTypes();
	}

	@Override
	public List getStockGroups() {
		// TODO Auto-generated method stub
		
		return stockgroupdao.viewStockGroups();
	}

	@Override
	public List getStockItems() {
		// TODO Auto-generated method stub
		return stockitemsdao.viewStockItems();
	}

	@Override
	public List getVocherMeasures() {
		// TODO Auto-generated method stub
		return unitmeasurementdao.viewMesurment();
	}

	

	

}
