package com.svs.ensign.resort.service.impl;

import java.util.List;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.svs.ensign.resort.bean.AggingaccountpaybleBean;
import com.svs.ensign.resort.bean.AggingaccountreceivableBean;
import com.svs.ensign.resort.bean.AutoExpencesesTravelBean;
import com.svs.ensign.resort.bean.CashdisbursementsjournalBean;
import com.svs.ensign.resort.bean.CashreceiptsjournalBean;
import com.svs.ensign.resort.bean.ClosingStockBean;
import com.svs.ensign.resort.bean.CurrentAssertsBean;
import com.svs.ensign.resort.bean.DailycashreportBean;
import com.svs.ensign.resort.bean.EntertainmentExpencesesBean;
import com.svs.ensign.resort.bean.FinanceCustomerBean;
import com.svs.ensign.resort.bean.FoodExcepensesBean;
import com.svs.ensign.resort.bean.GroupDetailsBean;
import com.svs.ensign.resort.bean.GroupMappingBean;
import com.svs.ensign.resort.bean.Groups;
import com.svs.ensign.resort.bean.HotelExpensesBean;
import com.svs.ensign.resort.bean.LedgerDetailsBean;
import com.svs.ensign.resort.bean.MeasuresBean;
import com.svs.ensign.resort.bean.MisleniousExpencesesBean;
import com.svs.ensign.resort.bean.NonTradingExpencesesBean;
import com.svs.ensign.resort.bean.PettycashjornalBean;
import com.svs.ensign.resort.bean.PettycashvoucherBean;
import com.svs.ensign.resort.bean.PhoneBillExpencesesBean;
import com.svs.ensign.resort.bean.StockGroupBean;
import com.svs.ensign.resort.bean.StockGroupDetailsBean;
import com.svs.ensign.resort.bean.StockItemBean;
import com.svs.ensign.resort.bean.VocherContraBean;
import com.svs.ensign.resort.bean.VocherDetailsBean;
import com.svs.ensign.resort.bean.VocherJournalBean;
import com.svs.ensign.resort.bean.VocherPaymentBean;
import com.svs.ensign.resort.bean.VocherPurchaseBean;
import com.svs.ensign.resort.bean.VocherPurchaseReturnBean;
import com.svs.ensign.resort.bean.VocherSalesBean;
import com.svs.ensign.resort.bean.VocherSalesReturnBean;
import com.svs.ensign.resort.bean.VoucherRecieptBean;
import com.svs.ensign.resort.dao.IN_AgingOfAccountPayableDAO;
import com.svs.ensign.resort.dao.IN_AgingOfAccountRecivableDAO;
import com.svs.ensign.resort.dao.IN_ClosingStockDAO;
import com.svs.ensign.resort.dao.IN_CurrentAssertDAO;
import com.svs.ensign.resort.dao.IN_DailyAutoExpensesTravelDAO;
import com.svs.ensign.resort.dao.IN_EntertainmentExpDAO;
import com.svs.ensign.resort.dao.IN_FinanceCustomerDAO;
import com.svs.ensign.resort.dao.IN_FoodExpDAO;
import com.svs.ensign.resort.dao.IN_GroupDetailsDAO;
import com.svs.ensign.resort.dao.IN_GroupMappingDAO;
import com.svs.ensign.resort.dao.IN_GroupsDAO;
import com.svs.ensign.resort.dao.IN_HotelExpDAO;
import com.svs.ensign.resort.dao.IN_LedgerDetailsDAO;
import com.svs.ensign.resort.dao.IN_MeasuresDAO;
import com.svs.ensign.resort.dao.IN_MisleneousExpDAO;
import com.svs.ensign.resort.dao.IN_NonTradingExpDAO;
import com.svs.ensign.resort.dao.IN_PhoneBillExpensesDAO;
import com.svs.ensign.resort.dao.IN_StockGroup;
import com.svs.ensign.resort.dao.IN_StockGroupDAO;
import com.svs.ensign.resort.dao.IN_StockItemDAO;
import com.svs.ensign.resort.dao.IN_VoucherContraDAO;
import com.svs.ensign.resort.dao.IN_VoucherDetailsDAO;
import com.svs.ensign.resort.dao.IN_VoucherJournalDAO;
import com.svs.ensign.resort.dao.IN_VoucherPaymentDAO;
import com.svs.ensign.resort.dao.IN_VoucherPurchaseReturnsDAO;
import com.svs.ensign.resort.dao.IN_VoucherPurchasesDAO;
import com.svs.ensign.resort.dao.IN_VoucherRecieptDAO;
import com.svs.ensign.resort.dao.IN_VoucherSalesDAO;
import com.svs.ensign.resort.dao.IN_VoucherSalesReturnDAO;
import com.svs.ensign.resort.helper.C_FinanceHelperController;
import com.svs.ensign.resort.service.IN_FinanceService;
import com.svs.ensign.resort.util.C_Util_Date;
import com.svs.ensign.resort.util.ConvertStackTracetoString;

@Service
public class C_FinanceServiceImpl implements IN_FinanceService {

	@Autowired	IN_FinanceCustomerDAO in_financecustdao;
	@Autowired	C_Util_Date util_date;
	@Autowired	IN_DailyAutoExpensesTravelDAO in_dailyautoexpensetravelsdao;
	@Autowired 	IN_LedgerDetailsDAO in_ledgerdetailsdao;
	@Autowired	IN_VoucherDetailsDAO in_voucherdetailsdao;
	@Autowired IN_GroupDetailsDAO in_groupdetailsdao;
	@Autowired IN_GroupsDAO in_groupdao;
	@Autowired IN_VoucherPaymentDAO in_voucherpaymentdao;
	@Autowired IN_PhoneBillExpensesDAO in_phonebillexpdao;
	@Autowired IN_FoodExpDAO in_foodexpdao;
	@Autowired IN_HotelExpDAO in_hotelexpdao;
	@Autowired IN_EntertainmentExpDAO in_entertainmentdao;
	@Autowired IN_MisleneousExpDAO in_misleneousdao;
	@Autowired IN_GroupMappingDAO in_groupmappindao;
	private boolean insertorupdate=false;
	private boolean ISAVAILABLE=false; 
	CurrentAssertsBean currentasserts=new CurrentAssertsBean();
	@Autowired C_FinanceHelperController financehelper;
	@Autowired IN_CurrentAssertDAO currentassertsdao;
	@Autowired IN_VoucherRecieptDAO in_voucherreciptdao;
	@Autowired IN_StockGroupDAO in_stockgroupdao;
	@Autowired IN_StockItemDAO in_stockitemdao;
	@Autowired IN_VoucherJournalDAO in_voucherjournaldao;
	@Autowired IN_MeasuresDAO in_measuredao;
	@Autowired IN_VoucherContraDAO in_vouchercontradao;
	@Autowired C_FinanceHelperController hlp_fin;
	@Autowired IN_VoucherPurchasesDAO in_voucherpurchasedao;
	@Autowired IN_ClosingStockDAO in_closingstockdao;
	@Autowired IN_StockGroup in_stockgroup;
	@Autowired IN_VoucherSalesDAO in_vouchersalesdao;
	@Autowired IN_VoucherSalesReturnDAO in_vouchersalesreturndao;
	@Autowired IN_VoucherPurchaseReturnsDAO in_voucherpurchasereturndao;
	@Autowired IN_AgingOfAccountPayableDAO in_agingofaccountpauabledao;
	@Autowired IN_AgingOfAccountRecivableDAO in_agingofaccountrecivabledao;
	@Autowired IN_DailyAutoExpensesTravelDAO in_autoexp;
	@Autowired IN_NonTradingExpDAO in_nontradingdao;
	
	
	@Autowired
	ConvertStackTracetoString util_stos;
	final static Logger logger = Logger.getLogger(C_FinanceServiceImpl.class.getName());
	
