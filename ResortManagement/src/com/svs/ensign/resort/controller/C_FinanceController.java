package com.svs.ensign.resort.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
import com.svs.ensign.resort.bean.InvoiceFormBean;
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
import com.svs.ensign.resort.service.IN_FinanceService;
import com.svs.ensign.resort.service.IN_SalesService;
import com.svs.ensign.resort.util.AppTrack;
import com.svs.ensign.resort.util.ConvertStackTracetoString;
import net.sf.json.JSONObject;

@Controller
public class C_FinanceController {

    private boolean insertorupdate = false;

    @Autowired
    IN_FinanceService in_financeservice;
    @Autowired
    IN_SalesService in_salesservice;
    @Autowired
    ConvertStackTracetoString util_stos;
    final static Logger logger = Logger.getLogger(C_FinanceController.class.getName());

    @Value("${resort.success}")
    String successmsg;
    @Value("${resort.update}")
    String updatesuccess;
    @Value("${resort.error}")
    String errormsg;
    //Customer
    JSONObject respObj = new JSONObject();

    @RequestMapping(value = "fn_cust_creation_form.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createFinanceCustomer(ModelMap model, HttpServletRequest request) {
        AppTrack.info("::createFinanceCustomer ::");
        long id = Long.parseLong(request.getParameter("id"));
        model.addAttribute(new FinanceCustomerBean());
        request.setAttribute("slcustomer", in_salesservice.viewSLCustomerByID(id));
        return "fn_cust_creation_form";
    }

    @RequestMapping(value = "save_fn_customer.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String savedFinanceCustomer(@ModelAttribute FinanceCustomerBean fcb, HttpServletRequest request) {
        try {
            AppTrack.info("::savedFinanceCustomer::");
            insertorupdate = in_financeservice.createFinanceCustomer(fcb);
            if (insertorupdate) {
                AppTrack.debug("save Finanace Customer::Successful ");
                request.getSession().setAttribute("successmsg", successmsg);
            }
        } catch (Exception e) {
            AppTrack.error("::Exception in savedFinanceCustomer::", e);
        }
        return "redirect:view_customer_by_finance_executive.res";
    }

    @RequestMapping(value = "fn_view_customer_installments.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewFinanceCustomer(HttpServletRequest request) {
        String username = (String) request.getSession().getAttribute("username");
        request.setAttribute("fncustomer", in_financeservice.viewFinanceCustomerByExecutorID(username));
        return "fn_view_customer_installments";
    }

    //For Customer Installation.
    @RequestMapping(value = "fn_customer_diplay.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewCustomerDisplay(HttpServletRequest request) {
        String username = (String) request.getSession().getAttribute("username");
        request.setAttribute("fncustomer", in_financeservice.viewFinanceCustomerByExecutorID(username));
        return "fn_customer_display";
    }
    //Update Customer Installation.

    @RequestMapping(value = "update_installments.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updateCustomerInstallation(@RequestParam("id") String id, HttpServletRequest request, ModelMap model) {
        //System.out.println("Installment\t"+id);
        request.setAttribute("InstallmentList", in_financeservice.viewCustomerByCustomerId(Long.parseLong(id)));
        model.addAttribute(new FinanceCustomerBean());

        return "fn_update_cust_installment";
    }

    @RequestMapping(value = "fn_update_installment.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String updatedCustomerInstallments(@ModelAttribute FinanceCustomerBean financecust, HttpServletRequest request) {
        String username = request.getSession().getAttribute("username").toString();
        financecust.setDeltby(username);

        insertorupdate = in_financeservice.updateCustomerInstallments(financecust);
        if (insertorupdate) {
            request.getSession().setAttribute("updatesucess", updatesuccess);
        } else {

        }
        return "redirect:fn_customer_diplay.res";
    }

    @RequestMapping(value = "fn_view_customer_installments_by_admin.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewCustomerInstallmentsByAdmin(HttpServletRequest request) {

        return "fn_view_customer_installments_by_admin";
    }

    @RequestMapping(value = "fn_view_customer_installments_by_adminGrid.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewCustomerInstallmentsByAdminGrid(HttpServletRequest request) {
        try {
            respObj = in_financeservice.viewCustomerInstallmentsByAdmin();
        } catch (Exception e) {
            AppTrack.error("Error in viewCustomerInstallmentsByAdminGrid::", e);
        }
        
        return respObj.toString();
    }

    @RequestMapping(value = "fn_view_customer_installments_by_director.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewCustomerInstallmentsByFnDirector(HttpServletRequest request) {

        request.setAttribute("fncustomer", in_financeservice.viewCustomerInstallmentsByAdmin());
        return "fn_view_customer_installments_by_director";
    }

