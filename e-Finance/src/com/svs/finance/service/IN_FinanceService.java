package com.svs.finance.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.svs.finance.bean.AdvertisementExpenses;
import com.svs.finance.bean.AggingaccountpaybleBean;
import com.svs.finance.bean.AggingaccountreceivableBean;
import com.svs.finance.bean.AutoExpencesesTravelBean;
import com.svs.finance.bean.CashdisbursementsjournalBean;
import com.svs.finance.bean.CashreceiptsjournalBean;
import com.svs.finance.bean.CompanyPaySlipBean;
import com.svs.finance.bean.CompanyRegistrationBean;
import com.svs.finance.bean.CourierDispatchDetailsBean;
import com.svs.finance.bean.CourierRecieptBean;
import com.svs.finance.bean.DailycashreportBean;
import com.svs.finance.bean.EmployeeBean;
import com.svs.finance.bean.EntertainmentExpencesesBean;
import com.svs.finance.bean.FinalPaySlipBean;
import com.svs.finance.bean.FoodExcepensesBean;
import com.svs.finance.bean.GroupDetailsBean;
import com.svs.finance.bean.HotelExpensesBean;
import com.svs.finance.bean.InternetExpBean;
import com.svs.finance.bean.InvoiceFormBean;
import com.svs.finance.bean.LedgerDetailsBean;
import com.svs.finance.bean.MeasuresBean;
import com.svs.finance.bean.MisleniousExpencesesBean;
import com.svs.finance.bean.NonTradingExpencesesBean;
import com.svs.finance.bean.OfficeExp;
import com.svs.finance.bean.PettycashjornalBean;
import com.svs.finance.bean.PettycashvoucherBean;
import com.svs.finance.bean.PhoneBillExpencesesBean;
import com.svs.finance.bean.PostageExpBean;
import com.svs.finance.bean.RepairMaintenenceBean;
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
import com.svs.finance.bean.VoucherRecieptBean;

public interface IN_FinanceService {

	//ComapnyRegistration
	public boolean generateCompany(CompanyRegistrationBean companyregistration);
	public boolean generateEmployee(EmployeeBean empbean);
	public boolean generateVatAndTax(VatAndTaxBean vatandtax);
	public List viewVatByCompanyName(String companyname);
	public boolean updateVatByCompanyName(VatAndTaxBean vatandtax);
	public String viewImagePathByCompanyName(String companyname);
	
	public List<EmployeeBean> viewEmployee(long id);
	
	public List<EmployeeBean> viewEmployee(String company);
	
	
	public boolean geneateLogoPath(HttpServletRequest request,HttpServletResponse response,String companyname);
	//Human Resource Employee
	public List<EmployeeBean> searchEmployeeByComp(String comp);
	
	
	public boolean generateUniversity(UniversityBean university);
	//Finance Starts
	public boolean generateInvoice(InvoiceFormBean invoicebean);
	
	public boolean generateStudent(StudentBean empbean);
	
	//Courier Reciept
	public boolean generateReciept(CourierRecieptBean courierreciept);
	public boolean generateCourierDispath(CourierDispatchDetailsBean courierdispatch);
	
	//PaySlip
	public boolean generateCompanyPaySlip(CompanyPaySlipBean companypayslip);
	public boolean generatePaySlip(FinalPaySlipBean finalpayslip);
	
	
	
	public List<UniversityBean> viewUniversityList(String collegeName);
	public List<UniversityBean> viewUniversity(long id);
	public boolean updateUniversity(UniversityBean uni);
	
	public List<StudentBean> viewStudent(StudentBean st);
	public List<CourierRecieptBean> searchCourierReciept(CourierRecieptBean crb);
	public List<CourierDispatchDetailsBean> searchCourierDispathc(CourierDispatchDetailsBean cddb);
	public List<StudentBean> searchStudentRemainingAmount(StudentBean stbean);
	
	
	//PaySlip Details
	public List<CompanyPaySlipBean> viewCompanyPaySlip();
	public JSONObject generatePaySlip(long id,String comp);
	
	//PaySlip Details
	
	
	//Upload Memo Image
	public boolean uploadMemoImage(HttpServletRequest request,HttpServletResponse response,String companyname,String id);
	public boolean uploadStudentImage(HttpServletRequest request,HttpServletResponse response,String companyname,String id);
	
	//Expenses
	
	//Daily Auto Expenses Travel.
	public boolean createDailyAutoExpenses(AutoExpencesesTravelBean autoexpensestravel);
	public boolean generatePhoneBillDailyExpenses(PhoneBillExpencesesBean phonebillexpenses);//PhoneBillExpenses
	public boolean geneateFoodBillExp(FoodExcepensesBean foodexpen);
	public boolean geneateHotelExp(HotelExpensesBean hotelexp);
	public boolean generateEntertainmentExp(EntertainmentExpencesesBean entertainmentexp);
	public boolean generateMisleneousExp(MisleniousExpencesesBean misleneousexp);
	public boolean generateNonTradingExp(NonTradingExpencesesBean nontradingexp);
	public boolean geneateInternetExp(InternetExpBean internetexp);
	public boolean generateAdvertisementExp(AdvertisementExpenses advtisementexp);
	public boolean geneateOfficeExp(OfficeExp officeexp);
	public boolean generateRepairsAndMaintenance(RepairMaintenenceBean repairsandmaintenance);
	public boolean generatePostageAndCorrier(PostageExpBean postageexp);
	
	//Aging Of Account
	public boolean generateAgingOfAccountPayable(AggingaccountpaybleBean aggingofaccountpayable);
	public boolean generateAgingOfAccountRecivable(AggingaccountreceivableBean agingofaccountrecivable);
	public boolean generateCashDisbursmentJournal(CashdisbursementsjournalBean cashdisbursmentjournal);
	public boolean generateCashRecieptJournal(CashreceiptsjournalBean cashreciptjournal);
	public boolean createCashreceiptsjournal(CashreceiptsjournalBean cashreceiptsjournalBean);
	public boolean createDailycashreport(DailycashreportBean dailycashreportBean);
	public boolean createPettycashjournal(PettycashjornalBean pettycashjornalBean);
	public boolean createPettycashvoucher(PettycashvoucherBean pettycashvoucherBean);
	//Accounts
	public boolean createLedgerDetails(LedgerDetailsBean ledgerdetails);
	public boolean createVoucherDetails(VocherDetailsBean voucherdetailsbean);	
	public boolean createGroupDetails(GroupDetailsBean groupdetails);
	
	//Vocher Types
	public boolean createVoucherReciept(VoucherRecieptBean voucherreciept);
	public boolean createVoucherPayment(VocherPaymentBean voucherpayment) ;
	public boolean createVoucherJournal(VocherJournalBean voucherjournal);
	public boolean createVoucherRecipt(VocherContraBean vouchercontrabean);
	public boolean createVoucherPurchase(VocherPurchaseBean voucherpurchase);
	public boolean createVoucherSales(VocherSalesBean vouchersales);
	public boolean createVoucherPurchaseReturn(VocherPurchaseReturnBean voucherpurchasereturn);
	public boolean createVoucherSalesReturn(VocherSalesReturnBean voucherreturnbean);
	//Stock 
	public boolean createStockGroups(StockGroupDetailsBean stockgroup);
	public boolean createStockItems(StockItemBean stockitem);
	public boolean createMeasureUnits(MeasuresBean measuresbean);
	
	
}