	private List closingstocklist;
	int inst=0;	
	
	@Override
	public boolean createFinanceCustomer(FinanceCustomerBean fncust) {
		// TODO Auto-generated method stub
		String status="NEW";
		fncust.setGendate(C_Util_Date.generateDate());
		fncust.setStatus(status);
		
		return in_financecustdao.createFinanceCustomer(fncust);
	}


	@Override
	public JSONObject viewFinanceCustomerByExecutorID(String username) {
		// TODO Auto-generated method stub
	return in_financecustdao.viewCustomerByExecutiveID(username);
	}


	@Override
	public JSONObject viewCustomerInstallmentsByAdmin() {
		// TODO Auto-generated method stub
		
		return in_financecustdao.viewCustomerInstallmentsByAdmin();
		
	}


	@Override
	public JSONObject viewFnCustomerInstallmentsByManagerID(String username) {
		// TODO Auto-generated method stub
		return in_financecustdao.viewCustomerInstallmentsByManagerID(username);
	}

	//Daily Auto Expenses Travel.
	@Override
	public boolean createDailyAutoExpenses(
			AutoExpencesesTravelBean autoexpensestravel) {
		// TODO Auto-generated method stub
		autoexpensestravel.setGendate(C_Util_Date.generateDate());
		
		return in_dailyautoexpensetravelsdao.createDailyAutoExpenses(autoexpensestravel);
	}


	@Override
	public boolean createLedgerDetails(LedgerDetailsBean ledgerdetails) {
		// TODO Auto-generated method stub
		
		ledgerdetails.setGetdate(C_Util_Date.generateDate());
		
		return in_ledgerdetailsdao.createLedgerDetails(ledgerdetails);
	}


	@Override
	public boolean createVoucherDetails(VocherDetailsBean voucherdetailsbean) {
		// TODO Auto-generated method stub
		voucherdetailsbean.setGetdate(C_Util_Date.generateDate());
		return in_voucherdetailsdao.createVoucherDetails(voucherdetailsbean);
	}


	@Override
	public boolean createGroupDetails(GroupDetailsBean groupdetails) {
		// TODO Auto-generated method stub
		Groups groups=new Groups();
		groupdetails.setGetdate(C_Util_Date.generateDate());
		insertorupdate=in_groupdetailsdao.createGroupDetails(groupdetails);
		String group=groupdetails.getName();
		
		if(in_groupdao.isAvailable(group)){
			//System.out.println("Group is Available");
		}else{
			
			groups.setGroupname(groupdetails.getName());
			in_groupdao.generateGroups(groups);	
		}
		
		GroupMappingBean groupmapping=new GroupMappingBean();
		
		String grouporsubgroup=groupdetails.getGrpbeh();
		//System.out.println("Group Or Sub Group\t"+grouporsubgroup);
		switch(grouporsubgroup){
		case "Yes":{
			
			ISAVAILABLE=in_groupmappindao.isAvailable(groupdetails.getName());
			if(ISAVAILABLE){
			//System.out.println("Sub Group Is Available");	
			}else{
			
				groupmapping.setPrimarygroup(groupdetails.getUnder());
				groupmapping.setSubgroup(groupdetails.getName());
				in_groupmappindao.createGroupMapping(groupmapping);	
			}
			break;
					}
		case "No":{
			
			groupmapping.setPrimarygroup(groupdetails.getName());
			groupmapping.setSubgroup(groupdetails.getName());
			in_groupmappindao.createGroupMapping(groupmapping);	
				  }
		break;
		}
		
		
		return insertorupdate;
	}


	@Override
	public boolean createVoucherPayment(VocherPaymentBean voucherpayment) {
		// TODO Auto-generated method stub
		Double amount1;
		Double amount2;
		voucherpayment.setGetdate(C_Util_Date.generateDate());
		voucherpayment.setVouchertype("Payment");
		insertorupdate=in_voucherpaymentdao.generateVoucherPayment(voucherpayment);
		
		//financehelper.gettingParentGroup(voucherpayment.getParticulars());
		
		if(voucherpayment.getCurrentbalance().equals("")){
			amount1=0.0;
		}else{
			 amount1=Double.parseDouble(voucherpayment.getCurrentbalance());
		}
		if(voucherpayment.getCurrentbalance().equals("")){
			amount2=0.0;
		}else{
			amount2=Double.parseDouble(voucherpayment.getCurrentbalance1());	
		}
		
		
		
		Double balance=Double.parseDouble(voucherpayment.getAmount());
		amount1=balance+amount1;//Balance For Amount1.
		//amount2=amount2-balance;//Balance For Amount2.
		//Integer presentamount=amount+ Integer.parseInt(vouchercontra.getAmmount());
		////System.out.println("Present Amount\t"+presentamount);
		//System.out.println("Under\t"+voucherpayment.getUnder());
		//System.out.println("Amount1\t"+amount1);
		//System.out.println("Particulars\t"+voucherpayment.getParticulars());
		//System.out.println("Amount2\t"+amount2);
		String presentamount1=amount1.toString();
		String presentamount2= "";//amount2.toString();
		
		//System.out.println("Parent Group\t"+financehelper.gettingParentGroup(voucherpayment.getParticulars()));
		
		if(currentassertsdao.isAvailable(voucherpayment.getUnder(), financehelper.gettingParentGroup(voucherpayment.getUnder()))){
			//System.out.println("Current Assert Account is Available"+voucherpayment.getCurrentbalance());
			//int amount=Integer.parseInt(currentassertsdao.viewCurrentAssertsAmount(financehelper.gettingParentGroup(vouchercontra.getParticular()), vouchercontra.getParticular()));
			
			
			
			currentassertsdao.updateCurrentAsserts(voucherpayment.getUnder(), presentamount2, financehelper.gettingParentGroup(voucherpayment.getUnder()));
			
			//System.out.println("Amount Updated!");
			}else{
			//System.out.println("Current Assert Account Not Available");
			currentasserts.setLedgername(voucherpayment.getUnder());
			//System.out.println("Ledger Name\t"+voucherpayment.getParticulars());
			//System.out.println(financehelper.gettingParentGroup(voucherpayment.getUnder()));
			currentasserts.setUnder(financehelper.gettingParentGroup(voucherpayment.getUnder()));
			currentasserts.setBalance(presentamount2);
			
			currentassertsdao.createCurrentAsserts(currentasserts);
		}	
		
		
		if(currentassertsdao.isAvailable(voucherpayment.getParticulars(), financehelper.gettingParentGroup(voucherpayment.getParticulars()) )){
			//System.out.println("Current Assert Account is Available"+voucherpayment.getCurrentbalance());
			//int amount=Integer.parseInt(currentassertsdao.viewCurrentAssertsAmount(financehelper.gettingParentGroup(vouchercontra.getParticular()), vouchercontra.getParticular()));
			currentassertsdao.updateCurrentAsserts(voucherpayment.getParticulars(), presentamount1, financehelper.gettingParentGroup(voucherpayment.getParticulars()));
			//System.out.println("Amount Updated!");
			}else{
			//System.out.println("Current Assert Account Not Available");
			currentasserts.setLedgername(voucherpayment.getParticulars());
			//System.out.println("Ledger Name\t"+voucherpayment.getParticulars());
			//System.out.println(financehelper.gettingParentGroup(voucherpayment.getParticulars()));
			currentasserts.setUnder(financehelper.gettingParentGroup(voucherpayment.getParticulars()));
			currentasserts.setBalance(voucherpayment.getAmount());
			
			currentassertsdao.createCurrentAsserts(currentasserts);
		}		
			
		return insertorupdate;
	}