    @RequestMapping(value = "fn_view_customer_installments_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewCustomerInstallmentsByFnManager(HttpServletRequest request) {
        String username = request.getSession().getAttribute("username").toString();
        request.setAttribute("fncustomer", in_financeservice.viewFnCustomerInstallmentsByManagerID(username));
        return "fn_view_cust_installments_by_manager";
    }

    //Finance Starts...................	
    @RequestMapping(value = "fn_create_invoice_form.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createInvoiceForm(HttpServletRequest request, ModelMap model) {
        model.addAttribute(new InvoiceFormBean());

        return "fn_create_invoice_form";
    }

    @RequestMapping(value = "fn_created_invoice_form.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createdInvoiceForm(@ModelAttribute InvoiceFormBean invoiceform, HttpServletRequest request) {
        insertorupdate = in_salesservice.createInvoiceForm(invoiceform);
        if (insertorupdate) {
            request.getSession().setAttribute("successmsg", successmsg);
        } else {

        }

        return "redirect:fn_create_invoice_form.res";
    }

    @RequestMapping(value = "fn_create_daily_expenses_form.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createDailyExpensesForm(HttpServletRequest request, ModelMap model) {
        model.addAttribute(new AutoExpencesesTravelBean());
        return "fn_daily_auto_expenses";
    }

    @RequestMapping(value = "fn_created_auto_expenses_form.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createdInvoiceForm(@ModelAttribute AutoExpencesesTravelBean autoexpenses, HttpServletRequest request, final RedirectAttributes redirectAttr) {
        try {
            insertorupdate = in_financeservice.createDailyAutoExpenses(autoexpenses);
            if (insertorupdate) {
                redirectAttr.addFlashAttribute("successmsg", successmsg);
                //	request.getSession().setAttribute("successmsg", successmsg);
            } else {
                redirectAttr.addFlashAttribute("successmsg", errormsg);
            }
        } catch (Exception e) {
            AppTrack.error("", e);
        }
        return "redirect:fn_create_daily_expenses_form.res";
    }

    //Executive 	
    @RequestMapping(value = "fn_view_auto_expenses_by_executive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewAutoExpensesByExecutive(ModelMap model, HttpServletRequest request) {
        try {

            String username = (String) request.getSession().getAttribute("username");
            model.addAttribute("AutoExpByExcu", in_financeservice.viewAutoTravelExpensesByExecutive(username));
        } catch (Exception e) {
            AppTrack.error("", e);
        }
        return "fn_view_auto_expenses_by_executive";
    }
    //Manager
    //Director

//Phone Bill Daily Expenses
    @RequestMapping(value = "fn_daily_phone_expenses.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createPhoneBillDailyExpenses(ModelMap model) {
        model.addAttribute(new PhoneBillExpencesesBean());
        return "fn_daily_phone_bill_expenses_by_executive";
    }

    @RequestMapping(value = "sfn_daily_phone_expenses.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatePhoneBillDailyExpenses(@ModelAttribute PhoneBillExpencesesBean phonebillexp, HttpServletRequest request) {
        try {
            in_financeservice.generatePhoneBillDailyExpenses(phonebillexp);

            if (insertorupdate) {
                request.getSession().setAttribute("successmsg", successmsg);
            } else {
                request.getSession().setAttribute("succesmsg", errormsg);
            }
        } catch (Exception e) {
            AppTrack.error("", e);
        }
        return "redirect:fn_daily_phone_expenses.res";
    }

    @RequestMapping(value = "fn_view_phone_bill_by_executive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewPhoneBillExpensesByExecutive(HttpServletRequest request, ModelMap model) {
        try {
            String deltby = (String) request.getSession().getAttribute("username");
            model.addAttribute("PhoneBillByExecutive", in_financeservice.viewPhoneBillExpensesByExecutive(deltby));

        } catch (Exception e) {
            AppTrack.error("", e);
        }

        return "fn_view_phone_bill_by_executive";
    }

    //Food Expenses Daily
    @RequestMapping(value = "fn_food_expenses.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createFoodExpenses(ModelMap model) {
        model.addAttribute(new FoodExcepensesBean());
        return "fn_daily_food_expenses_by_executive";
    }

    @RequestMapping(value = "sfn_food_expenses.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String genearateFoodExpenses(@ModelAttribute FoodExcepensesBean foodexpen, HttpServletRequest request) {
        try {
            insertorupdate = in_financeservice.geneateFoodBillExp(foodexpen);
            if (insertorupdate) {
                request.getSession().setAttribute("sucessmsg", successmsg);
            } else {

            }
        } catch (Exception e) {
            AppTrack.error("", e);
        }
        return "redirect:fn_food_expenses.res";
    }
//Executive 	

