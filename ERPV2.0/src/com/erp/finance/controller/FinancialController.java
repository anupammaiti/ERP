package com.erp.finance.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

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
import com.erp.finance.bean.Groups;
import com.erp.finance.bean.HotelExpensesBean;
import com.erp.finance.bean.LedgerBean;
import com.erp.finance.bean.MeasuresBean;
import com.erp.finance.bean.MisleniousExpencesesBean;
import com.erp.finance.bean.NonTradingExpencesesBean;
import com.erp.finance.bean.PhoneBillExpencesesBean;
import com.erp.finance.bean.StockGroupBean;
import com.erp.finance.bean.StockItemsBean;
import com.erp.finance.bean.TempPaySlipBean;
import com.erp.finance.bean.VocherDetailsBean;
import com.erp.finance.bean.VocherTyopeBean;
import com.erp.finance.bean.WeeklyExpencesesReportBean;
import com.erp.finance.service.FinanceServiceIN;
import com.erp.inventory.bean.PettyCashVocherBean;
import com.erp.inventory.bean.PettyCastBean;
import com.erp.inventory.service.InventoryServiceIN;
import com.erp.sales.sl.bean.InvoiceFormBean;


/**
 * @author RaviKiran
 * @version 2.0, Sep 24, 2013
 */

@Controller
public class FinancialController {

	@Autowired
	FinanceServiceIN fnservice;
	
	@Autowired
	InventoryServiceIN invser;

	
	/**
	 * @param model send the bean object to the jsp
	 * @return null
	 */
	@RequestMapping(value="account_information.erp",method=RequestMethod.GET)
	public String createFinancialForm(ModelMap model,@RequestBody String date){
		
		return "account_information";
	}
	
	/**
	 * @param request send the account_information bean values 
	 * @param response send success for inserting the values
	 * @return Display the values for balance sheet.
	 */
	@RequestMapping(value="fn_balance_sheet.erp",method=RequestMethod.GET)
	public ModelAndView createBalaceSheet(HttpServletRequest request,HttpServletResponse response){
		ModelMap model=new ModelMap();
		
		return new ModelAndView("fn_balance_sheet",model);
	}
	
	/**
	 * @param response Give the 
	 * @return Display the Profit and Loss Screen
	 */
	@RequestMapping(value="fn_profit_loss.erp",method=RequestMethod.GET)
	public ModelAndView createProfitAndLoss(HttpServletResponse response){
		ModelMap model=new ModelMap();
		
		return new ModelAndView("fn_profit_loss",model);
	}
	
	/**
	 * @param model It create the CompanyPaySlip Bean
	 * @return Create Object for the CompanyPaySlip
	 */
	@RequestMapping(value="CompanyPaySlip.erp",method=RequestMethod.GET)
	public String createCompanyPaySlip(ModelMap model,HttpServletRequest request){
		model.addAttribute(new CompanyPaySlipBean());
		request.setAttribute("companypayslip",fnservice.getCompanypayslip());
		return "CompanyPaySlip";
	}
	
	/**
	 * @param companypayslip Send the Bean value to next Service Layer
	 * @return send to previos page.
	 */
	@RequestMapping(value="sCompanyPaySlip.erp",method=RequestMethod.POST)
	public String createdCompanyPaySlip(@ModelAttribute CompanyPaySlipBean companypayslip){
		
		fnservice.generateCompanyPaySlip(companypayslip);
		
		return "redirect:CompanyPaySlip.erp";
	}
	
	/**
	 * @param model
	 * @return
	 */
	@RequestMapping(value="fn_invoiceform.erp",method=RequestMethod.GET)
	public String createInvoiceForm(ModelMap model){
		model.addAttribute(new InvoiceFormBean());
		return "fn_invoiceform";
	}
	/**
	 * @param model generate AgingAccountBean Object.
	 */
	@RequestMapping(value="fn_aging_account.erp",method=RequestMethod.GET)
	public String createAgingofAccount(ModelMap model) {
		model.addAttribute(new AgingAccountBean());
		return "fn_aging_account";
	}
	@RequestMapping(value="sfn_aging_account.erp",method=RequestMethod.POST)
	public String createdAgingAccount(@ModelAttribute AgingAccountBean agingaccount) {
		fnservice.generateAgingAccount(agingaccount);
		return "redirect:fn_aging_account.erp";
	}

