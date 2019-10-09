package com.svs.ensign.resort.service;

import java.util.List;

import com.svs.ensign.resort.bean.AggingaccountpaybleBean;
import com.svs.ensign.resort.bean.AggingaccountreceivableBean;
import com.svs.ensign.resort.bean.AutoExpencesesTravelBean;
import com.svs.ensign.resort.bean.CashdisbursementsjournalBean;
import com.svs.ensign.resort.bean.CashreceiptsjournalBean;
import com.svs.ensign.resort.bean.DailycashreportBean;
import com.svs.ensign.resort.bean.EntertainmentExpencesesBean;
import com.svs.ensign.resort.bean.FinanceCustomerBean;
import com.svs.ensign.resort.bean.FoodExcepensesBean;
import com.svs.ensign.resort.bean.GroupDetailsBean;
import com.svs.ensign.resort.bean.HotelExpensesBean;
import com.svs.ensign.resort.bean.LedgerDetailsBean;
import com.svs.ensign.resort.bean.MeasuresBean;
import com.svs.ensign.resort.bean.MisleniousExpencesesBean;
import com.svs.ensign.resort.bean.NonTradingExpencesesBean;
import com.svs.ensign.resort.bean.PettycashjornalBean;
import com.svs.ensign.resort.bean.PettycashvoucherBean;
import com.svs.ensign.resort.bean.PhoneBillExpencesesBean;
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
import net.sf.json.JSONObject;

public interface IN_FinanceService {

    public boolean createFinanceCustomer(FinanceCustomerBean fncust);

    public JSONObject viewFinanceCustomerByExecutorID(String username);

    public JSONObject viewCustomerInstallmentsByAdmin();

    public JSONObject viewFnCustomerInstallmentsByManagerID(String username);

    public boolean updateCustomerInstallments(FinanceCustomerBean fncust);

    public JSONObject viewCustomerByCustomerId(long username);

    //Finance Starts
    //Expenses
    //Daily Auto Expenses Travel.
    public boolean createDailyAutoExpenses(AutoExpencesesTravelBean autoexpensestravel);

    public boolean generatePhoneBillDailyExpenses(PhoneBillExpencesesBean phonebillexpenses);//PhoneBillExpenses

    public boolean geneateFoodBillExp(FoodExcepensesBean foodexpen);

    public boolean geneateHotelExp(HotelExpensesBean hotelexp);

    public boolean generateEntertainmentExp(EntertainmentExpencesesBean entertainmentexp);

    public boolean generateMisleneousExp(MisleniousExpencesesBean misleneousexp);

    public boolean generateNonTradingExp(NonTradingExpencesesBean nontradingexp);

    //Executive
    public JSONObject viewAutoTravelExpensesByExecutive(String deltby);

    public JSONObject viewPhoneBillExpensesByExecutive(String deltby);

    public JSONObject viewFoodExpensesByExecutive(String username);

    public JSONObject viewHotelExpensesByExecutive(String username);

    public JSONObject viewEntertainmentExpByExecutive(String username);

    public JSONObject viewMisleneousExpByExecutive(String username);

    public JSONObject viewNonTradingExpByExecutive(String username);
    //Manager
    //Director

    //Aging Of Account
    public boolean generateAgingOfAccountPayable(AggingaccountpaybleBean aggingofaccountpayable);

    public boolean generateAgingOfAccountRecivable(AggingaccountreceivableBean agingofaccountrecivable);

    public boolean generateCashDisbursmentJournal(CashdisbursementsjournalBean cashdisbursmentjournal);

    public boolean generateCashRecieptJournal(CashreceiptsjournalBean cashreciptjournal);

    public boolean createCashreceiptsjournal(CashreceiptsjournalBean cashreceiptsjournalBean);

    public boolean createDailycashreport(DailycashreportBean dailycashreportBean);

    public boolean createPettycashjournal(PettycashjornalBean pettycashjornalBean);

    public boolean createPettycashvoucher(PettycashvoucherBean pettycashvoucherBean);

    //Executive
    public JSONObject viewAgingOfAccountPayableByExecutive(String username);

    //Accounts
    public boolean createLedgerDetails(LedgerDetailsBean ledgerdetails);

    public boolean createVoucherDetails(VocherDetailsBean voucherdetailsbean);

    public boolean createGroupDetails(GroupDetailsBean groupdetails);

    //Vocher Types
    public boolean createVoucherReciept(VoucherRecieptBean voucherreciept);

    public boolean createVoucherPayment(VocherPaymentBean voucherpayment);

    public boolean createVoucherJournal(VocherJournalBean voucherjournal);

    public boolean createVoucherContra(VocherContraBean vouchercontrabean);

    public boolean createVoucherPurchase(VocherPurchaseBean voucherpurchase);

    public boolean createVoucherSales(VocherSalesBean vouchersales);

    public boolean createVoucherPurchaseReturn(VocherPurchaseReturnBean voucherpurchasereturn);

    public boolean createVoucherSalesReturn(VocherSalesReturnBean voucherreturnbean);
    //Stock 

    public boolean createStockGroups(StockGroupDetailsBean stockgroup);

    public boolean createStockItems(StockItemBean stockitem);

    public boolean createMeasureUnits(MeasuresBean measuresbean);

}