	@Override
	public boolean generatePhoneBillDailyExpenses(
			PhoneBillExpencesesBean phonebillexpenses) {
		// TODO Auto-generated method stub
		phonebillexpenses.setGendate(C_Util_Date.generateDate());
		return in_phonebillexpdao.generatePhoneBillExpenses(phonebillexpenses);
	}


	@Override
	public boolean geneateFoodBillExp(FoodExcepensesBean foodexpen) {
		// TODO Auto-generated method stub
		foodexpen.setGendate(C_Util_Date.generateDate());
		return in_foodexpdao.generateFoodExp(foodexpen);
	}


	@Override
	public boolean geneateHotelExp(HotelExpensesBean hotelexp) {
		// TODO Auto-generated method stub
		//System.out.println("Service ");
		hotelexp.setGendate(C_Util_Date.generateDate());
		return in_hotelexpdao.generateHotelExp(hotelexp);
	}


	@Override
	public boolean generateEntertainmentExp(
			EntertainmentExpencesesBean entertainmentexp) {
		// TODO Auto-generated method stub
		//System.out.println("Entertainment Exp Service");
		entertainmentexp.setGendate(C_Util_Date.generateDate());
		return in_entertainmentdao.generateEntertainmentExp(entertainmentexp);
	}


	@Override
	public boolean generateMisleneousExp(MisleniousExpencesesBean misleneousexp) {
		// TODO Auto-generated method stub
		misleneousexp.setGendate(C_Util_Date.generateDate());
				
		return in_misleneousdao.generateMisleneousExp(misleneousexp);
	}


	@Override
	public boolean generateNonTradingExp(NonTradingExpencesesBean nontradingexp) {
		// TODO Auto-generated method stub
		
		
		
		return in_nontradingdao.generateNonTradingExp(nontradingexp);
	}


	@Override
	public boolean createVoucherReciept(VoucherRecieptBean voucherreciept) {
		// TODO Auto-generated method stub
		voucherreciept.setGendate(C_Util_Date.generateDate());
		insertorupdate=in_voucherreciptdao.createVoucherReciept(voucherreciept);
		Double balance=0.0;
		////System.out.println("Current Assert Account Not Available");
		if(voucherreciept.getCurrentbalance().equals("")){
			balance=0.0;
		}else{
			 balance=Double.parseDouble(voucherreciept.getCurrentbalance());	//Amount for Under or for accounts.
		}
		
		double amount1=0.0;
		double amount3=0.0;
		if(voucherreciept.getAmount().equals("")){
			amount1=0.0;
		}else{
			amount1=Double.parseDouble(voucherreciept.getAmount());//Amount Entered.	
		}
		if(voucherreciept.getCurrentbalance1().equals("")){
			amount3=0.0;
		}else{
			amount3=Double.parseDouble(voucherreciept.getCurrentbalance1());//Amount for particulars.	
		}
		
		
		
		//if(hlp_fin.getReciptIsAvailable())
			//			
		//	balance=balance-amount1;
			
		//asset2=asset2- d;
			//	else
		//asset2=asset2+ d;
		//balance=balance+amount1;
		
	
		
		//System.out.println("Amount2\t"+amount1);//10000
		//System.out.println("Balance\t"+balance);//20000
		//System.out.println("Amount1\t"+amount3);//10000
		//20000+10000 balance
		//10000-10000 amount3
		Double balance2 =0.0;
		Double amount4=0.0;
		balance2=balance+amount1;//Amount for Account.
		amount4=amount3-amount1;//Amount for particulars.
		
		//System.out.println("Balance For Account"+balance);
		//System.out.println("Amount for Particulars"+amount3);
		//String balance2=null;
		//balance2=balance.toString();
		String amount5=balance2.toString();
		String amount6=amount4.toString();
				//amount4=mount3;
		//System.out.println("Amount for Particulars\t"+amount5);
		//System.out.println("Amount for under\t"+amount6);
		if(currentassertsdao.isAvailable(voucherreciept.getAccount(),financehelper.gettingParentGroup(voucherreciept.getAccount()))){
			//System.out.println("*************************************************");
			//System.out.println("Under\t"+voucherreciept.getAccount());
			//System.out.println("Parent Group\t"+financehelper.gettingParentGroup(voucherreciept.getParticulars()));
			//System.out.println("Amount for Under\t"+amount6);
			//System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
			currentassertsdao.updateCurrentAsserts(voucherreciept.getAccount(),amount5 , financehelper.gettingParentGroup(voucherreciept.getAccount()));	
		}else{
			currentasserts.setLedgername(voucherreciept.getAccount());
			currentasserts.setUnder(financehelper.gettingParentGroup(voucherreciept.getAccount()));
			currentasserts.setBalance(amount5);
			
			currentassertsdao.createCurrentAsserts(currentasserts);
		}
		////System.out.println("Parent Group\t"+financehelper.gettingParentGroup(voucherreciept.getParticulars()));
	if(currentassertsdao.isAvailable(voucherreciept.getParticulars(), financehelper.gettingParentGroup(voucherreciept.getParticulars()))){
	//	hlp_fin.getReciptIsAvailable();
		////System.out.println("Recipt is \t"+hlp_fin.getReciptIsAvailable());
		
		////System.out.println("Current Assert Account is Available");
		
			
		
		/*int amount=Integer.parseInt(currentassertsdao.viewCurrentAssertsAmount(financehelper.gettingParentGroup(voucherreciept.getParticulars()), voucherreciept.getParticulars()));
		Integer presentamount=amount+ Integer.parseInt(voucherreciept.getAmount());
		//System.out.println("Present Amount\t"+presentamount);
		String presentamount1=presentamount.toString();*/
		
				
		//System.out.println("Amount for Under \t"+amount3);
		//System.out.println("Amount for Particular\t"+balance2);
		//System.out.println("Under\t"+voucherreciept.getUnder());
		//System.out.println("Amount1\t"+amount1);
		//System.out.println("Particulars\t"+voucherreciept.getParticulars());
		//System.out.println("Amount2\t"+amount3);
		//System.out.println("Parent Groups is\t"+financehelper.gettingParentGroup(voucherreciept.getParticulars()));
		//System.out.println("Ledger Group is\t"+financehelper.gettingParentGroup(voucherreciept.getParticulars()));
		currentassertsdao.updateCurrentAsserts(voucherreciept.getParticulars(),amount6, financehelper.gettingParentGroup(voucherreciept.getParticulars()));
				
		}else{
			
		
		currentasserts.setLedgername(voucherreciept.getParticulars());
		currentasserts.setUnder(financehelper.gettingParentGroup(voucherreciept.getParticulars()));
		currentasserts.setBalance(voucherreciept.getAmount());
		
		currentassertsdao.createCurrentAsserts(currentasserts);
		
	}
			
		
		
		return insertorupdate;
	}