	/**
	 * 
	 * @param model
	 * @param request Getting the Employee Id from employeelist.
	 * @return employee Details and calculated PaySlip Details.
	 */
	
	@RequestMapping(value="fn_emp_payslip.erp",method=RequestMethod.GET)
	public String generatePaySlip(ModelMap model,HttpServletRequest request) {
		String empid=request.getParameter("empid");
		fnservice.generatePaySlip(empid);
		model.addAttribute(new TempPaySlipBean());
		request.setAttribute("paysliplist", fnservice.getPaySlipDetails());
		return "fn_emp_payslip";
	}
	
	@RequestMapping(value="fn_final_payslip.erp",method=RequestMethod.POST)
	public String generatedPaySlip(@ModelAttribute FinalPaySlipBean temppayslip) {
		fnservice.generateFinalPaySlip(temppayslip);
	return "redirect:emp_list.erp";	
	}
	
	@RequestMapping(value="fn_create_groups.erp",method=RequestMethod.GET)
	public String generateGroups(ModelMap model,HttpServletRequest request){
		model.addAttribute(new GroupDetailsBean());
			return "fn_create_groups";
	}
	@RequestMapping(value="sfn_create_groups.erp",method=RequestMethod.POST)
	public String generatedGroup(@ModelAttribute GroupDetailsBean groupdetails){
		fnservice.generateGroups(groupdetails);
		return "redirect:fn_create_groups.erp";
	}
	@RequestMapping(value="fn_edit_groups.erp",method=RequestMethod.GET)
	public String viewGroupsDetails(ModelMap model,HttpServletRequest request){
		System.out.println("Group Details"+fnservice.getGroups().size());
		request.setAttribute("GrouptDetailsList", fnservice.getGroups());
		return "fn_edit_groups";
	}
	
	@RequestMapping(value="fn_create_ledger.erp",method=RequestMethod.GET)
	public String generateLedger(ModelMap model,HttpServletRequest request){
		model.addAttribute(new LedgerBean());
		return "fn_create_ledger";
	}
	
	@RequestMapping(value="sfn_create_ledger.erp",method=RequestMethod.POST)
	public String generatedLedger(@ModelAttribute LedgerBean legerbean){
		fnservice.generateLedger(legerbean);
		
		return "redirect:fn_create_ledger.erp";
	}
	
	@RequestMapping(value="viewledger.erp",method=RequestMethod.GET)
	public String viewLedgerData(ModelMap model,HttpServletRequest request){
	System.out.println("Ledger Data"+fnservice.getLedgersData().size());
		request.setAttribute("ledgerdata",fnservice.getLedgersData());
		return "viewLedger";
	}

	@RequestMapping(value="fn_create_vocher.erp",method=RequestMethod.GET)
	public String generateVocher(ModelMap model,HttpServletRequest request){
		model.addAttribute(new VocherDetailsBean());
		return "fn_create_vocher";
	}
	@RequestMapping(value="sfn_create_vocher.erp",method=RequestMethod.POST)
	public String generatedVocher(@ModelAttribute VocherDetailsBean vocherdetails){
		fnservice.generateVocherType(vocherdetails);
		return "redirect:fn_create_vocher.erp";
	}
	
	@RequestMapping(value="fn_edit_vocher.erp",method=RequestMethod.GET)
	public String viewVocher(ModelMap model,HttpServletRequest request){
		System.out.println("VocherData"+fnservice.getVochersData().size());
		request.setAttribute("vocherDataList", fnservice.getVochersData());
		return "fn_edit_vocher";
	}
	
	@RequestMapping(value="fn_create_stockgroup.erp",method=RequestMethod.GET)
	public String generateStockGroup(ModelMap model){
		model.addAttribute(new StockGroupBean());
		return "fn_create_stockgroup";
	}
	@RequestMapping(value="sfn_create_stockgroup.erp",method=RequestMethod.POST)
	public String generatedStockGroup(@ModelAttribute StockGroupBean stockgroup){
		fnservice.generateStockGroup(stockgroup);
		return "redirect:fn_create_stockgroup.erp";
	}
	@RequestMapping(value="fn_stock_groups.erp",method=RequestMethod.GET)
	public String viewStockGroups(ModelMap model,HttpServletRequest request){
		request.setAttribute("StockGroupList", fnservice.getStockGroups());
		return "fn_stock_groups";
	}
	