    @RequestMapping(value = "fn_view_food_exp_by_executive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewFoodExpensesByExecutive(HttpServletRequest request, ModelMap model) {
        try {
            String username = (String) request.getSession().getAttribute("username");
            model.addAttribute("FoodExpensesByExecutive", in_financeservice.viewFoodExpensesByExecutive(username));
        } catch (Exception e) {
            AppTrack.error("", e);
        }
        return "fn_view_food_exp_by_executive";
    }
//Manager
//Director

    //Hotel Expenses
    @RequestMapping(value = "fn_hotel_exp.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateHotelExpByExec(ModelMap model) {
        model.addAttribute(new HotelExpensesBean());
        return "fn_daily_hotel_exp_by_ececutive";

    }

    @RequestMapping(value = "sfn_hotel_exp.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String geneateHotelExpenses(@ModelAttribute HotelExpensesBean hotelexp, HttpServletRequest request) {
        try {
            insertorupdate = in_financeservice.geneateHotelExp(hotelexp);

            if (insertorupdate) {
                request.getSession().setAttribute("successmsg", successmsg);
            } else {

            }
        } catch (Exception e) {
            AppTrack.error("", e);
        }

        return "redirect:fn_hotel_exp.res";
    }
    //HotelExpenses By Executive

    @RequestMapping(value = "fn_view_hotel_exp_by_executive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewHotelExpensesByExecutive(HttpServletRequest request, ModelMap model) {

        try {
            String username = (String) request.getSession().getAttribute("username");
            model.addAttribute("HotelExpByExecutive", in_financeservice.viewHotelExpensesByExecutive(username));
        } catch (Exception e) {
            AppTrack.error("", e);
        }

        return "fn_view_hotel_exp_by_executive";
    }

    //Entertainment Expenses
    @RequestMapping(value = "fn_entertainment_exp.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createEntertaimentExp(ModelMap model) {
        model.addAttribute(new EntertainmentExpencesesBean());
        return "fn_daily_entertainment_expenses_by_executive";
    }

    @RequestMapping(value = "sfn_entertainment_exp.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateEntertainmentExp(@ModelAttribute EntertainmentExpencesesBean entertainmentexp, HttpServletRequest request) {
        try {
            insertorupdate = in_financeservice.generateEntertainmentExp(entertainmentexp);
            if (insertorupdate) {
                request.getSession().setAttribute("successmsg", successmsg);
            }
        } catch (Exception e) {
            AppTrack.error("", e);
        }
        return "redirect:fn_entertainment_exp.res";
    }
    //Executive

    @RequestMapping(value = "fn_view_entertainment_exp_by_executive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewEntertainmentExpByExecutive(HttpServletRequest request, ModelMap model) {

        try {
            String username = (String) request.getSession().getAttribute("username");
            AppTrack.info("User Name\t" + username);
            model.addAttribute("EntertainmentList", in_financeservice.viewEntertainmentExpByExecutive(username));
        } catch (Exception e) {
            AppTrack.error("", e);
        }

        return "fn_view_entertainment_exp_by_executive";
    }

    //Mislenious Expenses
    @RequestMapping(value = "fn_mislenious_exp.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createMisleniousExp(ModelMap model) {
        model.addAttribute(new MisleniousExpencesesBean());

        return "fn_daily_mislaneous_exp_by_executives";

    }

    @RequestMapping(value = "sfn_misleneousexp.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateMisleneousExp(@ModelAttribute MisleniousExpencesesBean misleneousexp, HttpServletRequest request) {
        try {
            insertorupdate = in_financeservice.generateMisleneousExp(misleneousexp);
            if (insertorupdate) {
                request.getSession().setAttribute("successmsg", successmsg);
            }
        } catch (Exception e) {
            AppTrack.error("", e);
        }
        return "redirect:fn_mislenious_exp.res";
    }

    //Executive
    @RequestMapping(value = "fn_view_misleneous_exp_by_executive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateMisleneousExpensesByExecutive(HttpServletRequest request, ModelMap model) {

        try {
            String username = (String) request.getSession().getAttribute("username");
            model.addAttribute("MisleneousExp", in_financeservice.viewMisleneousExpByExecutive(username));
        } catch (Exception e) {
            AppTrack.error("", e);
        }

        return "fn_view_misleneous_exp_by_executive";
    }

    //NonTrading Expenses
    @RequestMapping(value = "fn_daily_non_training_exp.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createNonTradingExp(ModelMap model) {
        model.addAttribute(new NonTradingExpencesesBean());
        return "fn_daily_non_training_exp";
    }

    @RequestMapping(value = "sfn_daily_non_training_exp.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String genearteNonTradingExp(@ModelAttribute NonTradingExpencesesBean nontradingexp, HttpServletRequest request) {
        try {

            in_financeservice.generateNonTradingExp(nontradingexp);
        } catch (Exception e) {
            AppTrack.error("", e);
        }
        return "redirect:fn_daily_non_training_exp.res";
    }