	@Override
	public boolean createStockGroups(StockGroupDetailsBean stockgroup) {
		// TODO Auto-generated method stub
		StockGroupBean stockgroup1=new StockGroupBean();
			stockgroup.setGetdate(C_Util_Date.generateDate());	
			stockgroup1.setGroupname(stockgroup.getName());
			in_stockgroup.generateStockGroup(stockgroup1);
		return in_stockgroupdao.createStockGroup(stockgroup);
	}


	@Override
	public boolean createStockItems(StockItemBean stockitem) {
		// TODO Auto-generated method stub
		stockitem.setGendate(C_Util_Date.generateDate());
		return in_stockitemdao.createStockItem(stockitem);
	}


	@Override
	public boolean createVoucherJournal(VocherJournalBean voucherjournal) {
		// TODO Auto-generated method stub
		String cstock=null;
		int cqty=0;
		String cunits=null;
		double crate=0.0;
		double cbalance=0.0;
		
		double calrate;
		 JSONObject closingstock=new JSONObject();
		 JSONObject totalclosingstock=new JSONObject();
		
		
			voucherjournal.setGetdate(C_Util_Date.generateDate());
			insertorupdate=in_voucherjournaldao.createVoucherJournal(voucherjournal);
			//Voucher Purchases.
			if(hlp_fin.getSundryCreditorsIsAvailable()){
				//Insert data to VoucherPurchases.
				//Check Stock item is avilable or not.
				
				//Voucher Purchase Entry.
				VocherPurchaseBean voucherpurchase=new VocherPurchaseBean();
				
				voucherpurchase.setDate(voucherjournal.getDate());
				voucherpurchase.setPartyaccountname(voucherjournal.getParticularby());
				voucherpurchase.setNameofitems(voucherjournal.getNameofitem());
				voucherpurchase.setQuantity(voucherjournal.getQuantity());
				voucherpurchase.setRate(voucherjournal.getRate());
				voucherpurchase.setAmount(voucherjournal.getAmount());
				voucherpurchase.setUnits(voucherjournal.getUnits());
				voucherpurchase.setNarration(voucherjournal.getNarration());
				voucherpurchase.setPaymentmode("Journal");
				voucherpurchase.setGetdate(voucherjournal.getGetdate());
				//in_voucherpurchasedao.generateVoucherPurchases(voucherpurchase);
				ClosingStockBean closingstok=new ClosingStockBean();
				String a[]=new String[100];
		
				
				
				
				if(in_closingstockdao.isAvilable(voucherjournal.getNameofitem())){//Checking Closing Stock is avilable or not.
		
					
					
					closingstock=hlp_fin.viewClosingStock(voucherjournal.getNameofitem());
					cstock=closingstock.get("itemname").toString();
					cqty=Integer.parseInt(closingstock.get("quantity").toString());
					crate=Double.parseDouble(closingstock.get("rate").toString());
					cbalance=Double.parseDouble(closingstock.get("balance").toString());
					
					
					
					/*//System.out.println("ItemName\t"+cstock);
					//System.out.println("Quantity\t"+cqty);
					//System.out.println("Rate\t"+crate);
					//System.out.println("Balance\t"+cbalance);*/
					
					
					cqty=cqty+Integer.parseInt(voucherjournal.getQuantity());
					crate=crate+Integer.parseInt(voucherjournal.getRate());
					
					totalclosingstock=hlp_fin.viewTotalClosingStock(voucherjournal.getNameofitem());
					int totalqnty=Integer.parseInt(totalclosingstock.get("totalqnty").toString());
					double totalamount=Double.parseDouble(totalclosingstock.get("totalamount").toString());
					calrate=totalamount/totalqnty;
					cbalance=cqty*calrate;
					
					/*//System.out.println("ItemName\t"+cstock);
					//System.out.println("Quantity\t"+cqty);
					//System.out.println("Rate\t"+crate);
					//System.out.println("Balance\t"+cbalance);
					//System.out.println("CalRate\t"+calrate);*/
					
					
					
					String quantity1=Integer.toString(cqty);
					String rate1=Double.toString(calrate);
					String balance1=Double.toString(cbalance);
					in_closingstockdao.updateClosingStock(quantity1, rate1, balance1, voucherjournal.getNameofitem());
					 
					
				}else{
					
					//Closing Stock Entry.
					 closingstok=new ClosingStockBean();
					closingstok.setStockitem(voucherjournal.getNameofitem());
					closingstok.setQuantity(voucherjournal.getQuantity());
					closingstok.setUnits(voucherjournal.getUnits());
					closingstok.setBalance(voucherjournal.getAmount());
					closingstok.setRate(voucherjournal.getRate());
					closingstok.setGendate(voucherjournal.getGetdate());
					in_closingstockdao.geneateClosingStock(closingstok);
					
				}
					//	Closing Stock Completed.				
				
			}else{
				
			}
			
			String presentamount1=null;
			String presentamount2=null;
			Double amount1=0.0;
			Double amount2=0.0;
			Double balance=0.0;
			//int amount=Integer.parseInt(currentassertsdao.viewCurrentAssertsAmount(financehelper.gettingParentGroup(vouchercontra.getParticular()), vouchercontra.getParticular()));
			if(voucherjournal.getCurrentbalance().equals("")){
				amount1=0.0;
			}else{
				amount1=Double.parseDouble(voucherjournal.getCurrentbalance());	
			}
			if(voucherjournal.getCurrentbalance().equals("")){
				amount2=0.0;
			}else{
				amount2=Double.parseDouble(voucherjournal.getCurrentbalance());	
			}
			////System.out.println("Amount1\t"+amount1);
			if(voucherjournal.getAmount().equals("")){
				balance=0.0;
			}else{
				balance=Double.parseDouble(voucherjournal.getAmount());	
			}
			////System.out.println("Amount2\t"+amount2);
			
			amount1=amount1+balance;//Balance For Amount1.
			amount2=amount2-balance;//Balance For Amount2.
			//			Integer presentamount=amount+ Integer.parseInt(vouchercontra.getAmmount());
	//		//System.out.println("Present Amount\t"+presentamount);
			 presentamount1=amount1.toString();
			 presentamount2=amount2.toString();
			
			 
			 if(financehelper.currentAssetsIsAvailable( voucherjournal.getParticularby(), financehelper.gettingParentGroup(voucherjournal.getParticularby()))){
				 //System.out.println("*************************************************");
				 //System.out.println("Current Assets Is Available");
					//System.out.println("Under\t"+voucherjournal.getParticularby());
					
					//System.out.println("Parent Group\t"+financehelper.gettingParentGroup(voucherjournal.getParticularby()));
					//System.out.println("Amount for Under\t"+presentamount2);
					//System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
					currentassertsdao.updateCurrentAsserts(voucherjournal.getParticularby(),presentamount2 , financehelper.gettingParentGroup(voucherjournal.getParticularby()));	
					
				}else{
					//System.out.println("Current Assets is Not Available");
					//System.out.println("Particular is \t"+voucherjournal.getParticularby());
					//System.out.println("Parent Group\t"+financehelper.gettingParentGroup(voucherjournal.getParticularby()));

					
					 currentasserts.setLedgername(voucherjournal.getParticularby());
						currentasserts.setUnder(financehelper.gettingParentGroup(voucherjournal.getParticularby()));
						currentasserts.setBalance(presentamount2);
						
						currentassertsdao.createCurrentAsserts(currentasserts);
					
					
					
				}
			 
			 //System.out.println("Voucher Journal \t"+voucherjournal.getParticulars());
			 //System.out.println("Voucher Parent Group\t"+financehelper.gettingParentGroup(voucherjournal.getParticulars()));
			 
			//CurrentAssets
			 
			if(financehelper.currentAssetsIsAvailable( voucherjournal.getParticulars(), financehelper.gettingParentGroup(voucherjournal.getParticulars()))){
				//System.out.println("Current Assert Account is Available");
				currentassertsdao.updateCurrentAsserts(voucherjournal.getParticulars(), presentamount1, financehelper.gettingParentGroup(voucherjournal.getParticulars()));
				
				//System.out.println("Amount Updated!");
				}else{
				//System.out.println("Current Assert Account Not Available");
				currentasserts.setLedgername(voucherjournal.getParticulars());
				currentasserts.setUnder(financehelper.gettingParentGroup(voucherjournal.getParticulars()));
				currentasserts.setBalance(presentamount1);
				
				currentassertsdao.createCurrentAsserts(currentasserts);
			}
			
			
			
		return insertorupdate;
	}