	@RequestMapping(value="fn_stock_items.erp",method=RequestMethod.GET)
	public String generateStockItem(ModelMap model){
	model.addAttribute(new StockItemsBean());
		return "fn_stock_items";
	}
	@RequestMapping(value="sfn_stok_items.erp",method=RequestMethod.POST)
	public String generatedStockItems(@ModelAttribute StockItemsBean stockitems){
		fnservice.generateStockItems(stockitems);
		return "redirect:fn_stock_items.erp";
	}
	
	@RequestMapping(value="fn_edit_stock_items.erp",method=RequestMethod.GET)
	public String viewStockItems(ModelMap model,HttpServletRequest request){
		request.setAttribute("StockItemList", fnservice.getStockItems());
		return "fn_edit_stock_items";
	}
	@RequestMapping(value="fn_inventory_measure.erp",method=RequestMethod.GET)
	public String generateInventoryMeasure(ModelMap model){
		model.addAttribute(new MeasuresBean());
		return "fn_inventory_measure";
	}
	@RequestMapping(value="sfn_inventory_measure.erp",method=RequestMethod.POST)
	public String generatedInventoryMeasure(@ModelAttribute MeasuresBean measure){
		fnservice.generateUnitMeasures(measure);
		return "redirect:fn_inventory_measure.erp";
	}
	@RequestMapping(value="fn_edit_vocher_measures.erp",method=RequestMethod.GET)
	public String getVocherMeasurement(ModelMap model,HttpServletRequest request){
		request.setAttribute("MesurmentList",fnservice.getVocherMeasures());
		return "fn_edit_vocher_measures";
	}
	
	@RequestMapping(value="fn_vocher_type.erp",method=RequestMethod.GET)
	public String generateVocherTypes(ModelMap model,HttpServletRequest request){
		request.setAttribute("vochertypelist", fnservice.getVochers());
		model.addAttribute(new VocherDetailsBean());
		
		return "fn_vocher_type";
	}
	@RequestMapping(value="sfn_vocher_type.erp",method=RequestMethod.POST)
	public String generatedVocherTypes(@ModelAttribute VocherDetailsBean vochertype){
		fnservice.generateVocherType(vochertype);
		return "redirect:fn_vocher_type.erp";
	}
	@RequestMapping(value="dbbackup.erp",method=RequestMethod.GET)
	public String gettingBackup(){
		fnservice.getDBBackup();
		return "redirect:fn_main.erp";
	}
	
	@RequestMapping(value="fn_aging_account_payable.erp",method=RequestMethod.GET)
	public String generateAgingAccountPayable(ModelMap model) {
		model.addAttribute(new AgingAccountPayble());
		return "fn_aging_account_payable";
	}
	@RequestMapping(value="sfn_aging_account_payable.erp",method=RequestMethod.POST)
	public String generatedAgingAccountPayable(@ModelAttribute AgingAccountPayble aapayble) {
		fnservice.generateAgingAccountPayable(aapayble);
		return "redirect:fn_aging_account_payable.erp";
	}
	@RequestMapping(value="fn_cash_disbusment_journal.erp",method=RequestMethod.GET)
	public String generateCashDisbursmentJournal(ModelMap model) {
		model.addAttribute(new CashDisbursmentJournalBean());
	return "fn_cash_disbusment_journal";	
	}
	@RequestMapping(value="sfn_cash_disbusment_journal.erp",method=RequestMethod.POST)
	public String generatedCashDisbursmentJournal(@ModelAttribute CashDisbursmentJournalBean cashdisbursmentjournal) {
		fnservice.generateCashDisbursmentJournal(cashdisbursmentjournal);
		return "redirect:fn_cash_disbusment_journal.erp";
	}
	
