package com.svs.finance.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.svs.finance.bean.AdvertisementExpenses;
import com.svs.finance.bean.AggingaccountpaybleBean;
import com.svs.finance.bean.AggingaccountreceivableBean;
import com.svs.finance.bean.AutoExpencesesTravelBean;
import com.svs.finance.bean.CashdisbursementsjournalBean;
import com.svs.finance.bean.CashreceiptsjournalBean;
import com.svs.finance.bean.ClosingStockBean;
import com.svs.finance.bean.CompanyPaySlipBean;
import com.svs.finance.bean.CompanyRegistrationBean;
import com.svs.finance.bean.CourierDispatchDetailsBean;
import com.svs.finance.bean.CourierRecieptBean;
import com.svs.finance.bean.CurrentAssertsBean;
import com.svs.finance.bean.DailycashreportBean;
import com.svs.finance.bean.EmployeeBean;
import com.svs.finance.bean.EntertainmentExpencesesBean;
import com.svs.finance.bean.FinalPaySlipBean;
import com.svs.finance.bean.FoodExcepensesBean;
import com.svs.finance.bean.GroupDetailsBean;
import com.svs.finance.bean.GroupMappingBean;
import com.svs.finance.bean.Groups;
import com.svs.finance.bean.HotelExpensesBean;
import com.svs.finance.bean.InternetExpBean;
import com.svs.finance.bean.InvoiceFormBean;
import com.svs.finance.bean.LedgerDetailsBean;
import com.svs.finance.bean.LoginBean;
import com.svs.finance.bean.MeasuresBean;
import com.svs.finance.bean.MisleniousExpencesesBean;
import com.svs.finance.bean.NonTradingExpencesesBean;
import com.svs.finance.bean.OfficeExp;
import com.svs.finance.bean.PettycashjornalBean;
import com.svs.finance.bean.PettycashvoucherBean;
import com.svs.finance.bean.PhoneBillExpencesesBean;
import com.svs.finance.bean.PostageExpBean;
import com.svs.finance.bean.RepairMaintenenceBean;
import com.svs.finance.bean.StockGroupBean;
import com.svs.finance.bean.StockGroupDetailsBean;
import com.svs.finance.bean.StockItemBean;
import com.svs.finance.bean.StudentBean;
import com.svs.finance.bean.UniversityBean;
import com.svs.finance.bean.VatAndTaxBean;
import com.svs.finance.bean.VocherContraBean;
import com.svs.finance.bean.VocherDetailsBean;
import com.svs.finance.bean.VocherJournalBean;
import com.svs.finance.bean.VocherPaymentBean;
import com.svs.finance.bean.VocherPurchaseBean;
import com.svs.finance.bean.VocherPurchaseReturnBean;
import com.svs.finance.bean.VocherSalesBean;
import com.svs.finance.bean.VocherSalesReturnBean;
import com.svs.finance.bean.VocherTypeBean;
import com.svs.finance.bean.VoucherRecieptBean;
import com.svs.finance.dao.IN_AdvertisementDAO;
import com.svs.finance.dao.IN_AgingOfAccountPayableDAO;
import com.svs.finance.dao.IN_AgingOfAccountRecivableDAO;
import com.svs.finance.dao.IN_CashDisbursmentJournlaDAO;
import com.svs.finance.dao.IN_CashreceiptsjournalDAO;
import com.svs.finance.dao.IN_ClosingStockDAO;
import com.svs.finance.dao.IN_CompanyPaySlipDAO;
import com.svs.finance.dao.IN_CompanyRegistrationDAO;
import com.svs.finance.dao.IN_CourierDAO;
import com.svs.finance.dao.IN_CourierDispathDAO;
import com.svs.finance.dao.IN_CurrentAssertDAO;
import com.svs.finance.dao.IN_DailyAutoExpensesTravelDAO;
import com.svs.finance.dao.IN_DailycashreportDAO;
import com.svs.finance.dao.IN_EmployeeDAO;
import com.svs.finance.dao.IN_EntertainmentExpDAO;
import com.svs.finance.dao.IN_FinalPaySlipDAO;
import com.svs.finance.dao.IN_FoodExpDAO;
import com.svs.finance.dao.IN_GroupDetailsDAO;
import com.svs.finance.dao.IN_GroupMappingDAO;
import com.svs.finance.dao.IN_GroupsDAO;
import com.svs.finance.dao.IN_HotelExpDAO;
import com.svs.finance.dao.IN_InternetExpDAO;
import com.svs.finance.dao.IN_InvoiceDAO;
import com.svs.finance.dao.IN_InvoiceVatAndTaxDAO;
import com.svs.finance.dao.IN_LedgerDetailsDAO;
import com.svs.finance.dao.IN_LoginDAO;
import com.svs.finance.dao.IN_MeasuresDAO;
import com.svs.finance.dao.IN_MisleneousExpDAO;
import com.svs.finance.dao.IN_NonTradingExpDAO;
import com.svs.finance.dao.IN_OfficeExpDAO;
import com.svs.finance.dao.IN_PettyCashJournalDAO;
import com.svs.finance.dao.IN_PettycashvoucherDAO;
import com.svs.finance.dao.IN_PhoneBillExpensesDAO;
import com.svs.finance.dao.IN_PostageExpDAO;
import com.svs.finance.dao.IN_RepairsAndMaintenanceDAO;
import com.svs.finance.dao.IN_StockGroup;
import com.svs.finance.dao.IN_StockGroupDAO;
import com.svs.finance.dao.IN_StockItemDAO;
import com.svs.finance.dao.IN_StudentDAO;
import com.svs.finance.dao.IN_UniversityDAO;
import com.svs.finance.dao.IN_VoucherContraDAO;
import com.svs.finance.dao.IN_VoucherDetailsDAO;
import com.svs.finance.dao.IN_VoucherJournalDAO;
import com.svs.finance.dao.IN_VoucherPaymentDAO;
import com.svs.finance.dao.IN_VoucherPurchaseReturnsDAO;
import com.svs.finance.dao.IN_VoucherPurchasesDAO;
import com.svs.finance.dao.IN_VoucherRecieptDAO;
import com.svs.finance.dao.IN_VoucherSalesDAO;
import com.svs.finance.dao.IN_VoucherSalesReturnDAO;
import com.svs.finance.dao.IN_VoucherTypeDAO;
import com.svs.finance.helper.C_CalculatingPaySlip;
import com.svs.finance.helper.C_FinanceHelperController;
import com.svs.finance.service.IN_FinanceService;
import com.svs.finance.util.C_FileUploadUtil;
import com.svs.finance.util.C_Util_Date;
import com.svs.finance.util.MemoFileUpload;
import com.svs.finance.util.StudentImageUpload;