    //Executive
    @RequestMapping(value = "fn_view_nontrading_exp_by_executive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewNonTradingExpByExecutive(HttpServletRequest request, ModelMap model) {
        try {
            String username = (String) request.getSession().getAttribute("username");
            model.addAttribute("NonTradingExp", in_financeservice.viewNonTradingExpByExecutive(username));
        } catch (Exception e) {
            AppTrack.error("", e);
        }
        return "fn_view_nontrading_exp_by_executive";
    }

    //Expenses Ends////
    //Aging Accounts Starts////
    //AggingAccountPayble
    @RequestMapping(value = "fn_aggingaccounpayble.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createAggingaccountpayble(ModelMap model) {
        model.addAttribute(new AggingaccountpaybleBean());
        return "fn_aggingofaccountpayable";
    }

    @RequestMapping(value = "sfn_aggingaccounpayble.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateAggingaccountpayble(@ModelAttribute AggingaccountpaybleBean aggingaccountpayblebean, HttpServletRequest request, BindingResult errors) {
        //

        insertorupdate = in_financeservice.generateAgingOfAccountPayable(aggingaccountpayblebean);
        if (insertorupdate) {
            //System.out.println(":in aggingaccountpayble");
            request.getSession().setAttribute("successmsg", successmsg);
        } else {
            //System.out.println(":in aggingaccountpayble else");
            request.getSession().setAttribute("successmsg", errormsg);
        }

        return "redirect:fn_aggingaccounpayble.res";
    }
    //Executive

    @RequestMapping(value = "fn_view_aging_of_account_payable_by_executive.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewAgingOfAccountPayable(HttpServletRequest request, ModelMap model) {
        String username = (String) request.getSession().getAttribute("username");
        model.addAttribute("AgingOfAccountPayableList", in_financeservice.viewAgingOfAccountPayableByExecutive(username));
        return "fn_view_aging_of_account_payable_by_executive";
    }

    //AggingaccountReceivable
    @RequestMapping(value = "fn_aggingaccounreceivable.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createAggingaccountreceivable(ModelMap model) {
        model.addAttribute(new AggingaccountreceivableBean());
        return "fn_aggingofaccountreceivable";
    }

    @RequestMapping(value = "sfn_aggingaccounreceivable.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateAggingaccountreceivable(@ModelAttribute AggingaccountreceivableBean aggingaccountreceivableBean, HttpServletRequest request) {
        //insertorupdate=in_financeservice.generateAggingaccountreceivable(aggingaccountreceivableBean);

        if (insertorupdate) {
            //System.out.println(":in aggingaccountreceivable");
            request.getSession().setAttribute("successmsg", successmsg);
        } else {
            //System.out.println(":in aggingaccountreceivable else");
        }

        return "redirect:fn_aggingaccounreceivable.res";
    }

    //cash disbursements journal
    @RequestMapping(value = "fn_cashdisbursementsjournal.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createCashdisbursementsjournal(ModelMap model) {
        model.addAttribute(new CashdisbursementsjournalBean());
        return "fn_cashdisbursementsjournal";
    }

    @RequestMapping(value = "sfn_cashdisbursementsjournal.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatecashdisbursementsjournal(
            @ModelAttribute("cashdisbursementsjournalBean") CashdisbursementsjournalBean cashdisbursementsjournalBean,
            BindingResult errors, WebRequest wr) {

        if (errors.hasErrors()) {
            //System.out.println("----------------in errors--------------------");
            return "fn_cashdisbursementsjournal.res";
        } else {
            //insertorupdate=in_financeservice.generatecashdisbursementsjournal(cashdisbursementsjournalBean);

            if (insertorupdate) {
                //System.out.println(":in cashdisbursementsjournal");
                //request.getSession().setAttribute("successmsg", successmsg);	
            } else {
                //System.out.println(":in cashdisbursementsjournal else");
            }
        }

        return "redirect:fn_cashdisbursementsjournal.res";
    }

    //cash receipts journal
    @RequestMapping(value = "fn_cashreceiptsjournal.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createCashreceiptsjournal(ModelMap model) {
        model.addAttribute(new CashreceiptsjournalBean());
        return "fn_cashreceiptsjournal";
    }

    @RequestMapping(value = "sfn_cashreceiptsjournal.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatecashreceiptsjournal(@ModelAttribute CashreceiptsjournalBean cashreceiptsjournalBean, HttpServletRequest request) {
        //insertorupdate=in_financeservice.generatecashreceiptsjournal(cashreceiptsjournalBean);

        if (insertorupdate) {
            //System.out.println(":in cashreceiptsjournal");
            request.getSession().setAttribute("successmsg", successmsg);
        } else {
            //System.out.println(":in cashreceiptsjournal else");
        }

        return "redirect:fn_cashreceiptsjournal.res";
    }