	@RequestMapping(value="fn_cash_recipt_journal.erp",method=RequestMethod.GET)
	public String generateCashReciptJournal(ModelMap model) {
		model.addAttribute(new CashReciptJournalBean());
		return "fn_cash_recipt_journal";
	}
	@RequestMapping(value="sfn_cash_recipt_journal.erp",method=RequestMethod.POST)
	public String generatedCashReciptJournal(@ModelAttribute CashReciptJournalBean cashreciptjournal) {
		fnservice.generateCashReciptJournal(cashreciptjournal);
		return "redirect:fn_cash_recipt_journal.erp";
	}
	@RequestMapping(value="fn_daily_cash_report.erp",method=RequestMethod.GET)
	public String generateDailyCashReport(ModelMap model) {
		model.addAttribute(new DailyCashReportBean());
		return "fn_daily_cash_report";
	}
	@RequestMapping(value="sfn_daily_cash_report.erp",method=RequestMethod.POST)
	public String generatedDailyCashReport(@ModelAttribute DailyCashReportBean dailycashreport) {
		fnservice.generateDailyCashReport(dailycashreport);
		return "redirect:fn_daily_cash_report.erp";
	}
	@RequestMapping(value="fn_petty_cash_journal.erp",method=RequestMethod.GET)
	public String generatePettyCashJournal(ModelMap model) {
		model.addAttribute(new PettyCastBean());
		return "fn_petty_cash_journal";
	}
	@RequestMapping(value="sfn_petty_cash_journal.erp",method=RequestMethod.POST)
	public String generatedPettyCashJournal(@ModelAttribute PettyCastBean pettycash) {
		invser.createPettyCashJournal(pettycash);
		return "redirect:fn_petty_cash_journal.erp";
	}
	@RequestMapping(value="fn_petty_cash_vocher.erp",method=RequestMethod.GET)
	public String generatePettyCashVocher(ModelMap model) {
		model.addAttribute(new PettyCashVocherBean());
		return "fn_petty_cash_vocher";
	}
	
	@RequestMapping(value="sfn_petty_cash_vocher.erp",method=RequestMethod.POST)
	public String generatedPettyCashVocher(@ModelAttribute PettyCashVocherBean pettycashvocher) {
		invser.createPettyCashVocher(pettycashvocher);
		return "redirect:fn_petty_cash_vocher.erp";
	}
	
	@RequestMapping(value="fn_auto_expenses_travel.erp",method=RequestMethod.GET)
	public String generateAutoExpencesesTravel(ModelMap model) {
		model.addAttribute(new AutoExpencesesTravelBean());
		return "fn_auto_expenses_travel";
	}
	@RequestMapping(value="sfn_auto_expenses_travel.erp",method=RequestMethod.POST)
	public String generatedAutoExpencessesTravel(@ModelAttribute AutoExpencesesTravelBean autoexpenceses){
		fnservice.generatedAutoExpencessesTravel(autoexpenceses);
	return "redirect:fn_auto_expenses_travel.erp";
	}
	
	@RequestMapping(value="fn_phone_bill_expenceses.erp",method=RequestMethod.GET)
	public String generatePhoneBillExpenceses(ModelMap model) {
		model.addAttribute(new PhoneBillExpencesesBean());
		return "fn_phone_bill_expenceses";
	}
	@RequestMapping(value="sfn_phone_bill_expenceses.erp",method=RequestMethod.POST)
	public String generatedPhoneBillExpenceses(@ModelAttribute PhoneBillExpencesesBean phonebillexpencese) {
		fnservice.generatePhoneBillExpenceses(phonebillexpencese);
		return "redirect:fn_phone_bill_expenceses.erp";
	}
	
	@RequestMapping(value="fn_food_expenceses.erp",method=RequestMethod.GET)
	public String generateFoodExpenceses(ModelMap model) {
		model.addAttribute(new FoodExcepensesBean());
		return "fn_food_expenceses";
	}
	@RequestMapping(value="sfn_food_expenceses.erp",method=RequestMethod.POST)
	public String generatedFoodExpenceses(@ModelAttribute FoodExcepensesBean foodexcepnses) {
		fnservice.generatedFoodExcepenses(foodexcepnses);
		return "redirect:fn_food_expenceses.erp";
	}