@Service
public class C_FinanceServiceImpl implements IN_FinanceService {

	
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
	@Autowired IN_CompanyRegistrationDAO in_companyregdao;
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
	@Autowired IN_InternetExpDAO in_internetexpdao;
	@Autowired IN_OfficeExpDAO in_officeexpdao;
	@Autowired IN_RepairsAndMaintenanceDAO in_repairsandmaintenancedao;
	@Autowired IN_PostageExpDAO in_postageexpdao;
	@Autowired IN_InvoiceDAO in_invoicedao;
	@Autowired IN_LoginDAO in_logindao;
	@Autowired IN_EmployeeDAO in_employeedao;
	private List closingstocklist;
	int inst=0;	
	@Autowired IN_AdvertisementDAO in_advertisementdao;
	@Autowired IN_InvoiceVatAndTaxDAO in_invoicevatdao;
	@Autowired IN_AgingOfAccountPayableDAO in_agingofaccountpayabledao;
	@Autowired
	C_FileUploadUtil util_fileupload;
	@Autowired
	IN_NonTradingExpDAO in_nontradingdao;
	@Autowired IN_AgingOfAccountRecivableDAO in_agingofaccountrecivabledao;
	@Autowired
	IN_CashDisbursmentJournlaDAO in_cashdisbursmentjournaldao;
	@Autowired IN_CashreceiptsjournalDAO in_CashreceiptsjournalDAO;
	@Autowired IN_DailycashreportDAO in_DailycashreportDAO;
	@Autowired IN_PettyCashJournalDAO in_PettycashjournalDAO;
	@Autowired IN_PettycashvoucherDAO in_PettycashvoucherDAO;
	@Autowired IN_VoucherTypeDAO in_vouchertypedao; 
	@Autowired IN_CompanyPaySlipDAO in_comppaydao;
	@Autowired IN_UniversityDAO in_unidao;
	@Autowired IN_StudentDAO in_stddao;
	@Autowired IN_CourierDAO in_courierdao;
	@Autowired IN_CourierDispathDAO in_courierdispathdao;
	@Autowired C_CalculatingPaySlip hlp_payslipcal;
	@Autowired MemoFileUpload hlp_memoupload;
	@Autowired StudentImageUpload hlp_studentimgupload;
	@Autowired C_FinanceHelperController hlp_finance;
	@Autowired IN_FinalPaySlipDAO in_payslipdao;

	
	
	//Daily Auto Expenses Travel.
	@Override
	public boolean createDailyAutoExpenses(
			AutoExpencesesTravelBean autoexpensestravel) {
		// TODO Auto-generated method stub
		autoexpensestravel.setGendate(util_date.generateDate());
		
		return in_dailyautoexpensetravelsdao.createDailyAutoExpenses(autoexpensestravel);
	}


	@Override
	public boolean createLedgerDetails(LedgerDetailsBean ledgerdetails) {
		// TODO Auto-generated method stub
		
		ledgerdetails.setGetdate(util_date.generateDate());
		
		return in_ledgerdetailsdao.createLedgerDetails(ledgerdetails);
	}


	@Override
	public boolean createVoucherDetails(VocherDetailsBean voucherdetailsbean) {
		// TODO Auto-generated method stub
		VocherTypeBean vouchertype=new VocherTypeBean();
		
		
		if(in_vouchertypedao.isAvailable(voucherdetailsbean.getName())){
			
		}else{
			vouchertype.setVouchertype(voucherdetailsbean.getName());
			vouchertype.setLogin_comp(voucherdetailsbean.getLogin_comp());
			in_vouchertypedao.generateVoucherType(vouchertype);
		}
		
		voucherdetailsbean.setGetdate(util_date.generateDate());
		return in_voucherdetailsdao.createVoucherDetails(voucherdetailsbean);
	}