    //daily cash report
    @RequestMapping(value = "fn_dailycashreport.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createDailycashreport(ModelMap model) {
        model.addAttribute(new DailycashreportBean());
        return "fn_dailycashreport";
    }

    @RequestMapping(value = "sfn_dailycashreport.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatedailycashreport(@ModelAttribute DailycashreportBean dailycashreportBean, HttpServletRequest request) {
        //insertorupdate=in_financeservice.generatedailycashreport(dailycashreportBean);

        if (insertorupdate) {
            //System.out.println(":in dailycashreport");
            request.getSession().setAttribute("successmsg", successmsg);
        } else {
            //System.out.println(":in dailycashreport else");
        }

        return "redirect:fn_dailycashreport.res";
    }

    // petty cash journal
    @RequestMapping(value = "fn_pettycashjournal.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createPettycashjournal(ModelMap model) {
        model.addAttribute(new PettycashjornalBean());
        return "fn_pettycashjournal";
    }

    @RequestMapping(value = "sfn_pettycashjournal.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatepettycashjournal(@ModelAttribute PettycashjornalBean pettycashjornalBean, HttpServletRequest request) {
        //insertorupdate=in_financeservice.generatepettycashjournal(pettycashjornalBean);

        if (insertorupdate) {
            //System.out.println(":in pettycashjournal");
            request.getSession().setAttribute("successmsg", successmsg);
        } else {
            //System.out.println(":in pettycashjournal else");
        }

        return "redirect:fn_pettycashjournal.res";
    }

    // petty cash voucher
    @RequestMapping(value = "fn_pettycashvoucher.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createPettycashvoucher(ModelMap model) {
        model.addAttribute(new PettycashvoucherBean());
        return "fn_pettycashvoucher";
    }

    @RequestMapping(value = "sfn_pettycashvoucher.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatepettycashvoucher(@ModelAttribute PettycashvoucherBean pettycashvoucherBean, HttpServletRequest request) {
        //insertorupdate=in_financeservice.generatepettycashvoucher(pettycashvoucherBean);

        if (insertorupdate) {
            //System.out.println(":in pettycashvoucher");
            request.getSession().setAttribute("successmsg", successmsg);
        } else {
            //System.out.println(":in pettycashvoucher else");
        }

        return "redirect:fn_pettycashvoucher.res";
    }

    //Creating Ledger
    @RequestMapping(value = "fn_create_ledger_form.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createLedger(HttpServletRequest request, ModelMap model) {
        model.addAttribute(new LedgerDetailsBean());
        return "fn_create_ledger";
    }

    @RequestMapping(value = "created_fn_ledger.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createdLedgerDetails(@ModelAttribute LedgerDetailsBean ledgerdetails, HttpServletRequest request) {
        insertorupdate = in_financeservice.createLedgerDetails(ledgerdetails);
        request.getSession().setAttribute("successmsg", successmsg);
        return "redirect:fn_create_ledger_form.res";
    }

    //Current Assets
    @RequestMapping(value = "fn_bl_current_assets.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewCurrentAssets(HttpServletRequest request, ModelMap model) {

        return "fn_bl_current_assets";
    }

    //Voucher Creation
    @RequestMapping(value = "fn_create_voucher_form.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createVoucher(HttpServletRequest request, ModelMap model) {
        model.addAttribute(new VocherDetailsBean());
        return "fn_create_voucher";
    }

    @RequestMapping(value = "created_fn_voucher.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createdVoucherDetails(@ModelAttribute VocherDetailsBean voucherdetails, HttpServletRequest request) {
        insertorupdate = in_financeservice.createVoucherDetails(voucherdetails);
        if (insertorupdate) {
            request.getSession().setAttribute("successmsg", successmsg);
        }
        return "redirect:fn_create_voucher_form.res";
    }

    //Voucher Creation in Stock.
    @RequestMapping(value = "fn_voucher_stock.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createVoucherForStock(HttpServletRequest request, ModelMap model) {
        model.addAttribute(new VocherDetailsBean());
        return "fn_voucher_stock_form";
    }

    @RequestMapping(value = "created_fn_voucher_stock.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createdVoucherForStock(@ModelAttribute VocherDetailsBean voucherdetails, HttpServletRequest request) {
        insertorupdate = in_financeservice.createVoucherDetails(voucherdetails);
        if (insertorupdate) {
            request.getSession().setAttribute("successmsg", successmsg);
        }
        return "redirect:fn_voucher_stock.res";
    }

    //Group Creation
    @RequestMapping(value = "fn_create_groups_form.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createGroups(HttpServletRequest request, ModelMap model) {
        model.addAttribute(new GroupDetailsBean());
        return "fn_create_groups";
    }