	@Override
	public boolean createMeasureUnits(MeasuresBean measuresbean) {
		// TODO Auto-generated method stub
		
		return in_measuredao.generateMesuresUnit(measuresbean);
	}


	@Override
	public boolean createVoucherContra(VocherContraBean vouchercontra) {
		// TODO Auto-generated method stub
		vouchercontra.setGendate(C_Util_Date.generateDate());
		insertorupdate=in_vouchercontradao.generateVoucherContra(vouchercontra);
		Double amount2=0.0; 
		Double amount1=0.0;
		Double balance=0.0;
		
		if(vouchercontra.getCurrentbalance().equals("")){
			amount1=0.0;
		}else{
			amount1=Double.parseDouble(vouchercontra.getCurrentbalance());
		}
		if(vouchercontra.getCurrentbalance1().equals("")){
			amount2=0.0;
		}else{
			amount2=Double.parseDouble(vouchercontra.getCurrentbalance1());	
		}
		if(vouchercontra.getAmmount().equals("")){
			balance=0.0;
		}else{
			 balance=Double.parseDouble(vouchercontra.getAmmount());	
		}
		
			
		amount1=amount1+balance;//Balance For Amount1.
		amount2=amount2-balance;//Balance For Amount2.
		//			Integer presentamount=amount+ Integer.parseInt(vouchercontra.getAmmount());
//		//System.out.println("Present Amount\t"+presentamount);
		String presentamount1=amount1.toString();
		String presentamount2=amount2.toString();
		
		
		if(currentassertsdao.isAvailable(vouchercontra.getUnder(), financehelper.gettingParentGroup(vouchercontra.getUnder()))){
			//System.out.println("Current Assert Account is Available");
			//int amount=Integer.parseInt(currentassertsdao.viewCurrentAssertsAmount(financehelper.gettingParentGroup(vouchercontra.getParticular()), vouchercontra.getParticular()));
					
			currentassertsdao.updateCurrentAsserts(vouchercontra.getUnder(), presentamount1, financehelper.gettingParentGroup(vouchercontra.getUnder()));
			
			//System.out.println("Amount Updated!");
			}else{
			//System.out.println("Current Assert Account Not Available");
			currentasserts.setLedgername(vouchercontra.getUnder());
			currentasserts.setUnder(financehelper.gettingParentGroup(vouchercontra.getUnder()));
			currentasserts.setBalance(presentamount1);
			
			currentassertsdao.createCurrentAsserts(currentasserts);
		}	
		
				
		if(currentassertsdao.isAvailable(vouchercontra.getParticular(), financehelper.gettingParentGroup(vouchercontra.getParticular()))){
			//System.out.println("Current Assert Account is Available");
			//int amount=Integer.parseInt(currentassertsdao.viewCurrentAssertsAmount(financehelper.gettingParentGroup(vouchercontra.getParticular()), vouchercontra.getParticular()));
			
			
			
			currentassertsdao.updateCurrentAsserts(vouchercontra.getParticular(), presentamount2, financehelper.gettingParentGroup(vouchercontra.getParticular()));
			
			
			
			//System.out.println("Amount Updated!");
			}else{
			//System.out.println("Current Assert Account Not Available");
			currentasserts.setLedgername(vouchercontra.getParticular());
			currentasserts.setUnder(financehelper.gettingParentGroup(vouchercontra.getParticular()));
			currentasserts.setBalance(presentamount2);
			
			currentassertsdao.createCurrentAsserts(currentasserts);
		}		
		
		return insertorupdate;		
		
		
	}