	@Override
	public boolean createGroupDetails(GroupDetailsBean groupdetails) {
		// TODO Auto-generated method stub
		Groups groups=new Groups();
		groupdetails.setGetdate(util_date.generateDate());
		insertorupdate=in_groupdetailsdao.createGroupDetails(groupdetails);
		String group=groupdetails.getName();
		
		if(in_groupdao.isAvailable(group)){
			System.out.println("Group is Available");
		}else{
			groups.setLogin_comp(groupdetails.getLogin_comp());
			groups.setGroupname(groupdetails.getName());
			in_groupdao.generateGroups(groups);	
		}
		
		GroupMappingBean groupmapping=new GroupMappingBean();
		
		String grouporsubgroup=groupdetails.getGrpbeh();
		System.out.println("Group Or Sub Group\t"+grouporsubgroup);
		switch(grouporsubgroup){
		case "Yes":{
			
			ISAVAILABLE=in_groupmappindao.isAvailable(groupdetails.getName());
			if(ISAVAILABLE){
			System.out.println("Sub Group Is Available");	
			}else{
				groupmapping.setLogin_comp(groupdetails.getLogin_comp());
				groupmapping.setPrimarygroup(groupdetails.getUnder());
				groupmapping.setSubgroup(groupdetails.getName());
				in_groupmappindao.createGroupMapping(groupmapping);	
			}
			break;
					}
		case "No":{
			groupmapping.setLogin_comp(groupdetails.getLogin_comp());
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
		voucherpayment.setGetdate(util_date.generateDate());
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
		//System.out.println("Present Amount\t"+presentamount);
		System.out.println("Under\t"+voucherpayment.getUnder());
		System.out.println("Amount1\t"+amount1);
		System.out.println("Particulars\t"+voucherpayment.getParticulars());
		System.out.println("Amount2\t"+amount2);
		String presentamount1=amount1.toString();
		String presentamount2= "";//amount2.toString();
		
		System.out.println("Parent Group\t"+financehelper.gettingParentGroup(voucherpayment.getParticulars()));
		
		if(currentassertsdao.isAvailable(voucherpayment.getUnder(), financehelper.gettingParentGroup(voucherpayment.getUnder()),voucherpayment.getLogin_comp())){
			System.out.println("Current Assert Account is Available"+voucherpayment.getCurrentbalance());
			//int amount=Integer.parseInt(currentassertsdao.viewCurrentAssertsAmount(financehelper.gettingParentGroup(vouchercontra.getParticular()), vouchercontra.getParticular()));
			
			
			
			currentassertsdao.updateCurrentAsserts(voucherpayment.getUnder(), presentamount2, financehelper.gettingParentGroup(voucherpayment.getUnder()),voucherpayment.getLogin_comp());
			
			System.out.println("Amount Updated!");
			}else{
			System.out.println("Current Assert Account Not Available");
			currentasserts.setLedgername(voucherpayment.getUnder());
			System.out.println("Ledger Name\t"+voucherpayment.getParticulars());
			System.out.println(financehelper.gettingParentGroup(voucherpayment.getUnder()));
			currentasserts.setUnder(financehelper.gettingParentGroup(voucherpayment.getUnder()));
			currentasserts.setBalance(presentamount2);
			currentasserts.setLogin_comp(voucherpayment.getLogin_comp());
			currentassertsdao.createCurrentAsserts(currentasserts);
		}	
		
		
		if(currentassertsdao.isAvailable(voucherpayment.getParticulars(), financehelper.gettingParentGroup(voucherpayment.getParticulars()),voucherpayment.getLogin_comp() )){
			System.out.println("Current Assert Account is Available"+voucherpayment.getCurrentbalance());
			//int amount=Integer.parseInt(currentassertsdao.viewCurrentAssertsAmount(financehelper.gettingParentGroup(vouchercontra.getParticular()), vouchercontra.getParticular()));
			currentassertsdao.updateCurrentAsserts(voucherpayment.getParticulars(), presentamount1, financehelper.gettingParentGroup(voucherpayment.getParticulars()),voucherpayment.getLogin_comp());
			System.out.println("Amount Updated!");
			}else{
			System.out.println("Current Assert Account Not Available");
			currentasserts.setLedgername(voucherpayment.getParticulars());
			System.out.println("Ledger Name\t"+voucherpayment.getParticulars());
			System.out.println(financehelper.gettingParentGroup(voucherpayment.getParticulars()));
			currentasserts.setUnder(financehelper.gettingParentGroup(voucherpayment.getParticulars()));
			currentasserts.setBalance(voucherpayment.getAmount());
			currentasserts.setLogin_comp(voucherpayment.getLogin_comp());
			currentassertsdao.createCurrentAsserts(currentasserts);
		}		
			
		return insertorupdate;
	}


	@Override
	public boolean generatePhoneBillDailyExpenses(
			PhoneBillExpencesesBean phonebillexpenses) {
		// TODO Auto-generated method stub
		phonebillexpenses.setGendate(util_date.generateDate());
		return in_phonebillexpdao.generatePhoneBillExpenses(phonebillexpenses);
	}


	@Override
	public boolean geneateFoodBillExp(FoodExcepensesBean foodexpen) {
		// TODO Auto-generated method stub
		foodexpen.setGendate(util_date.generateDate());
		return in_foodexpdao.generateFoodExp(foodexpen);
	}


	@Override
	public boolean geneateHotelExp(HotelExpensesBean hotelexp) {
		// TODO Auto-generated method stub
		System.out.println("Service ");
		hotelexp.setGendate(util_date.generateDate());
		return in_hotelexpdao.generateHotelExp(hotelexp);
	}


	@Override
	public boolean generateEntertainmentExp(
			EntertainmentExpencesesBean entertainmentexp) {
		// TODO Auto-generated method stub
		System.out.println("Entertainment Exp Service");
		entertainmentexp.setGendate(util_date.generateDate());
		return in_entertainmentdao.generateEntertainmentExp(entertainmentexp);
	}


	@Override
	public boolean generateMisleneousExp(MisleniousExpencesesBean misleneousexp) {
		// TODO Auto-generated method stub
		misleneousexp.setGendate(util_date.generateDate());
				
		return in_misleneousdao.generateMisleneousExp(misleneousexp);
	}


	@Override
	public boolean generateNonTradingExp(NonTradingExpencesesBean nontradingexp) {
		// TODO Auto-generated method stub
			
		
		nontradingexp.setGendate(util_date.generateDate());
		return in_nontradingdao.generateNonTradingExp(nontradingexp);
	}


	@Override
	public boolean createVoucherReciept(VoucherRecieptBean voucherreciept) {
		// TODO Auto-generated method stub
		
			voucherreciept.setGendate(util_date.generateDate());
			insertorupdate=in_voucherreciptdao.createVoucherReciept(voucherreciept);
			Double balance=0.0;
			//System.out.println("Current Assert Account Not Available");
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
			
		
			
			System.out.println("Amount2\t"+amount1);//10000
			System.out.println("Balance\t"+balance);//20000
			System.out.println("Amount1\t"+amount3);//10000
			//20000+10000 balance
			//10000-10000 amount3
			Double balance2 =0.0;
			Double amount4=0.0;
			balance2=balance+amount1;//Amount for Account.
			amount4=amount3-amount1;//Amount for particulars.
			
			System.out.println("Balance For Account"+balance);
			System.out.println("Amount for Particulars"+amount3);
			//String balance2=null;
			//balance2=balance.toString();
			String amount5=balance2.toString();
			String amount6=amount4.toString();
					//amount4=mount3;
			System.out.println("Amount for Particulars\t"+amount5);
			System.out.println("Amount for under\t"+amount6);
			if(currentassertsdao.isAvailable(voucherreciept.getAccount(),financehelper.gettingParentGroup(voucherreciept.getAccount()),voucherreciept.getLogin_comp())){
				System.out.println("*************************************************");
				System.out.println("Under\t"+voucherreciept.getAccount());
				System.out.println("Parent Group\t"+financehelper.gettingParentGroup(voucherreciept.getParticulars()));
				System.out.println("Amount for Under\t"+amount6);
				System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
				currentassertsdao.updateCurrentAsserts(voucherreciept.getAccount(),amount5 , financehelper.gettingParentGroup(voucherreciept.getAccount()),voucherreciept.getLogin_comp());	
			}else{
				currentasserts.setLedgername(voucherreciept.getAccount());
				currentasserts.setUnder(financehelper.gettingParentGroup(voucherreciept.getAccount()));
				currentasserts.setBalance(amount5);
				currentasserts.setLogin_comp(voucherreciept.getLogin_comp());
				currentassertsdao.createCurrentAsserts(currentasserts);
			}
			//System.out.println("Parent Group\t"+financehelper.gettingParentGroup(voucherreciept.getParticulars()));
		if(currentassertsdao.isAvailable(voucherreciept.getParticulars(), financehelper.gettingParentGroup(voucherreciept.getParticulars()),voucherreciept.getLogin_comp())){
		//	hlp_fin.getReciptIsAvailable();
			//System.out.println("Recipt is \t"+hlp_fin.getReciptIsAvailable());
			
			//System.out.println("Current Assert Account is Available");
			
				
			
			/*int amount=Integer.parseInt(currentassertsdao.viewCurrentAssertsAmount(financehelper.gettingParentGroup(voucherreciept.getParticulars()), voucherreciept.getParticulars()));
			Integer presentamount=amount+ Integer.parseInt(voucherreciept.getAmount());
			System.out.println("Present Amount\t"+presentamount);
			String presentamount1=presentamount.toString();*/
			
					
			System.out.println("Amount for Under \t"+amount3);
			System.out.println("Amount for Particular\t"+balance2);
			System.out.println("Under\t"+voucherreciept.getUnder());
			System.out.println("Amount1\t"+amount1);
			System.out.println("Particulars\t"+voucherreciept.getParticulars());
			System.out.println("Amount2\t"+amount3);
			System.out.println("Parent Groups is\t"+financehelper.gettingParentGroup(voucherreciept.getParticulars()));
			System.out.println("Ledger Group is\t"+financehelper.gettingParentGroup(voucherreciept.getParticulars()));
			currentassertsdao.updateCurrentAsserts(voucherreciept.getParticulars(),amount6, financehelper.gettingParentGroup(voucherreciept.getParticulars()),voucherreciept.getLogin_comp());
					
			}else{
				
			System.out.println("Current Assets \t"+voucherreciept.getLogin_comp());
			currentasserts.setLedgername(voucherreciept.getParticulars());
			currentasserts.setUnder(financehelper.gettingParentGroup(voucherreciept.getParticulars()));
			currentasserts.setBalance(voucherreciept.getAmount());
			currentasserts.setLogin_comp(voucherreciept.getLogin_comp());
			currentassertsdao.createCurrentAsserts(currentasserts);
			
		}
		
		
		
		
		return insertorupdate;
	}


	@Override
	public boolean createStockGroups(StockGroupDetailsBean stockgroup) {
		// TODO Auto-generated method stub
		StockGroupBean stockgroup1=new StockGroupBean();
			stockgroup.setGetdate(util_date.generateDate());	
			stockgroup1.setGroupname(stockgroup.getName());
			stockgroup1.setLogin_comp(stockgroup.getLogin_comp());
			in_stockgroup.generateStockGroup(stockgroup1);
		return in_stockgroupdao.createStockGroup(stockgroup);
	}


	@Override
	public boolean createStockItems(StockItemBean stockitem) {
		// TODO Auto-generated method stub
		stockitem.setGendate(util_date.generateDate());
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
		
		
			voucherjournal.setGetdate(util_date.generateDate());
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
					
					
					
					/*System.out.println("ItemName\t"+cstock);
					System.out.println("Quantity\t"+cqty);
					System.out.println("Rate\t"+crate);
					System.out.println("Balance\t"+cbalance);*/
					
					
					cqty=cqty+Integer.parseInt(voucherjournal.getQuantity());
					crate=crate+Integer.parseInt(voucherjournal.getRate());
					
					totalclosingstock=hlp_fin.viewTotalClosingStock(voucherjournal.getNameofitem());
					int totalqnty=Integer.parseInt(totalclosingstock.get("totalqnty").toString());
					double totalamount=Double.parseDouble(totalclosingstock.get("totalamount").toString());
					calrate=totalamount/totalqnty;
					cbalance=cqty*calrate;
					
					/*System.out.println("ItemName\t"+cstock);
					System.out.println("Quantity\t"+cqty);
					System.out.println("Rate\t"+crate);
					System.out.println("Balance\t"+cbalance);
					System.out.println("CalRate\t"+calrate);*/
					
					
					
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
			//System.out.println("Amount1\t"+amount1);
			if(voucherjournal.getAmount().equals("")){
				balance=0.0;
			}else{
				balance=Double.parseDouble(voucherjournal.getAmount());	
			}
			//System.out.println("Amount2\t"+amount2);
			
			amount1=amount1+balance;//Balance For Amount1.
			amount2=amount2-balance;//Balance For Amount2.
			//			Integer presentamount=amount+ Integer.parseInt(vouchercontra.getAmmount());
	//		System.out.println("Present Amount\t"+presentamount);
			 presentamount1=amount1.toString();
			 presentamount2=amount2.toString();
			
			 
			 if(financehelper.currentAssetsIsAvailable( voucherjournal.getParticularby(), financehelper.gettingParentGroup(voucherjournal.getParticularby()), voucherjournal.getLogin_comp())){
				 System.out.println("*************************************************");
				 System.out.println("Current Assets Is Available");
					System.out.println("Under\t"+voucherjournal.getParticularby());
					
					System.out.println("Parent Group\t"+financehelper.gettingParentGroup(voucherjournal.getParticularby()));
					System.out.println("Amount for Under\t"+presentamount2);
					System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
					currentassertsdao.updateCurrentAsserts(voucherjournal.getParticularby(),presentamount2 , financehelper.gettingParentGroup(voucherjournal.getParticularby()),voucherjournal.getLogin_comp());	
					
				}else{
					System.out.println("Current Assets is Not Available");
					System.out.println("Particular is \t"+voucherjournal.getParticularby());
					System.out.println("Parent Group\t"+financehelper.gettingParentGroup(voucherjournal.getParticularby()));
					System.out.println("Company Name\t"+voucherjournal.getLogin_comp());
					
					 currentasserts.setLedgername(voucherjournal.getParticularby());
						currentasserts.setUnder(financehelper.gettingParentGroup(voucherjournal.getParticularby()));
						currentasserts.setBalance(presentamount2);
						currentasserts.setLogin_comp(voucherjournal.getLogin_comp());
						currentassertsdao.createCurrentAsserts(currentasserts);
					
					
					
				}
			 
			 System.out.println("Voucher Journal \t"+voucherjournal.getParticulars());
			 System.out.println("Voucher Parent Group\t"+financehelper.gettingParentGroup(voucherjournal.getParticulars()));
			 System.out.println("Company Name\t"+voucherjournal.getLogin_comp());
			//CurrentAssets
			 
			if(financehelper.currentAssetsIsAvailable( voucherjournal.getParticulars(), financehelper.gettingParentGroup(voucherjournal.getParticulars()), voucherjournal.getLogin_comp())){
				System.out.println("Current Assert Account is Available");
				currentassertsdao.updateCurrentAsserts(voucherjournal.getParticulars(), presentamount1, financehelper.gettingParentGroup(voucherjournal.getParticulars()),voucherjournal.getLogin_comp());
				
				System.out.println("Amount Updated!");
				}else{
				System.out.println("Current Assert Account Not Available");
				currentasserts.setLedgername(voucherjournal.getParticulars());
				currentasserts.setUnder(financehelper.gettingParentGroup(voucherjournal.getParticulars()));
				currentasserts.setBalance(presentamount1);
				currentasserts.setLogin_comp(voucherjournal.getLogin_comp());
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
	public boolean createVoucherRecipt(VocherContraBean vouchercontra) {
		// TODO Auto-generated method stub
		vouchercontra.setGendate(util_date.generateDate());
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
//		System.out.println("Present Amount\t"+presentamount);
		String presentamount1=amount1.toString();
		String presentamount2=amount2.toString();
		
		
		if(currentassertsdao.isAvailable(vouchercontra.getUnder(), financehelper.gettingParentGroup(vouchercontra.getUnder()),vouchercontra.getLogin_comp())){
			System.out.println("Current Assert Account is Available");
			//int amount=Integer.parseInt(currentassertsdao.viewCurrentAssertsAmount(financehelper.gettingParentGroup(vouchercontra.getParticular()), vouchercontra.getParticular()));
					
			currentassertsdao.updateCurrentAsserts(vouchercontra.getUnder(), presentamount1, financehelper.gettingParentGroup(vouchercontra.getUnder()),vouchercontra.getLogin_comp());
			
			System.out.println("Amount Updated!");
			}else{
			System.out.println("Current Assert Account Not Available");
			currentasserts.setLedgername(vouchercontra.getUnder());
			currentasserts.setUnder(financehelper.gettingParentGroup(vouchercontra.getUnder()));
			currentasserts.setBalance(presentamount1);
			currentasserts.setLogin_comp(vouchercontra.getLogin_comp());
			currentassertsdao.createCurrentAsserts(currentasserts);
		}	
		
				
		if(currentassertsdao.isAvailable(vouchercontra.getParticular(), financehelper.gettingParentGroup(vouchercontra.getParticular()),vouchercontra.getLogin_comp())){
			System.out.println("Current Assert Account is Available");
			//int amount=Integer.parseInt(currentassertsdao.viewCurrentAssertsAmount(financehelper.gettingParentGroup(vouchercontra.getParticular()), vouchercontra.getParticular()));
			
			
			
			currentassertsdao.updateCurrentAsserts(vouchercontra.getParticular(), presentamount2, financehelper.gettingParentGroup(vouchercontra.getParticular()),vouchercontra.getLogin_comp());
			
			
			
			System.out.println("Amount Updated!");
			}else{
			System.out.println("Current Assert Account Not Available");
			currentasserts.setLedgername(vouchercontra.getParticular());
			currentasserts.setUnder(financehelper.gettingParentGroup(vouchercontra.getParticular()));
			currentasserts.setBalance(presentamount2);
			currentasserts.setLogin_comp(vouchercontra.getLogin_comp());
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
		voucherpurchase.setGetdate(util_date.generateDate());
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
			System.out.println("Quantity\t"+quantity);
			rate=rate+Integer.parseInt(voucherpurchase.getRate());
			System.out.println("Rate is\t"+rate);
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
		System.out.println("Amount is\t"+amount);
		double amount1=Double.parseDouble(currentassertsdao.viewCurrentAssetsBalance(voucherpurchase.getPartyaccountname()));
		amount1=amount1+Double.parseDouble(voucherpurchase.getAmount());
		
		System.out.println("Parent Group"+financehelper.gettingParentGroup(voucherpurchase.getPaymentmode()));
		if(currentassertsdao.isAvailable(voucherpurchase.getPaymentmode(), financehelper.gettingParentGroup(voucherpurchase.getPaymentmode()),voucherpurchase.getLogin_comp())){
			currentassertsdao.updateCurrentAsserts(voucherpurchase.getPaymentmode(), Double.toString(amount1), financehelper.gettingParentGroup(voucherpurchase.getPaymentmode()),voucherpurchase.getLogin_comp());
			/*currentassertsdao.updateCurrentAssets(Double.toString(amount), voucherpurchase.getPurchaseledger(),voucherpurchase.getLogin_comp());*/
		}else{
			currentasserts.setLedgername(voucherpurchase.getPaymentmode());
			currentasserts.setBalance(Double.toString(amount1));
			currentasserts.setUnder(financehelper.gettingParentGroup(voucherpurchase.getPaymentmode()));
			System.out.println("Parent Group\t"+financehelper.gettingParentGroup(in_ledgerdetailsdao.viewUnderByUsingLedgerName(voucherpurchase.getPaymentmode())));
			currentasserts.setLogin_comp(voucherpurchase.getLogin_comp());
			currentassertsdao.createCurrentAsserts(currentasserts);
		}
		
		
		
		
		//Current Assets.
		if(currentassertsdao.isAvailable(voucherpurchase.getPurchaseledger(), financehelper.gettingParentGroup(voucherpurchase.getPurchaseledger()),voucherpurchase.getLogin_comp())){
			currentassertsdao.updateCurrentAsserts(voucherpurchase.getPurchaseledger(), Double.toString(amount), financehelper.gettingParentGroup(voucherpurchase.getPurchaseledger()),voucherpurchase.getLogin_comp());
			/*currentassertsdao.updateCurrentAssets(Double.toString(amount), voucherpurchase.getPurchaseledger(),voucherpurchase.getLogin_comp());*/
		}else{
			currentasserts.setLedgername(voucherpurchase.getPurchaseledger());
			currentasserts.setBalance(Double.toString(amount));
			currentasserts.setUnder(financehelper.gettingParentGroup(voucherpurchase.getPurchaseledger()));
			System.out.println("Parent Group\t"+financehelper.gettingParentGroup(voucherpurchase.getPurchaseledger()));
			currentasserts.setLogin_comp(voucherpurchase.getLogin_comp());
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
		
		vouchersales.setGendate(util_date.generateDate());
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
			System.out.println("Quantity\t"+quantity);
			rate=rate+Integer.parseInt(vouchersales.getRate());
			System.out.println("Rate is\t"+rate);
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
		System.out.println("Amount is\t"+amount);
		currentassertsdao.updateCurrentAssets(Double.toString(amount), vouchersales.getNameofitem(),vouchersales.getLogin_comp());
		double amount1=Double.parseDouble(currentassertsdao.viewCurrentAssetsBalance(vouchersales.getNameofitem()));
		amount1=amount1+Double.parseDouble(vouchersales.getAmount());
		
		
		if(currentassertsdao.isAvailable(vouchersales.getPaymentmode(), financehelper.gettingParentGroup(vouchersales.getPaymentmode()),vouchersales.getLogin_comp())){
			currentassertsdao.updateCurrentAsserts(vouchersales.getPaymentmode(), Double.toString(amount1), financehelper.gettingParentGroup(vouchersales.getPaymentmode()),vouchersales.getLogin_comp());	
			//currentassertsdao.updateCurrentAssets(Double.toString(amount), vouchersales.getSalesledger(),vouchersales.getLogin_comp());
		}else{
			currentasserts.setLedgername(vouchersales.getPaymentmode());
			currentasserts.setBalance(Double.toString(amount1));
			System.out.println("Sales Payment Mode Parent Group\t"+financehelper.gettingParentGroup(vouchersales.getPaymentmode()));
			currentasserts.setUnder(financehelper.gettingParentGroup(vouchersales.getPaymentmode()));
			currentasserts.setLogin_comp(vouchersales.getLogin_comp());
			currentassertsdao.createCurrentAsserts(currentasserts);
		}
		
		
		if(currentassertsdao.isAvailable(vouchersales.getSalesledger(), financehelper.gettingParentGroup(vouchersales.getSalesledger()),vouchersales.getLogin_comp())){
			currentassertsdao.updateCurrentAsserts(vouchersales.getSalesledger(), Double.toString(amount1), financehelper.gettingParentGroup(vouchersales.getSalesledger()),vouchersales.getLogin_comp());
			//currentassertsdao.updateCurrentAssets(Double.toString(amount), vouchersales.getSalesledger(),vouchersales.getLogin_comp());
		}else{
			currentasserts.setLedgername(vouchersales.getSalesledger());
			currentasserts.setBalance(Double.toString(amount1));
			System.out.println("Sales Ledger Parent Group\t"+financehelper.gettingParentGroup(vouchersales.getSalesledger()));
			currentasserts.setUnder(financehelper.gettingParentGroup(vouchersales.getSalesledger()));
			currentasserts.setLogin_comp(vouchersales.getLogin_comp());
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
		voucherpurchasereturn.setGendate(util_date.generateDate());
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
			System.out.println("Quantity\t"+quantity);
			rate=rate+Integer.parseInt(voucherpurchasereturn.getRate());
			System.out.println("Rate is\t"+rate);
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
		System.out.println("Amount is\t"+amount);
		//currentassertsdao.updateCurrentAssets(Double.toString(amount), voucherpurchasereturn.getNameofitem(),voucherpurchasereturn.getLogin_comp());
		double amount1=Double.parseDouble(currentassertsdao.viewCurrentAssetsBalance(voucherpurchasereturn.getNameofitem()));
		amount1=amount1+Double.parseDouble(voucherpurchasereturn.getAmount());
		
		if(currentassertsdao.isAvailable(voucherpurchasereturn.getPartyacoount(), financehelper.gettingParentGroup(voucherpurchasereturn.getPartyacoount()),voucherpurchasereturn.getLogin_comp())){
			currentassertsdao.updateCurrentAsserts(voucherpurchasereturn.getPartyacoount(), Double.toString(amount), financehelper.gettingParentGroup(voucherpurchasereturn.getPartyacoount()),voucherpurchasereturn.getLogin_comp());
			//currentassertsdao.updateCurrentAssets(Double.toString(amount), voucherpurchasereturn.getPurchaseledger(),voucherpurchasereturn.getLogin_comp());
	}else{
		currentasserts.setLedgername(voucherpurchasereturn.getPartyacoount());
		currentasserts.setBalance(Double.toString(amount));
		System.out.println("Sales Parent Group\t"+financehelper.gettingParentGroup(in_ledgerdetailsdao.viewUnderByUsingLedgerName(voucherpurchasereturn.getPurchaseledger())));
		currentasserts.setUnder(financehelper.gettingParentGroup(in_ledgerdetailsdao.viewUnderByUsingLedgerName(voucherpurchasereturn.getPurchaseledger())));
		currentassertsdao.createCurrentAsserts(currentasserts);
	}
		
		
		
		
		
		if(currentassertsdao.isAvailable(voucherpurchasereturn.getPurchaseledger(), financehelper.gettingParentGroup(voucherpurchasereturn.getPurchaseledger()),voucherpurchasereturn.getLogin_comp())){
				//currentassertsdao.updateCurrentAssets(Double.toString(amount1), voucherpurchasereturn.getPurchaseledger(),voucherpurchasereturn.getLogin_comp());
				currentassertsdao.updateCurrentAsserts(voucherpurchasereturn.getPurchaseledger(), Double.toString(amount1), financehelper.gettingParentGroup(voucherpurchasereturn.getPurchaseledger()),voucherpurchasereturn.getLogin_comp());
		}else{
			currentasserts.setLedgername(voucherpurchasereturn.getPurchaseledger());
			currentasserts.setBalance(Double.toString(amount1));
			System.out.println("Sales Parent Group\t"+financehelper.gettingParentGroup(voucherpurchasereturn.getPurchaseledger()));
			currentasserts.setUnder(financehelper.gettingParentGroup(voucherpurchasereturn.getPurchaseledger()));
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
		vouchersalesreturnbean.setGendate(util_date.generateDate());
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
			System.out.println("Quantity\t"+quantity);
			rate=rate+Integer.parseInt(vouchersalesreturnbean.getRate());
			System.out.println("Rate is\t"+rate);
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
		System.out.println("Amount is\t"+amount);
		currentassertsdao.updateCurrentAssets(Double.toString(amount), vouchersalesreturnbean.getNameofitem(),vouchersalesreturnbean.getLogin_comp());
		
		double amount1=Double.parseDouble(currentassertsdao.viewCurrentAssetsBalance(vouchersalesreturnbean.getNameofitem()));
		amount1=amount1+Double.parseDouble(vouchersalesreturnbean.getAmount());
		
		if(currentassertsdao.isAvailable(vouchersalesreturnbean.getSalesledger(), financehelper.gettingParentGroup(vouchersalesreturnbean.getSalesledger()),vouchersalesreturnbean.getLogin_comp())){
			currentassertsdao.updateCurrentAsserts(vouchersalesreturnbean.getSalesledger(), Double.toString(amount), financehelper.gettingParentGroup(vouchersalesreturnbean.getSalesledger()),vouchersalesreturnbean.getLogin_comp());
			
			//currentassertsdao.updateCurrentAssets(Double.toString(amount), vouchersalesreturnbean.getSalesledger(),vouchersalesreturnbean.getLogin_comp());
		}else{
			currentasserts.setLedgername(vouchersalesreturnbean.getSalesledger());
			currentasserts.setBalance(vouchersalesreturnbean.getAmount());
			System.out.println("Sales Parent Group\t"+financehelper.gettingParentGroup(in_ledgerdetailsdao.viewUnderByUsingLedgerName(vouchersalesreturnbean.getSalesledger())));
			currentasserts.setUnder(financehelper.gettingParentGroup(in_ledgerdetailsdao.viewUnderByUsingLedgerName(vouchersalesreturnbean.getSalesledger())));
			currentassertsdao.createCurrentAsserts(currentasserts);
		}
		
		
		if(currentassertsdao.isAvailable(vouchersalesreturnbean.getPartyaccount(), financehelper.gettingParentGroup(vouchersalesreturnbean.getPartyaccount()),vouchersalesreturnbean.getLogin_comp())){
			
			currentassertsdao.updateCurrentAsserts(vouchersalesreturnbean.getPartyaccount(), Double.toString(amount), financehelper.gettingParentGroup(vouchersalesreturnbean.getPartyaccount()),vouchersalesreturnbean.getLogin_comp());
			//currentassertsdao.updateCurrentAssets(Double.toString(amount1), vouchersalesreturnbean.getPartyaccount(),vouchersalesreturnbean.getLogin_comp());
		}else{
			currentasserts.setLedgername(vouchersalesreturnbean.getPartyaccount());
			currentasserts.setBalance(Double.toString(amount1));
			System.out.println("Sales Parent Group\t"+financehelper.gettingParentGroup(in_ledgerdetailsdao.viewUnderByUsingLedgerName(vouchersalesreturnbean.getPartyaccount())));
			currentasserts.setUnder(financehelper.gettingParentGroup(in_ledgerdetailsdao.viewUnderByUsingLedgerName(vouchersalesreturnbean.getSalesledger())));
			currentassertsdao.createCurrentAsserts(currentasserts);
		}
		
		
		return insertorupdate;
	}


	@Override
	public boolean generateInvoice(InvoiceFormBean invoicebean) {
		// TODO Auto-generated method stub
		invoicebean.setGendate(util_date.generateDate());
		return in_invoicedao.createInvoice(invoicebean);
	}


	@Override
	public boolean geneateInternetExp(InternetExpBean internetexp) {
		// TODO Auto-generated method stub
		internetexp.setGendate(util_date.generateDate());
		return in_internetexpdao.generateInternetExp(internetexp);
	}


	@Override
	public boolean generateAdvertisementExp(AdvertisementExpenses advtisementexp) {
		// TODO Auto-generated method stub
		advtisementexp.setGendate(util_date.generateDate());
		return in_advertisementdao.generateAdvertisementExp(advtisementexp);
	}


	@Override
	public boolean geneateOfficeExp(OfficeExp officeexp) {
		// TODO Auto-generated method stub
		officeexp.setGendate(util_date.generateDate());
		
		return in_officeexpdao.generateOfficeExp(officeexp);
	}


	@Override
	public boolean generateRepairsAndMaintenance(
			RepairMaintenenceBean repairsandmaintenance) {
		// TODO Auto-generated method stub
		repairsandmaintenance.setGendate(util_date.generateDate());
		return in_repairsandmaintenancedao.generateRepairsAndMaintenance(repairsandmaintenance);
	}


	@Override
	public boolean generatePostageAndCorrier(PostageExpBean postageexp) {
		// TODO Auto-generated method stub
		postageexp.setGendate(util_date.generateDate());
		return in_postageexpdao.generatePostageExp(postageexp);
	}


	//Company Registration.
	@Override
	public boolean generateCompany(CompanyRegistrationBean companyregistration) {
		// TODO Auto-generated method stub
		LoginBean loginbean=new LoginBean();
		if(in_companyregdao.viewCompanyIsAvailable(companyregistration.getUsername(), companyregistration.getCompanyname())){
			insertorupdate=false;
		}else{
			companyregistration.setApp_status("Admin");
			companyregistration.setGendate(util_date.generateDate());
			
			insertorupdate=in_companyregdao.generateCompany(companyregistration);
			loginbean.setUsername(companyregistration.getUsername());
			loginbean.setPassword(companyregistration.getPassword());
			loginbean.setDesignation(companyregistration.getApp_status());
			loginbean.setCompanyname(companyregistration.getCompanyname());
			in_logindao.save(loginbean);
			insertorupdate=true;
		}
		
		return insertorupdate;
	}

//	Employee Creation.
	@Override
	public boolean generateEmployee(EmployeeBean empbean) {
		// TODO Auto-generated method stub
		
		if(in_employeedao.isAvaliable(empbean.getUsername(), empbean.getPassword())){
			insertorupdate=false;//Not Inserted
		}else{
		long sno=in_employeedao.getEmployeeId();
		String empid="emp"+sno+1;
		empbean.setEmpid(empid);
		empbean.setDesignation("Employee");
		empbean.setGendate(util_date.generateDate());
		in_employeedao.generateEmployee(empbean);//Employee Generation.
		LoginBean loginbean=new LoginBean();
		loginbean.setUsername(empbean.getUsername());
		loginbean.setPassword(empbean.getPassword());
		loginbean.setDesignation(empbean.getDesignation());
		loginbean.setCompanyname(empbean.getCompanyname());
		in_logindao.save(loginbean);//Login Generation.
		insertorupdate=true;//Inserted.
		
		}
		return insertorupdate;
	}


@Override
public boolean generateVatAndTax(VatAndTaxBean vatandtax) {
	// TODO Auto-generated method stub

	vatandtax.setGendate(util_date.generateDate());
	return in_invoicevatdao.geneateInvoiceVatAndTax(vatandtax);
}


@Override
public boolean geneateLogoPath(HttpServletRequest request,
		HttpServletResponse response, String companyname) {
	// TODO Auto-generated method stub
	String path=null;
	insertorupdate=util_fileupload.generateAndStoreImagePath(request, response,companyname);
	System.out.println("Company Name\t"+companyname);
	System.out.println("Path\t"+path);
	
	return insertorupdate;
}


@Override
public boolean generateAgingOfAccountPayable(
		AggingaccountpaybleBean aggingofaccountpayable) {
	// TODO Auto-generated method stub
	aggingofaccountpayable.setGendate(util_date.generateDate());
	return in_agingofaccountpayabledao.generateAgingOfAccountPayable(aggingofaccountpayable);
}


@Override
public boolean generateAgingOfAccountRecivable(
		AggingaccountreceivableBean agingofaccountrecivable) {
	// TODO Auto-generated method stub
	agingofaccountrecivable.setGendate(util_date.generateDate());
	return in_agingofaccountrecivabledao.generateAgingOfAccountRecivable(agingofaccountrecivable);
}


@Override
public boolean generateCashDisbursmentJournal(
		CashdisbursementsjournalBean cashdisbursmentjournal) {
	// TODO Auto-generated method stub
	cashdisbursmentjournal.setGendate(util_date.generateDate());
	return in_cashdisbursmentjournaldao.generateCashDisbursmentJournal(cashdisbursmentjournal);
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
	cashreceiptsjournalBean.setGendate(util_date.generateDate());
	return in_CashreceiptsjournalDAO.generatecashreceiptsjournal(cashreceiptsjournalBean);
}


@Override
public boolean createDailycashreport(DailycashreportBean dailycashreportBean) {
	// TODO Auto-generated method stub
	dailycashreportBean.setGendate(util_date.generateDate());
	return in_DailycashreportDAO.generateDailycashreport(dailycashreportBean);
}


@Override
public boolean createPettycashjournal(PettycashjornalBean pettycashjornalBean) {
	// TODO Auto-generated method stub
	pettycashjornalBean.setGendate(util_date.generateDate());
	return in_PettycashjournalDAO.createPettyCashJournal(pettycashjornalBean);
}


@Override
public boolean createPettycashvoucher(PettycashvoucherBean pettycashvoucherBean) {
	// TODO Auto-generated method stub
	
	pettycashvoucherBean.setGendate(util_date.generateDate());
	return in_PettycashvoucherDAO.generatepettycashjournal(pettycashvoucherBean);
}


@Override
public List viewVatByCompanyName(String companyname) {
	// TODO Auto-generated method stub
	
	return in_invoicevatdao.viewVatByCompanyName(companyname);
}


@Override
public boolean updateVatByCompanyName(VatAndTaxBean vatandtax) {
	// TODO Auto-generated method stub
	String companyname=vatandtax.getCompanyname();
	String vat=vatandtax.getVat();
	String tax=vatandtax.getTax();
	String edutax=vatandtax.getEduservicetax();
	
	return in_invoicevatdao.updateVatByCompanyName(companyname, vat, tax, edutax);
}


@Override
public String viewImagePathByCompanyName(String companyname) {
	// TODO Auto-generated method stub
	
	return in_companyregdao.viewImageByCompanyName(companyname);
}


@Override
public boolean generateCompanyPaySlip(CompanyPaySlipBean companypayslip) {
	// TODO Auto-generated method stub
	companypayslip.setGendate(util_date.generateDate());
	return in_comppaydao.generateCompanyPaySlip(companypayslip);
}


@Override
public List<EmployeeBean> searchEmployeeByComp(String comp) {
	// TODO Auto-generated method stub
	
	return in_employeedao.viewEmployeeByComp(comp);
}


@Override
public boolean generateUniversity(UniversityBean university) {
	// TODO Auto-generated method stub
	
	return in_unidao.generateUniversity(university);
}


@Override
public boolean generateStudent(StudentBean empbean) {
	// TODO Auto-generated method stub
	return in_stddao.generateStudent(empbean);
}


@Override
public boolean generateReciept(CourierRecieptBean courierreciept) {
	// TODO Auto-generated method stub
	
	return in_courierdao.generateCourierReciept(courierreciept);
}


@Override
public boolean generateCourierDispath(CourierDispatchDetailsBean courierdispatch) {
	// TODO Auto-generated method stub
	return in_courierdispathdao.generateCourierDispath(courierdispatch);
}


@Override
public List<UniversityBean> viewUniversityList(String collegeName) {
	// TODO Auto-generated method stub
	
	return in_unidao.viewUniversityByCollege(collegeName);
}


@Override
public List<UniversityBean> viewUniversity(long id) {
	// TODO Auto-generated method stub
	
	return in_unidao.viewUniversityById(id);
}


@Override
public boolean updateUniversity(UniversityBean uni) {
	// TODO Auto-generated method stub
	
	return in_unidao.updateUniversity(uni);
}


@Override
public List<StudentBean> viewStudent(StudentBean st) {
	// TODO Auto-generated method stub
	
	return in_stddao.viewResultStudent(st);
}


@Override
public List<CourierRecieptBean> searchCourierReciept(CourierRecieptBean crb) {
	// TODO Auto-generated method stub
	return in_courierdao.searchCourierReciept(crb);
}


@Override
public List<CourierDispatchDetailsBean> searchCourierDispathc(
			CourierDispatchDetailsBean cddb) {
	// TODO Auto-generated method stub
	
	return in_courierdispathdao.searchCourierDispath(cddb);
}


@Override
public List<CompanyPaySlipBean> viewCompanyPaySlip() {
	// TODO Auto-generated method stub
	
	return null;
}


@Override
public JSONObject generatePaySlip(long id,String comp) {
	// TODO Auto-generated method stub
	return hlp_payslipcal.getPaySlipData(id,comp);
}


@Override
public boolean uploadMemoImage(HttpServletRequest request,
		HttpServletResponse response, String companyname,String id) {
	// TODO Auto-generated method stub
	String path=null;
	insertorupdate=hlp_memoupload.generateAndStoreImagePath1(request, response,companyname,id);
	System.out.println("Company Name\t"+companyname);
	System.out.println("Path\t"+path);
	
	return insertorupdate;
}


@Override
public boolean uploadStudentImage(HttpServletRequest request,
		HttpServletResponse response, String companyname, String id) {
	// TODO Auto-generated method stub
	
	return hlp_studentimgupload.generateAndStoreImagePath1(request, response, companyname, id);
}


@Override
public List<StudentBean> searchStudentRemainingAmount(StudentBean stbean) {
	// TODO Auto-generated method stub
	List<StudentBean> lst_bean;
	String balanceamount=null; 	
	
	
	
	
	
	balanceamount=hlp_finance.gettingStudentRemaingAmount(stbean.getEntrollno(),stbean.getRcno(),stbean.getUniversity(),stbean.getCourse());
	
	lst_bean=in_stddao.viewResultPaid(stbean);

	return lst_bean;
}


@Override
public boolean generatePaySlip(FinalPaySlipBean finalpayslip) {
	// TODO Auto-generated method stub
	
	return in_payslipdao.generateFinalPaySlip(finalpayslip);
}


@Override
public List<EmployeeBean> viewEmployee(long id) {
	// TODO Auto-generated method stub
	
	return in_employeedao.viewEmployeeById(id);
}


@Override
public List<EmployeeBean> viewEmployee(String company) {
	// TODO Auto-generated method stub
	return in_employeedao.viewEmployeeByComp(company);
}


}