    @RequestMapping(value = "created_fn_group.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createdGroupDetails(@ModelAttribute GroupDetailsBean groupdetails, HttpServletRequest request) {
        try {
            insertorupdate = in_financeservice.createGroupDetails(groupdetails);
            if (insertorupdate) {
                request.getSession().setAttribute("successmsg", successmsg);
            }
        } catch (Exception e) {
            AppTrack.error("", e);
        }

        return "redirect:fn_create_groups_form.res";
    }

    //Create Stock Group Details.
    @RequestMapping(value = "fn_create_stock_group.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createStockGroup(ModelMap model) {
        model.addAttribute(new StockGroupDetailsBean());
        return "fn_create_stock_group";
    }

    @RequestMapping(value = "sfn_stock_group.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatedStockGroup(@ModelAttribute StockGroupDetailsBean stockgroupd, HttpServletRequest request) {
        //System.out.println("Stock Group Details");
        insertorupdate = in_financeservice.createStockGroups(stockgroupd);
        if (insertorupdate) {
            request.getSession().setAttribute("successmsg", successmsg);
        } else {

        }
        return "redirect:fn_create_stock_group.res";
    }

    //Stock Items
    @RequestMapping(value = "fn_create_stock_items.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateStockItem(ModelMap model) {
        model.addAttribute(new StockItemBean());
        return "fn_create_stock_items";
    }

    @RequestMapping(value = "sfn_generate_stock_item.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatedStockItems(@ModelAttribute StockItemBean stockitem, HttpServletRequest request) {
        //System.out.println("StockGroupItems");
        insertorupdate = in_financeservice.createStockItems(stockitem);
        if (insertorupdate) {
            request.getSession().setAttribute("successmsg", successmsg);
        } else {

        }
        return "redirect:fn_create_stock_items.res";
    }

    //Invoice Measures
    @RequestMapping(value = "fn_inventory_measure.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateMeasure(ModelMap model) {
        model.addAttribute(new MeasuresBean());
        return "fn_inventory_measure";
    }

    @RequestMapping(value = "sfn_inventory_measure.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateMeasure(@ModelAttribute MeasuresBean measuresbean, HttpServletRequest request) {
        //System.out.println("Mesures Unit");
        insertorupdate = in_financeservice.createMeasureUnits(measuresbean);
        if (insertorupdate) {
            request.getSession().setAttribute("successmsg", successmsg);
        } else {

        }
        return "redirect:fn_inventory_measure.res";
    }

    //Create Voucher Details.
    //Voucher Contra Details.
    @RequestMapping(value = "fn_voucher_reciept.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createVoucherReciept(ModelMap model) {
        model.addAttribute(new VoucherRecieptBean());
        return "fn_vocher_reciept";
    }

    @RequestMapping(value = "sfn_voucher_reciept.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateVoucherReciept(@ModelAttribute VoucherRecieptBean voucherreciept, HttpServletRequest request) {
        //System.out.println("Voucher Reciept Journal");
        insertorupdate = in_financeservice.createVoucherReciept(voucherreciept);
        if (insertorupdate) {
            request.getSession().setAttribute("successmsg", successmsg);
        } else {

        }
        return "redirect:fn_voucher_reciept.res";
    }

    //Voucher Payment
    @RequestMapping(value = "fn_vocher_payment.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateVoucherPayment(ModelMap model) {
        model.addAttribute(new VocherPaymentBean());
        return "fn_vocher_payment";
    }

    @RequestMapping(value = "sfn_voucher_payment.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateVoucherPayment(@ModelAttribute VocherPaymentBean voucherpayment, HttpServletRequest request) {
        insertorupdate = in_financeservice.createVoucherPayment(voucherpayment);
        if (insertorupdate) {
            request.getSession().setAttribute("sucessmsg", successmsg);
        } else {

        }
        return "redirect:fn_vocher_payment.res";
    }
    //View Voucher Payment

    @RequestMapping(value = "fn_view_vocher_payment.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewVoucherPayment(HttpServletRequest request) {
        //System.out.println("Voucher Payment");
        return "fn_view_voucher_payment";
    }
    //Voucher Contra 

    @RequestMapping(value = "fn_voucher_contra.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateVoucherContra(ModelMap model) {
        model.addAttribute(new VocherContraBean());
        return "fn_voucher_contra";
    }

    @RequestMapping(value = "sfn_voucher_contra.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateVoucherContra(@ModelAttribute VocherContraBean vouchervcontra, HttpServletRequest request) {
        try {
            insertorupdate = in_financeservice.createVoucherContra(vouchervcontra);

            if (insertorupdate) {
                request.getSession().setAttribute("successmsg", successmsg);
            }
        } catch (Exception e) {
            AppTrack.error("", e);
        }
        return "redirect:fn_voucher_contra.res";
    }
    //Purchase Details