	//Voucher Purchase 
	@Override
	public boolean createVoucherPurchase(VocherPurchaseBean voucherpurchase) {
		// TODO Auto-generated method stub
		JSONObject closingstock=new JSONObject();
		String stockname=null;
		double quantity=0;
		double rate=0.0;
		double balance=0.0;
		voucherpurchase.setGetdate(C_Util_Date.generateDate());
		insertorupdate=in_voucherpurchasedao.generateVoucherPurchases(voucherpurchase);
		ClosingStockBean closingstockbean=new ClosingStockBean();
		closingstockbean.setStockitem(voucherpurchase.getNameofitems());
		closingstockbean.setQuantity(voucherpurchase.getQuantity());
		closingstockbean.setUnits(voucherpurchase.getUnits());
		closingstockbean.setRate(voucherpurchase.getRate());
		closingstockbean.setBalance(voucherpurchase.getAmount());
		//Checking for Closing Stock.
		
		if(in_closingstockdao.isAvilable(voucherpurchase.getNameofitems())){
			closingstock=hlp_fin.viewClosingStock(voucherpurchase.getNameofitems());
			stockname=closingstock.getString("itemname");
			quantity=Double.parseDouble(closingstock.getString("quantity"));
			rate=Double.parseDouble(closingstock.getString("rate"));
			balance=Double.parseDouble(closingstock.getString("balance"));
			quantity=quantity+Double.parseDouble(voucherpurchase.getQuantity());
			//System.out.println("Quantity\t"+quantity);
			rate=rate+Integer.parseInt(voucherpurchase.getRate());
			//System.out.println("Rate is\t"+rate);
			closingstock=hlp_fin.viewTotalClosingStock(voucherpurchase.getNameofitems());
			double totalq=Double.parseDouble(closingstock.getString("totalqnty"));
			double totalamount=Double.parseDouble(closingstock.getString("totalamount"));
			double calrate=totalamount/totalq;
			balance=rate*calrate;
			
			in_closingstockdao.updateClosingStock(Double.toString(totalq), Double.toString(calrate), Double.toString(totalamount), voucherpurchase.getNameofitems());
			
			
		}else{
			
			in_closingstockdao.geneateClosingStock(closingstockbean);
		}
		
		
		double amount=Double.parseDouble(currentassertsdao.viewCurrentAssetsBalance(voucherpurchase.getPartyaccountname()));
		amount=amount-Double.parseDouble(voucherpurchase.getAmount());
		//System.out.println("Amount is\t"+amount);
		double amount1=Double.parseDouble(currentassertsdao.viewCurrentAssetsBalance(voucherpurchase.getPartyaccountname()));
		amount1=amount1+Double.parseDouble(voucherpurchase.getAmount());
		
		//System.out.println("Parent Group"+financehelper.gettingParentGroup(voucherpurchase.getPaymentmode()));
		if(currentassertsdao.isAvailable(voucherpurchase.getPaymentmode(), financehelper.gettingParentGroup(voucherpurchase.getPaymentmode()))){
			currentassertsdao.updateCurrentAsserts(voucherpurchase.getPaymentmode(), Double.toString(amount1), financehelper.gettingParentGroup(voucherpurchase.getPaymentmode()));
			/*currentassertsdao.updateCurrentAssets(Double.toString(amount), voucherpurchase.getPurchaseledger(),voucherpurchase.getLogin_comp());*/
		}else{
			currentasserts.setLedgername(voucherpurchase.getPaymentmode());
			currentasserts.setBalance(Double.toString(amount1));
			currentasserts.setUnder(financehelper.gettingParentGroup(voucherpurchase.getPaymentmode()));
			//System.out.println("Parent Group\t"+financehelper.gettingParentGroup(in_ledgerdetailsdao.viewUnderByUsingLedgerName(voucherpurchase.getPaymentmode())));
			
			currentassertsdao.createCurrentAsserts(currentasserts);
		}
		
		
		
		
		//Current Assets.
		if(currentassertsdao.isAvailable(voucherpurchase.getPurchaseledger(), financehelper.gettingParentGroup(voucherpurchase.getPurchaseledger()))){
			currentassertsdao.updateCurrentAsserts(voucherpurchase.getPurchaseledger(), Double.toString(amount), financehelper.gettingParentGroup(voucherpurchase.getPurchaseledger()));
			/*currentassertsdao.updateCurrentAssets(Double.toString(amount), voucherpurchase.getPurchaseledger(),voucherpurchase.getLogin_comp());*/
		}else{
			currentasserts.setLedgername(voucherpurchase.getPurchaseledger());
			currentasserts.setBalance(Double.toString(amount));
			currentasserts.setUnder(financehelper.gettingParentGroup(voucherpurchase.getPurchaseledger()));
			//System.out.println("Parent Group\t"+financehelper.gettingParentGroup(voucherpurchase.getPurchaseledger()));
			
			//currentassertsdao.createCurrentAsserts(currentasserts);
		}
		
		
		
		return insertorupdate;
	}


	@Override
	public boolean createVoucherSales(VocherSalesBean vouchersales) {
		// TODO Auto-generated method stub
		JSONObject closingstock=new JSONObject();
		String stockname=null;
		double quantity=0;
		double rate=0.0;
		double balance=0.0;
		
		vouchersales.setGendate(C_Util_Date.generateDate());
		insertorupdate=in_vouchersalesdao.generateVoucherSales(vouchersales);
		ClosingStockBean closingstockbean=new ClosingStockBean();
		closingstockbean.setStockitem(vouchersales.getNameofitem());
		closingstockbean.setQuantity(vouchersales.getQuantity());
		closingstockbean.setUnits(vouchersales.getUnits());
		closingstockbean.setRate(vouchersales.getRate());
		closingstockbean.setBalance(vouchersales.getAmount());
		
		
		if(in_closingstockdao.isAvilable(vouchersales.getNameofitem())){
			closingstock=hlp_fin.viewClosingStock(vouchersales.getNameofitem());
			stockname=closingstock.getString("itemname");
			quantity=Double.parseDouble(closingstock.getString("quantity"));
			rate=Double.parseDouble(closingstock.getString("rate"));
			balance=Double.parseDouble(closingstock.getString("balance"));
			quantity=quantity+Double.parseDouble(vouchersales.getQuantity());
			//System.out.println("Quantity\t"+quantity);
			rate=rate+Integer.parseInt(vouchersales.getRate());
			//System.out.println("Rate is\t"+rate);
			closingstock=hlp_fin.viewTotalClosingStock(vouchersales.getNameofitem());
			double totalq=Double.parseDouble(closingstock.getString("totalqnty"));
			double totalamount=Double.parseDouble(closingstock.getString("totalamount"));
			double calrate=totalamount/totalq;
			balance=rate*calrate;
			in_closingstockdao.updateClosingStock(Double.toString(totalq), Double.toString(calrate), Double.toString(totalamount), vouchersales.getNameofitem());
		}else{
			
			in_closingstockdao.geneateClosingStock(closingstockbean);
		}
		double amount=Double.parseDouble(currentassertsdao.viewCurrentAssetsBalance(vouchersales.getNameofitem()));
		amount=amount-Double.parseDouble(vouchersales.getAmount());
		//System.out.println("Amount is\t"+amount);
		currentassertsdao.updateCurrentAssets(Double.toString(amount), vouchersales.getNameofitem());
		
		
		if(currentassertsdao.isAvalable(vouchersales.getSalesledger())){
			double amount1=Double.parseDouble(currentassertsdao.viewCurrentAssetsBalance(vouchersales.getNameofitem()));
			amount1=amount1+Double.parseDouble(vouchersales.getAmount());
			currentassertsdao.updateCurrentAssets(Double.toString(amount), vouchersales.getSalesledger());
		}else{
			currentasserts.setLedgername(vouchersales.getSalesledger());
			currentasserts.setBalance(vouchersales.getAmount());
			//System.out.println("Sales Parent Group\t"+financehelper.gettingParentGroup(in_ledgerdetailsdao.viewUnderByUsingLedgerName(vouchersales.getSalesledger())));
			currentasserts.setUnder(financehelper.gettingParentGroup(in_ledgerdetailsdao.viewUnderByUsingLedgerName(vouchersales.getSalesledger())));
			currentassertsdao.createCurrentAsserts(currentasserts);
		}
		
		
		return insertorupdate;
	}