	@RequestMapping(value="fn_hotel_expenceses.erp",method=RequestMethod.GET)
	public String generateHotelExpenceses(ModelMap model) {
		model.addAttribute(new HotelExpensesBean());
		return "fn_hotel_expenceses";
	}
	@RequestMapping(value="sfn_hotel_expenceses.erp",method=RequestMethod.POST)
	public String generatedHotelExpenceses(@ModelAttribute HotelExpensesBean hotelexpenses) {
		fnservice.generateHotelExpenceses(hotelexpenses);
		return "redirect:fn_hotel_expenceses.erp";
	}
	@RequestMapping(value="fn_entertainment_expenses.erp",method=RequestMethod.GET)
	public String generateMisleniousExpenceses(ModelMap model) {
		model.addAttribute(new EntertainmentExpencesesBean());
		return "fn_entertainment_expenses";
	}
	@RequestMapping(value="sfn_entertainment_expenses.erp",method=RequestMethod.POST)
	public String generatedEntertainmentExpenceses(@ModelAttribute EntertainmentExpencesesBean entertainment) {
		fnservice.generateEntertainmentExpenceses(entertainment);
		return "redirect:fn_entertainment_expenses.erp";
	}
	
	@RequestMapping(value="fn_misleniuos_expenceses.erp",method=RequestMethod.GET)
	public String generateEntertainmentExpenceses(ModelMap model) {
		model.addAttribute(new MisleniousExpencesesBean());
		return "fn_misleniuos_expenceses";
	}
	@RequestMapping(value="sfn_misleniuos_expenceses.erp",method=RequestMethod.POST)
	public String generatedMilaniousExpenceses(@ModelAttribute MisleniousExpencesesBean mislaniousexpenceses) {
		fnservice.generateMislaniousExpenceses(mislaniousexpenceses);
		return "redirect:fn_misleniuos_expenceses.erp";
	}
	@RequestMapping(value="fn_non_trading_expenceses.erp",method=RequestMethod.GET)
	public String generateNonTradingExpenceses(ModelMap model) {
		model.addAttribute(new NonTradingExpencesesBean());
		return "fn_non_trading_expenceses";
	}
	@RequestMapping(value="sfn_non_trading_expenceses.erp",method=RequestMethod.POST)
	public String generatedNonTradingExpenceses(@ModelAttribute NonTradingExpencesesBean nontradingexpenceses) {
		fnservice.generateNonTradingExpenceses(nontradingexpenceses);
		return "redirect:fn_misleniuos_expenceses.erp";
	}
	
	@RequestMapping(value="fn_weekly_expenceses_report.erp",method=RequestMethod.GET)
	public String generateWeeklyExpenceses(ModelMap model) {
		model.addAttribute(new WeeklyExpencesesReportBean());
		return "fn_weekly_expenceses_report";
	}
	@RequestMapping(value="sfn_weekly_expenceses_report.erp",method=RequestMethod.POST)
	public String generatedWeeklyExpenceses(@ModelAttribute WeeklyExpencesesReportBean weeklyexpenceses) {
		fnservice.generateWeeklyExpencesesReport(weeklyexpenceses);
		return "redirect:fn_weekly_expenceses_report.erp";
	}
	
	//Yearly Expenceses...........
	
	@RequestMapping(value="fn_yearly_auto_expenceses_travel.erp",method=RequestMethod.GET)
	public String generateAutoExpencesesTravelYearly(ModelMap model) {
		model.addAttribute(new AutoExpencesesTravelBean());
		return "fn_yearly_auto_expenceses_travel";
	}
	@RequestMapping(value="sfn_yearly_auto_expenceses_travel.erp",method=RequestMethod.POST)
	public String generatedAutoExpencessesTravelYearly(@ModelAttribute AutoExpencesesTravelBean autoexpenceses){
		fnservice.generatedAutoExpencessesTravel(autoexpenceses);
	return "redirect:fn_yearly_auto_expenceses_travel.erp";
	}	
	