    @RequestMapping(value = "fn_voucher_purchase.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String genarteVoucherPurchase(ModelMap model) {
        model.addAttribute(new VocherPurchaseBean());
        return "fn_vocher_purchase";
    }

    @RequestMapping(value = "sfn_voucher_purchase.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatedVoucherPurchase(@ModelAttribute VocherPurchaseBean voucherbean, HttpServletRequest request) {

        insertorupdate = in_financeservice.createVoucherPurchase(voucherbean);
        if (insertorupdate) {
            request.getSession().setAttribute("successmsg", successmsg);
        } else {

        }
        return "redirect:fn_voucher_purchase.res";
    }
    //Voucher Sales 

    @RequestMapping(value = "fn_voucher_sales.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createVoucherSales(ModelMap model) {
        model.addAttribute(new VocherSalesBean());
        return "fn_voucher_sales";
    }

    @RequestMapping(value = "sfn_voucher_sales.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateVoucherSales(@ModelAttribute VocherSalesBean vouchersales, HttpServletRequest request) {
        insertorupdate = in_financeservice.createVoucherSales(vouchersales);
        if (insertorupdate) {
            request.getSession().setAttribute("successmsg", successmsg);
        } else {

        }
        return "redirect:fn_voucher_sales.res";
    }
    //Purchase Return

    @RequestMapping(value = "fn_vocher_purchase_return.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createVoucherPurchaseReturn(ModelMap model) {
        model.addAttribute(new VocherPurchaseReturnBean());
        return "fn_vocher_purchase_return";
    }

    @RequestMapping(value = "sfn_vocher_purchase_return.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateVoucherPurchaseReturn(@ModelAttribute VocherPurchaseReturnBean voucherpurchasereturn, HttpServletRequest request) {

        insertorupdate = in_financeservice.createVoucherPurchaseReturn(voucherpurchasereturn);

        if (insertorupdate) {
            request.getSession().setAttribute("successmsg", successmsg);
        } else {

        }
        return "redirect:fn_vocher_purchase_return.res";
    }

    //Sales Return 
    @RequestMapping(value = "fn_vocher_sales_return.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateSalesReturn(ModelMap model) {
        model.addAttribute(new VocherSalesReturnBean());

        return "fn_vocher_sales_return";
    }

    @RequestMapping(value = "sfn_vocher_sales_return.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generatedSalesReturn(@ModelAttribute VocherSalesReturnBean vouchersalesreturn, HttpServletRequest request) {

        in_financeservice.createVoucherSalesReturn(vouchersalesreturn);
        return "redirect:fn_vocher_sales_return.res";
    }

    //View Direct Expenses
    @RequestMapping(value = "fn_view_direct_expenses.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewDirectExpenses(HttpServletRequest request) {

        return "fn_view_direct_expenses";
    }

    @RequestMapping(value = "fn_voucher_journal.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateVoucherJournal(ModelMap model) {
        model.addAttribute(new VocherJournalBean());

        return "fn_voucher_journal";

    }

    @RequestMapping(value = "sfn_voucher_journal.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createVoucherJournal(@ModelAttribute VocherJournalBean voucherjournal, HttpServletRequest request) {
        insertorupdate = in_financeservice.createVoucherJournal(voucherjournal);
        if (insertorupdate) {
            request.getSession().setAttribute("successmsg", successmsg);
        } else {

        }
        return "redirect:fn_voucher_journal.res";
    }

    //Profit And Loss
    @RequestMapping(value = "fn_profit_and_loss.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateProfitAndLoss(HttpServletRequest request) {

        return "fn_profit_and_loss";
    }

    //Indirect Expenses
    @RequestMapping(value = "fn_total_indirect_expenses.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateIndirectExpensesList(HttpServletRequest request) {

        return "fn_indirect_expenses_list";
    }

    //Admin Sundry Creditors
    @RequestMapping(value = "fn_total_sundry_creditors.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewSundryCreditorsList(HttpServletRequest request) {
        return "fn_bl_sundry_creditors";
    }

    //Admin
    @RequestMapping(value = "fn_balance_sheet.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateBalanceSheet(HttpServletRequest request) {

        return "fn_balance_sheet";
    }

    //Admin
    @RequestMapping(value = "fn_view_indirect_expenses.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewIndirectExpenses(ModelMap model) {

        return "fn_view_bl_indirect_expenses";
    }
    //Manager Balance Sheet

    @RequestMapping(value = "fn_manager_balancesheet.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateManagerBalanceSheet(ModelMap model) {

        return "fn_manager_balancesheet";

    }

    //Manager Profit & Loss
    @RequestMapping(value = "fn_manager_profitandloss.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateManagerProfitandLoss(ModelMap model) {

        return "fn_manager_profit_and_loss";

    }