	@Override
	public boolean createVoucherPurchaseReturn(
			VocherPurchaseReturnBean voucherpurchasereturn) {
		// TODO Auto-generated method stub
		JSONObject closingstock=new JSONObject();
		String stockname=null;
		double quantity=0;
		double rate=0.0;
		double balance=0.0;
		voucherpurchasereturn.setGendate(C_Util_Date.generateDate());
		insertorupdate=in_voucherpurchasereturndao.generatePurchaseReturn(voucherpurchasereturn);
		
		ClosingStockBean closingstockbean=new ClosingStockBean();
		closingstockbean.setStockitem(voucherpurchasereturn.getNameofitem());
		closingstockbean.setQuantity(voucherpurchasereturn.getQuantity());
		closingstockbean.setUnits(voucherpurchasereturn.getUnits());
		closingstockbean.setRate(voucherpurchasereturn.getRate());
		closingstockbean.setBalance(voucherpurchasereturn.getAmount());
		
		
		if(in_closingstockdao.isAvilable(voucherpurchasereturn.getNameofitem())){
			closingstock=hlp_fin.viewClosingStock(voucherpurchasereturn.getNameofitem());
			stockname=closingstock.getString("itemname");
			quantity=Double.parseDouble(closingstock.getString("quantity"));
			rate=Double.parseDouble(closingstock.getString("rate"));
			balance=Double.parseDouble(closingstock.getString("balance"));
			quantity=quantity+Double.parseDouble(voucherpurchasereturn.getQuantity());
			//System.out.println("Quantity\t"+quantity);
			rate=rate+Integer.parseInt(voucherpurchasereturn.getRate());
			//System.out.println("Rate is\t"+rate);
			closingstock=hlp_fin.viewTotalClosingStock(voucherpurchasereturn.getNameofitem());
			double totalq=Double.parseDouble(closingstock.getString("totalqnty"));
			double totalamount=Double.parseDouble(closingstock.getString("totalamount"));
			double calrate=totalamount/totalq;
			balance=rate*calrate;
			in_closingstockdao.updateClosingStock(Double.toString(totalq), Double.toString(calrate), Double.toString(totalamount), voucherpurchasereturn.getNameofitem());
		}else{
			
			in_closingstockdao.geneateClosingStock(closingstockbean);
		}
		double amount=Double.parseDouble(currentassertsdao.viewCurrentAssetsBalance(voucherpurchasereturn.getNameofitem()));
		amount=amount+Double.parseDouble(voucherpurchasereturn.getAmount());
		//System.out.println("Amount is\t"+amount);
		currentassertsdao.updateCurrentAssets(Double.toString(amount), voucherpurchasereturn.getNameofitem());
		
		
		if(currentassertsdao.isAvalable(voucherpurchasereturn.getPurchaseledger())){
			double amount1=Double.parseDouble(currentassertsdao.viewCurrentAssetsBalance(voucherpurchasereturn.getNameofitem()));
			amount1=amount1+Double.parseDouble(voucherpurchasereturn.getAmount());
			currentassertsdao.updateCurrentAssets(Double.toString(amount), voucherpurchasereturn.getPurchaseledger());
		}else{
			currentasserts.setLedgername(voucherpurchasereturn.getPurchaseledger());
			currentasserts.setBalance(voucherpurchasereturn.getAmount());
			//System.out.println("Sales Parent Group\t"+financehelper.gettingParentGroup(in_ledgerdetailsdao.viewUnderByUsingLedgerName(voucherpurchasereturn.getPurchaseledger())));
			currentasserts.setUnder(financehelper.gettingParentGroup(in_ledgerdetailsdao.viewUnderByUsingLedgerName(voucherpurchasereturn.getPurchaseledger())));
			currentassertsdao.createCurrentAsserts(currentasserts);
		}
		
		
		return insertorupdate;
	}


	@Override
	public boolean createVoucherSalesReturn(
			VocherSalesReturnBean vouchersalesreturnbean) {
		// TODO Auto-generated method stub
		JSONObject closingstock=new JSONObject();
		String stockname=null;
		double quantity=0;
		double rate=0.0;
		double balance=0.0;
		vouchersalesreturnbean.setGendate(C_Util_Date.generateDate());
		insertorupdate=in_vouchersalesreturndao.generateSalesReturn(vouchersalesreturnbean);
		ClosingStockBean closingstockbean=new ClosingStockBean();
		closingstockbean.setStockitem(vouchersalesreturnbean.getNameofitem());
		closingstockbean.setQuantity(vouchersalesreturnbean.getQuantity());
		closingstockbean.setUnits(vouchersalesreturnbean.getUnits());
		closingstockbean.setRate(vouchersalesreturnbean.getRate());
		closingstockbean.setBalance(vouchersalesreturnbean.getAmount());
		
		
		if(in_closingstockdao.isAvilable(vouchersalesreturnbean.getNameofitem())){
			closingstock=hlp_fin.viewClosingStock(vouchersalesreturnbean.getNameofitem());
			stockname=closingstock.getString("itemname");
			quantity=Double.parseDouble(closingstock.getString("quantity"));
			rate=Double.parseDouble(closingstock.getString("rate"));
			balance=Double.parseDouble(closingstock.getString("balance"));
			quantity=quantity+Double.parseDouble(vouchersalesreturnbean.getQuantity());
			//System.out.println("Quantity\t"+quantity);
			rate=rate+Integer.parseInt(vouchersalesreturnbean.getRate());
			//System.out.println("Rate is\t"+rate);
			closingstock=hlp_fin.viewTotalClosingStock(vouchersalesreturnbean.getNameofitem());
			double totalq=Double.parseDouble(closingstock.getString("totalqnty"));
			double totalamount=Double.parseDouble(closingstock.getString("totalamount"));
			double calrate=totalamount/totalq;
			balance=rate*calrate;
			in_closingstockdao.updateClosingStock(Double.toString(totalq), Double.toString(calrate), Double.toString(totalamount), vouchersalesreturnbean.getNameofitem());
		}else{
			
			in_closingstockdao.geneateClosingStock(closingstockbean);
		}
		double amount=Double.parseDouble(currentassertsdao.viewCurrentAssetsBalance(vouchersalesreturnbean.getNameofitem()));
		amount=amount+Double.parseDouble(vouchersalesreturnbean.getAmount());
		//System.out.println("Amount is\t"+amount);
		currentassertsdao.updateCurrentAssets(Double.toString(amount), vouchersalesreturnbean.getNameofitem());
		
		
		if(currentassertsdao.isAvalable(vouchersalesreturnbean.getSalesledger())){
			double amount1=Double.parseDouble(currentassertsdao.viewCurrentAssetsBalance(vouchersalesreturnbean.getNameofitem()));
			amount1=amount1+Double.parseDouble(vouchersalesreturnbean.getAmount());
			currentassertsdao.updateCurrentAssets(Double.toString(amount), vouchersalesreturnbean.getSalesledger());
		}else{
			currentasserts.setLedgername(vouchersalesreturnbean.getSalesledger());
			currentasserts.setBalance(vouchersalesreturnbean.getAmount());
			//System.out.println("Sales Parent Group\t"+financehelper.gettingParentGroup(in_ledgerdetailsdao.viewUnderByUsingLedgerName(vouchersalesreturnbean.getSalesledger())));
			currentasserts.setUnder(financehelper.gettingParentGroup(in_ledgerdetailsdao.viewUnderByUsingLedgerName(vouchersalesreturnbean.getSalesledger())));
			currentassertsdao.createCurrentAsserts(currentasserts);
		}
		
		
		return insertorupdate;
	}