	@RequestMapping(value="fn_yearly_phone_bill_expenceses.erp",method=RequestMethod.GET)
	public String generatePhoneBillExpencesesYearly(ModelMap model) {
		model.addAttribute(new PhoneBillExpencesesBean());
		return "fn_yearly_phone_bill_expenceses";
	}
	@RequestMapping(value="sfn_yearly_phone_bill_expenceses.erp",method=RequestMethod.POST)
	public String generatedPhoneBillExpencesesYearly(@ModelAttribute PhoneBillExpencesesBean phonebillexpencese) {
		fnservice.generatePhoneBillExpenceses(phonebillexpencese);
		return "redirect:fn_yearly_phone_bill_expenceses.erp";
	}	
	@RequestMapping(value="fn_yearly_food_expenceses.erp",method=RequestMethod.GET)
	public String generateFoodExpencesesYearly(ModelMap model) {
		model.addAttribute(new FoodExcepensesBean());
		return "fn_yearly_food_expenceses";
	}
	@RequestMapping(value="sfn_yearly_food_expenceses.erp",method=RequestMethod.POST)
	public String generatedFoodExpencesesYearly(@ModelAttribute FoodExcepensesBean foodexcepnses) {
		fnservice.generatedFoodExcepenses(foodexcepnses);
		return "redirect:fn_yearly_food_expenceses.erp";
	}
	@RequestMapping(value="fn_yearly_hotel_expenceses.erp",method=RequestMethod.GET)
	public String generateHotelExpencesesYearly(ModelMap model) {
		model.addAttribute(new HotelExpensesBean());
		return "fn_yearly_hotel_expenceses";
	}
	@RequestMapping(value="sfn_yearly_hotel_expenceses.erp",method=RequestMethod.POST)
	public String generatedHotelExpencesesYearly(@ModelAttribute HotelExpensesBean hotelexpenses) {
		fnservice.generateHotelExpenceses(hotelexpenses);
		return "redirect:fn_yearly_hotel_expenceses.erp";
	}
	@RequestMapping(value="fn_yearly_entertainment_expenceses.erp",method=RequestMethod.GET)
	public String generateMisleniousExpencesesYearly(ModelMap model) {
		model.addAttribute(new EntertainmentExpencesesBean());
		return "fn_yearly_entertainment_expenceses";
	}
	@RequestMapping(value="sfn_yearly_entertainment_expenceses.erp",method=RequestMethod.POST)
	public String generatedEntertainmentExpencesesYearly(@ModelAttribute EntertainmentExpencesesBean entertainment) {
		fnservice.generateEntertainmentExpenceses(entertainment);
		return "redirect:fn_yearly_entertainment_expenceses.erp";
	}
	@RequestMapping(value="fn_yearly_mislaneous_expenceses.erp",method=RequestMethod.GET)
	public String generateEntertainmentExpencesesYearly(ModelMap model) {
		model.addAttribute(new MisleniousExpencesesBean());
		return "fn_yearly_mislaneous_expenceses";
	}
	@RequestMapping(value="sfn_yearly_mislaneous_expenceses.erp",method=RequestMethod.POST)
	public String generatedMilaniousExpencesesYearly(@ModelAttribute MisleniousExpencesesBean mislaniousexpenceses) {
		fnservice.generateMislaniousExpenceses(mislaniousexpenceses);
		return "redirect:fn_yearly_mislaneous_expenceses.erp";
	}
	@RequestMapping(value="fn_yearly_non_trading_expenceses.erp",method=RequestMethod.GET)
	public String generateNonTradingExpencesesYearly(ModelMap model) {
		model.addAttribute(new NonTradingExpencesesBean());
		return "fn_yearly_non_trading_expenceses";
	}
	@RequestMapping(value="sfn_yearly_non_trading_expenceses.erp",method=RequestMethod.POST)
	public String generatedNonTradingExpencesesYearly(@ModelAttribute NonTradingExpencesesBean nontradingexpenceses) {
		fnservice.generateNonTradingExpenceses(nontradingexpenceses);
		return "redirect:fn_yearly_non_trading_expenceses.erp";
	}
	
	@RequestMapping(value="fn_options_for_payslip.erp",method=RequestMethod.GET)
	public String generateOptionForPaySlip(ModelMap model) {
		return "fn_options_for_payslip";
	}

}