    @RequestMapping(value = "fn_manager_indirect_expenses.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateManagerIndirectExpenses(ModelMap model) {
        return "fn_manager_indirect_expenses";
    }

    @RequestMapping(value = "fn_manager_purchase_account.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateManagerPurchaseAccount(ModelMap model) {
        return "fn_manager_purchase_account";
    }
    //Sundry Creditors

    @RequestMapping(value = "fn_manager_sundry_creditors.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateManagerSundryCreditors(ModelMap model) {
        return "fn_manager_sundry_creditors";
    }

    //fn_manager_current_assets.jsp
    @RequestMapping(value = "fn_manager_current_assets.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String generateManagerCurrentAssetsAccount(ModelMap model) {

        return "fn_manager_current_assets";
    }
    //Inventory by Manager.

    @RequestMapping(value = "fn_search_invoice_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewInvoiceByManager(ModelMap model) {

        model.addAttribute(new InvoiceFormBean());

        return "fn_search_invoice_by_manager";
    }
    //Travel Exp By Manager.		

    @RequestMapping(value = "fn_search_travel_exp_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewTravelExpByManager(ModelMap model) {

        model.addAttribute(new AutoExpencesesTravelBean());

        return "fn_search_travel_exp_by_manager";
    }
    //Phone Bill Exp By Manager.		

    @RequestMapping(value = "fn_search_phone_bill_exp_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewPhoneBillExpByManager(ModelMap model) {

        return "fn_phone_bill_exp_by_manager";
    }
//Food Bill Exp By Manager.		

    @RequestMapping(value = "fn_search_food_bill_exp_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewFoodBillExpByManager(ModelMap model) {
        model.addAttribute(new FoodExcepensesBean());
        return "fn_food_expenses_by_manager";
    }

    //Hotel Exp By Manager.		
    @RequestMapping(value = "fn_search_hotel_exp_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewHotelBillExpByManager(ModelMap model) {
        model.addAttribute(new HotelExpensesBean());
        return "fn_hotel_exp_by_manager";
    }

    //Entertainment Exp By Manager.		
    @RequestMapping(value = "fn_search_entertainment_exp_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewEntertainmentExpByManager(ModelMap model) {
        model.addAttribute(new EntertainmentExpencesesBean());
        return "fn_entertainment_exp_by_manager";
    }
    //	Misleneous Exp By Manager.		

    @RequestMapping(value = "fn_search_misleneous_exp_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewMisleneousExpByManager(ModelMap model) {
        model.addAttribute(new EntertainmentExpencesesBean());
        return "fn_misleneous_exp_by_manager";
    }
//    	Non Trading Exp By Manager.		

    @RequestMapping(value = "fn_search_non_trading_exp_by_manager.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewNonTradingExpByManager(ModelMap model) {
        model.addAttribute(new EntertainmentExpencesesBean());
        return "fn_misleneous_exp_by_manager";
    }
    //Aging of Account Payable

    @RequestMapping(value = "fn_aggingofaccountpayable.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createAgingOfAccountPayableByExecutive(ModelMap model) {
        model.addAttribute(new AggingaccountpaybleBean());
        return "fn_aggingofaccountpayable";
    }

    //Agging Of Account Recivables
    @RequestMapping(value = "sfn_agingofaccountpayable.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String createdAgingOfAccountPayable(@ModelAttribute AggingaccountpaybleBean agingofaccountpayable, BindingResult errors, ModelMap model) {

        return "redirect:fn_aggingofaccountpayable.res";
    }

    @RequestMapping(value = "admin_balance_sheet.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewAdminBalanceSheet(ModelMap model) {
        return "admin_balance_sheet";
    }

    @RequestMapping(value = "admin_profit_loss.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewAdminProfitAndLoss(ModelMap model) {
        return "admin_profit_loss";
    }

    @RequestMapping(value = "fn_mng_voucher_reciept.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String viewVoucherRecieptByManager(ModelMap model, HttpServletRequest request) {

        return "fn_mng_voucher_reciept";
    }

    /**
     * Finance Manager Reports .................
     */
    @RequestMapping(value = "fn_mng_ledger.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String searchMngLedger(ModelMap model, HttpServletRequest request) {
        model.addAttribute(new LedgerDetailsBean());
        return "fn_rep_mng_ledger";
    }

    @RequestMapping(value = "fn_mng_group.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String searchMngGroup(ModelMap model, HttpServletRequest request) {
        model.addAttribute(new GroupDetailsBean());
        return "fn_mng_group";
    }

    @RequestMapping(value = "fn_mng_stockGroup.res", method = {RequestMethod.GET, RequestMethod.POST})
    public String searchMngStockGroup(ModelMap model, HttpServletRequest request) {
        model.addAttribute(new StockGroupDetailsBean());
        return "fn_mng_stockGroup";
    }
}