	@Override
	public boolean updateCustomerInstallments(FinanceCustomerBean fncust) {
		// TODO Auto-generated method stub
		JSONObject custlist=new JSONObject();
		//fncust.setStatus("NEW");
		
		if(hlp_fin.customerInstallmentAvailable( fncust.getDeltby(),fncust.getCustid())){
		
			//System.out.println("Installment Is Available");
			
		 custlist=hlp_fin.getCustomerInstallmentDetails(fncust.getDeltby(),fncust.getStatus(), fncust.getCustid());
		 //System.out.println("Total Amount"+custlist.getString("totalamount"));
		 //System.out.println("AmountPaid"+custlist.getString("amountpaid"));
		 //System.out.println("Remaining Amount"+custlist.getString("remainingamount"));
		 //System.out.println("Total Installment"+custlist.getString("totalinstallments"));
		 //System.out.println("Installment Paid"+custlist.getString("installmentspaid"));
		 
		 String totalamount1=custlist.getString("totalamount");
		 String amountpaid=custlist.getString("amountpaid");
		 String remamount=custlist.getString("remainingamount");
		 String tinstall=custlist.getString("totalinstallments");
		 String installmentpaid=custlist.getString("installmentspaid");
		 double totalamount=custlist.getDouble("totalamount");
		 double amounpaid=Double.parseDouble(fncust.getAmountpaid());
		 double ramount=custlist.getDouble("remainingamount");
		 
		 ramount=ramount-amounpaid;
		 
		 //System.out.println("Remaining Amount1\t"+ramount);
		 
		 inst++;
		 //System.out.println("Installment\t"+inst);
		 insertorupdate=in_financecustdao.updateCustomerInstallment(fncust.getCustid(),Double.toString(ramount),Integer.toString(inst),"Paying");
		 
		}else{
			
			//System.out.println("Installment is New");
			 
			custlist=hlp_fin.getCustomerInstallmentDetails(fncust.getDeltby(),fncust.getStatus(), fncust.getCustid());
			 
			 //System.out.println("Total Amount"+custlist.getString("totalamount"));
			 //System.out.println("AmountPaid"+custlist.getString("amountpaid"));
			 //System.out.println("Remaining Amount"+custlist.getString("remainingamount"));
			 //System.out.println("Total Installment"+custlist.getString("totalinstallments"));
			 //System.out.println("Installment Paid"+custlist.getString("installmentspaid"));
			 
			 String totalamount1=custlist.getString("totalamount");
			 String amountpaid=custlist.getString("amountpaid");
			 String remamount=custlist.getString("remainingamount");
			 String tinstall=custlist.getString("totalinstallments");
			 String installmentpaid=custlist.getString("installmentspaid");
			 double totalamount=custlist.getDouble("totalamount");
			 double amounpaid1=Double.parseDouble(fncust.getAmountpaid());
			 //System.out.println("AmountPaid"+amountpaid);
			 
			 double ramount=Double.parseDouble(remamount);
			 
			 ramount=totalamount-amounpaid1;
			 		 
			 inst++;
			 //System.out.println("Remaining Amount2\t"+ramount);
			 //System.out.println("Installment"+inst);
			 
			 //Inserting Amount. 
			 //Remaining_amount,Amountpaid,installments,status="Paying".
			 
			 if(tinstall.equals(Integer.toString(inst))){
				 	
				 insertorupdate=in_financecustdao.updateCustomerInstallmentStatus(fncust.getCustid(),"Paid");
			 }else{
				 insertorupdate=in_financecustdao.updateCustomerInstallment(fncust.getCustid(),Double.toString(ramount),Integer.toString(inst),"Paying");	 
			 }
			 
			 
			 
			
		}
		custlist.clear();
		return insertorupdate;
	}


	@Override
	public JSONObject viewCustomerByCustomerId(long username) {
		// TODO Auto-generated method stub
		return in_financecustdao.viewCustomerByCustomerId(username);
	}


	@Override
	public boolean generateAgingOfAccountPayable(
			AggingaccountpaybleBean aggingofaccountpayable) {
		// TODO Auto-generated method stub
		
		aggingofaccountpayable.setGendate(C_Util_Date.generateDate());
		return in_agingofaccountpauabledao.generateAgingOfAccountPayable(aggingofaccountpayable);
		
	}


	@Override
	public boolean generateAgingOfAccountRecivable(
			AggingaccountreceivableBean agingofaccountrecivable) {
		// TODO Auto-generated method stub
		agingofaccountrecivable.setGendate(C_Util_Date.generateDate());
		return in_agingofaccountrecivabledao.generateAgingOfAccountRecivable(agingofaccountrecivable);
	}


	@Override
	public boolean generateCashDisbursmentJournal(
			CashdisbursementsjournalBean cashdisbursmentjournal) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public boolean generateCashRecieptJournal(
			CashreceiptsjournalBean cashreciptjournal) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public boolean createCashreceiptsjournal(
			CashreceiptsjournalBean cashreceiptsjournalBean) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public boolean createDailycashreport(DailycashreportBean dailycashreportBean) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public boolean createPettycashjournal(
			PettycashjornalBean pettycashjornalBean) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public boolean createPettycashvoucher(
			PettycashvoucherBean pettycashvoucherBean) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public JSONObject viewAutoTravelExpensesByExecutive(
			String deltby) {
		// TODO Auto-generated method stub
		return in_autoexp.viewAutoTravelExpByExecutive(deltby);
	}


	@Override
	public JSONObject viewPhoneBillExpensesByExecutive(
			String deltby) {
		// TODO Auto-generated method stub
		
		return in_phonebillexpdao.viewPhoneBillExpensesByExecutive(deltby);
	}


	@Override
	public JSONObject viewFoodExpensesByExecutive(String username) {
		// TODO Auto-generated method stub
		return in_foodexpdao.viewFoodExpensesByExecutive(username);
	}


	@Override
	public JSONObject viewHotelExpensesByExecutive(String username) {
		// TODO Auto-generated method stub
			
		return in_hotelexpdao.viewHotelExpByExecutive(username);
	}


	@Override
	public JSONObject viewEntertainmentExpByExecutive(
			String username) {
		// TODO Auto-generated method stub
		
		return in_entertainmentdao.viewEntertainmentExpByExecutive(username);
	}


	@Override
	public JSONObject viewMisleneousExpByExecutive(
			String username) {
		// TODO Auto-generated method stub
		
		return in_misleneousdao.viewMisleneouseExpByExecutive(username);
	}


	@Override
	public JSONObject viewNonTradingExpByExecutive(
			String username) {
		// TODO Auto-generated method stub
		
		return in_nontradingdao.viewNonTradingExpByExecutive(username);
	}


	@Override
	public JSONObject viewAgingOfAccountPayableByExecutive(
			String username) {
		// TODO Auto-generated method stub
		return in_agingofaccountpauabledao.viewAggingOfAccountPayableByExecutive(username);
	}

	
	
}
