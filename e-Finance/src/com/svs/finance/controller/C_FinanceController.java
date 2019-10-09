package com.svs.finance.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
import com.svs.finance.reports.C_FinanceReportController;
import com.svs.finance.service.IN_FinanceService;
import com.svs.finance.util.AppLogger;
import com.svs.finance.validation.C_AdvertisementsValid;
import com.svs.finance.validation.C_AutoTraveExpVali;
import com.svs.finance.validation.C_CompanyRegistrationValid;
import com.svs.finance.validation.C_EmployeeValid;
import com.svs.finance.validation.C_EntertainmentExpValid;
import com.svs.finance.validation.C_FoodExpValid;
import com.svs.finance.validation.C_HotelExpValid;
import com.svs.finance.validation.C_InternetExpValid;
import com.svs.finance.validation.C_InvoiceValid;
import com.svs.finance.validation.C_LedgerValidation;
import com.svs.finance.validation.C_MesurementValidation;
import com.svs.finance.validation.C_MisleniousExpValid;
import com.svs.finance.validation.C_NonTradingExpValid;
import com.svs.finance.validation.C_OfficeExpValid;
import com.svs.finance.validation.C_PhoneBillExpValid;
import com.svs.finance.validation.C_PostageExpValid;
import com.svs.finance.validation.C_RepairAndMaintenanceValid;
import com.svs.finance.validation.C_StockGroupValidation;
import com.svs.finance.validation.C_StockItemValid;
import com.svs.finance.validation.C_VGroupValid;
import com.svs.finance.validation.C_Validations;
import com.svs.finance.validation.C_VoucherContraValid;
import com.svs.finance.validation.C_VoucherJournalValid;
import com.svs.finance.validation.C_VoucherPaymentValid;
import com.svs.finance.validation.C_VoucherValidation;
import com.svs.finance.validation.CourierRecieptValidation;
import com.svs.finance.validation.RecieptDispathValidation;
import com.svs.finance.validation.StudentValidation;
import com.svs.finance.validation.UniversityValidation;
import com.svs.finance.validation.VoucherReciept;

@Controller
public class C_FinanceController {

	/*
	 * private static final Logger logger =
	 * LoggerFactory.getLogger(C_FinanceController.class);
	 */
	private boolean insertorupdate = false;

	@Autowired
	IN_FinanceService in_financeservice;
	@Autowired
	C_FinanceReportController c_financereport;
	// Server Side Validation.

	@Autowired
	C_Validations validation;
	@Autowired
	C_EmployeeValid val_employee;
	@Autowired
	C_CompanyRegistrationValid val_companyreg;
	@Autowired
	C_InvoiceValid val_invoice;
	@Autowired
	C_AutoTraveExpVali val_autotravel;
	@Autowired
	C_PhoneBillExpValid val_phonebill;
	@Autowired
	C_FoodExpValid val_foodexp;
	@Autowired
	C_HotelExpValid val_hotelexp;
	@Autowired
	C_EntertainmentExpValid val_entertainment;
	@Autowired
	C_MisleniousExpValid val_misexp;
	@Autowired
	C_NonTradingExpValid val_nontradeexp;
	@Autowired
	C_InternetExpValid val_intexp;
	@Autowired
	C_AdvertisementsValid val_advexp;
	@Autowired
	C_OfficeExpValid val_officeexp;
	@Autowired
	C_RepairAndMaintenanceValid val_repvalid;
	@Autowired
	C_PostageExpValid val_postexp;
	@Autowired
	C_VGroupValid val_group;
	@Autowired
	C_LedgerValidation val_ledger;
	@Autowired
	C_VoucherValidation val_voucher;
	@Autowired
	C_StockGroupValidation val_stockgroup;
	@Autowired
	C_StockItemValid val_stockitem;
	@Autowired
	C_MesurementValidation val_mesur;
	@Autowired
	VoucherReciept val_vreciept;
	@Autowired
	C_VoucherContraValid val_vouchercontra;
	@Autowired
	C_VoucherPaymentValid val_vpayment;
	@Autowired
	C_VoucherJournalValid val_vjournal;
	@Autowired
	UniversityValidation val_univer;
	@Autowired
	StudentValidation val_stud;
	@Autowired
	CourierRecieptValidation val_courierreciept;
	@Autowired
	RecieptDispathValidation val_recieptdispatch;

	@Value("${resort.success}")
	String successmsg;
	@Value("${resort.update}")
	String updatesuccess;

	@Value("${msg2.hai}")
	String sm;

	// Admin Main
	@RequestMapping(value = "fn_admin_main.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createAdminMain(HttpServletRequest request, ModelMap model) {
		AppLogger.debug("Simple Message from message.properties file\t" + sm);
		return "admin_main";
	}

	// Executive Main
	@RequestMapping(value = "fn_executive_main.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createExecutiveMain(HttpServletRequest request, ModelMap model) {
		AppLogger.debug("::createExecutiveMain::");
		return "executive_main";
	}

	// fn_create_employee.jsp
	@RequestMapping(value = "fn_create_employee.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createEmployee(HttpServletRequest request, ModelMap model) {
		AppLogger.debug("::createEmployee::");
		model.addAttribute(new EmployeeBean());

		return "fn_create_employee";
	}

	@RequestMapping(value = "sfn_create_employee.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createdEmployee(@ModelAttribute EmployeeBean employeebean, BindingResult result, ModelMap model,
			HttpServletRequest request, HttpServletResponse response) {
		AppLogger.debug(":: createdEmployee ::");
		val_employee.validate(employeebean, result);
		try {
			if (result.hasErrors()) {
				AppLogger.debug("::createdEmployee form has error ::");
				return "fn_create_employee";
			} else {
				AppLogger.debug("::createdEmployee form has no errors ::");
				insertorupdate = in_financeservice.generateEmployee(employeebean);

				if (insertorupdate) {
					AppLogger.debug("::Employee Generated Successfully::");
					request.getSession().setAttribute("successmsg", successmsg);
				} else {
					AppLogger.debug("::Employee aleady Exists::");
					request.getSession().setAttribute("successmsg", "Employee Already Exists");
				}
			}

		} catch (Exception e) {
			AppLogger.error("Exception in createdEmployee", e);
		}
		model.addAttribute(new EmployeeBean());

		return "redirect:fn_create_employee.fin";
	}

	@RequestMapping(value = "fn_create_company_registration.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createCompanyRegistration(HttpServletRequest request, ModelMap model) {
		AppLogger.debug(":: createCompanyRegistration ::");

		model.addAttribute(new CompanyRegistrationBean());

		return "fn_company_registration_form";
	}

	@RequestMapping(value = "fn_upload_logo.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createdCompanyRegistration(@ModelAttribute CompanyRegistrationBean companyregistration,
			BindingResult result, ModelMap model, HttpServletRequest request, HttpServletResponse response) {
		String companyname = companyregistration.getCompanyname();
		try {
			AppLogger.debug("::createdCompanyRegistration ::");
			val_companyreg.validate(companyregistration, result);
			if (result.hasErrors()) {
				AppLogger.debug("::createdCompanyRegistration form has errors ::");
				return "fn_company_registration_form";
			} else {
				AppLogger.debug("Company Registration \t\t" + companyregistration.getCompanyname());
				insertorupdate = in_financeservice.generateCompany(companyregistration);
				// c_financereport.generateCompanyRegistration(request,
				// response, model);Generate Jasper Report for Latest Company
				// Register.
				if (insertorupdate) {
					AppLogger.debug(":: Company Creation Successfully::");
					request.getSession().setAttribute("companyname", companyname);
					request.getSession().setAttribute("successmsg", successmsg);
				} else {
					AppLogger.debug(":: Company Name already Exists::");
					request.getSession().setAttribute("successmsg", "Company Already Exists");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		// model.addAttribute(new CompanyRegistrationBean());
		return "fn_uploading_logo";
	}

	@RequestMapping(value = "sfn_create_company_logo_registration.fin", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String uploadCompanyLogo(@ModelAttribute CompanyRegistrationBean companyregistration, ModelMap model,
			HttpServletRequest request, HttpServletResponse response) {

		try {
			AppLogger.info("::uploadCompanyLogo::");
			String companyname = request.getSession().getAttribute("companyname").toString();
			AppLogger.debug("uploadCompanyLogo CompanyName:: " + companyname);
			insertorupdate = in_financeservice.geneateLogoPath(request, response, companyname);
			AppLogger.debug("Company Registration \t\t" + companyregistration.getCompanyname());
			// in_financeservice.generateCompany(companyregistration);
			// c_financereport.generateCompanyRegistration(request, response,
			// model);Generate Jasper Report for Latest Company Register.

		} catch (Exception e) {
			AppLogger.error("Exception in uploadCompanyLogo::", e);
		}

		// request.getSession().removeAttribute("companyname");
		return "redirect:login.fin";
	}

	// Finance Starts...................
	// Vat and Tax Calculation
	@RequestMapping(value = "fn_create_invoice_vat_form.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createVatAndTaxForm(HttpServletRequest request, ModelMap model) {
		model.addAttribute(new VatAndTaxBean());
		AppLogger.info("::createVatAndTaxForm ::");
		return "fn_vat_tax_calform";
	}

	@RequestMapping(value = "sfn_create_invoice_vat_form.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createdVatAndTaxForm(@ModelAttribute VatAndTaxBean vatandtax, BindingResult result,
			HttpServletRequest request, ModelMap model) {
		try {
			AppLogger.info("::createVatAndTaxForm Submition::");
			validation.validate(vatandtax, result);
			if (result.hasErrors()) {
				AppLogger.debug("::createVatAndTaxForm has errors::");
				return "fn_vat_tax_calform";
			} else {
				insertorupdate = in_financeservice.generateVatAndTax(vatandtax);
				AppLogger.debug("::createVatAndTaxForm has no errors::");

				if (insertorupdate) {
					AppLogger.debug("vat and tax form sumitted successfully");
					request.getSession().setAttribute("successmsg", successmsg);
				} else {
					AppLogger.debug("::Unable to save Vat and Tax Form::");
				}
			}
		} catch (Exception e) {
			AppLogger.error("::Exception in createdVatAndTaxForm ::", e);
		}

		return "redirect:fn_create_invoice_vat_form.fin";
	}

	@RequestMapping(value = "fn_edit_vat_form.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String editingVatForm(HttpServletRequest request, ModelMap model) {

		String companyname = (String) request.getSession().getAttribute("compname");
		AppLogger.debug("Company Name in editingVatForm::" + companyname);

		request.setAttribute("Valtlist", in_financeservice.viewVatByCompanyName(companyname));
		model.addAttribute(new VatAndTaxBean());

		return "fn_upadate_vat_tax";
	}

	@RequestMapping(value = "sfn_edit_invoice_vat_form.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String editVatAndTaxForm(@ModelAttribute VatAndTaxBean vatandtax, BindingResult result,
			HttpServletRequest request, ModelMap model) {
		try {
			AppLogger.debug("::editVatAndTaxForm ::");
			validation.validate(vatandtax, result);
			if (result.hasErrors()) {
				AppLogger.debug("::editVatAndTaxForm  has errors::");
				return "fn_vat_tax_calform";
			} else {
				AppLogger.debug("::editVatAndTaxForm  has no errors::");
				insertorupdate = in_financeservice.updateVatByCompanyName(vatandtax);

				if (insertorupdate) {
					AppLogger.debug("::editVatAndTaxForm  inserted successfully::");
					request.getSession().setAttribute("successmsg", successmsg);
				} else {
					AppLogger.debug("::Unable to insert editVatAndTaxForm::");
				}
			}
		} catch (Exception e) {
			AppLogger.error(":: Exception in editVatAndTaxForm", e);
		}

		return "redirect:fn_edit_vat_form.fin";
	}

	@RequestMapping(value = "fn_create_invoice_form.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createInvoiceForm(HttpServletRequest request, ModelMap model) {
		model.addAttribute(new InvoiceFormBean());
		AppLogger.info("::createInvoiceForm ::");
		return "fn_create_invoice_form";
	}

	@RequestMapping(value = "fn_created_invoice_form.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createdInvoiceForm(@ModelAttribute InvoiceFormBean invoiceform, BindingResult errors, ModelMap model,
			HttpServletRequest request) {
		AppLogger.info("::createdInvoiceForm ::");
		val_invoice.validate(invoiceform, errors);

		if (errors.hasErrors()) {
			AppLogger.debug(":: createdInvoiceForm::");
			return "fn_create_invoice_form";
		} else {
			insertorupdate = in_financeservice.generateInvoice(invoiceform);
			if (insertorupdate) {
				AppLogger.debug(":: createdInvoiceForm:: Saved successfully");
				request.getSession().setAttribute("successmsg", successmsg);
			} else {
				AppLogger.debug(":: createdInvoiceForm:: Unable to Save ");
			}
		}

		return "redirect:fn_create_invoice_form.fin";
	}

	@RequestMapping(value = "fn_create_daily_expenses_form.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createDailyExpensesForm(HttpServletRequest request, ModelMap model) {
		AppLogger.debug("::createDailyExpensesForm ::");
		model.addAttribute(new AutoExpencesesTravelBean());
		return "fn_daily_auto_expenses";
	}

	@RequestMapping(value = "fn_created_auto_expenses_form.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createdInvoiceForm(@ModelAttribute AutoExpencesesTravelBean autoexpenses, BindingResult errors,
			HttpServletRequest request) {

		AppLogger.debug("::createdInvoiceForm ::");
		val_autotravel.validate(autoexpenses, errors);

		if (errors.hasErrors()) {
			AppLogger.debug("::createdInvoiceForm has error::");
			return "fn_daily_auto_expenses";
		} else {

			insertorupdate = in_financeservice.createDailyAutoExpenses(autoexpenses);
			if (insertorupdate) {
				AppLogger.debug(":: createdInvoiceForm inserted successfully ::");
				request.getSession().setAttribute("successmsg", successmsg);
			} else {
				AppLogger.debug(":: Unable to insert createdInvoiceForm ::");
			}
			return "redirect:fn_create_daily_expenses_form.fin";
		}

	}

	// Phone Bill Daily Expenses
	@RequestMapping(value = "fn_daily_phone_expenses.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createPhoneBillDailyExpenses(ModelMap model) {
		model.addAttribute(new PhoneBillExpencesesBean());
		return "fn_daily_phone_bill_expenses_by_executive";
	}

	@RequestMapping(value = "sfn_daily_phone_expenses.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatePhoneBillDailyExpenses(@ModelAttribute PhoneBillExpencesesBean phonebillexp,
			BindingResult errors, HttpServletRequest request) {
		AppLogger.info("::generatePhoneBillDailyExpenses ::");
		val_phonebill.validate(phonebillexp, errors);
		if (errors.hasErrors()) {
			AppLogger.info("::generatePhoneBillDailyExpenses Form errors::");
			return "fn_daily_phone_bill_expenses_by_executive";
		} else {
			in_financeservice.generatePhoneBillDailyExpenses(phonebillexp);

			if (insertorupdate) {
				AppLogger.info("::generatePhoneBillDailyExpenses Form inserted successfully::");
				request.getSession().setAttribute("successmsg", successmsg);
			} else {
				AppLogger.info("::unable to insert generatePhoneBillDailyExpenses ::");
			}
			return "redirect:fn_daily_phone_expenses.fin";
		}

	}

	// Food Expenses Daily
	@RequestMapping(value = "fn_food_expenses.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createFoodExpenses(ModelMap model) {
		model.addAttribute(new FoodExcepensesBean());
		return "fn_daily_food_expenses_by_executive";
	}

	@RequestMapping(value = "sfn_food_expenses.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String genearateFoodExpenses(@ModelAttribute FoodExcepensesBean foodexpen, BindingResult errors,
			HttpServletRequest request) {

		val_foodexp.validate(foodexpen, errors);
		AppLogger.info("::genearateFoodExpenses ::");
		if (errors.hasErrors()) {
			AppLogger.debug("::genearateFoodExpenses Form has Error::");
			return "fn_daily_food_expenses_by_executive";
		} else {
			AppLogger.debug("::genearateFoodExpenses Form has no Errors::");
			insertorupdate = in_financeservice.geneateFoodBillExp(foodexpen);
			if (insertorupdate) {
				AppLogger.debug("::genearateFoodExpenses has saved Successfully::");
				request.getSession().setAttribute("sucessmsg", successmsg);
			} else {
				AppLogger.debug("::Unable to ::");
			}
			return "redirect:fn_food_expenses.fin";
		}

	}

	// Hotel Expenses
	@RequestMapping(value = "fn_hotel_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateHotelExpByExec(ModelMap model) {
		model.addAttribute(new HotelExpensesBean());
		return "fn_daily_hotel_exp_by_ececutive";

	}

	@RequestMapping(value = "sfn_hotel_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String geneateHotelExpenses(@ModelAttribute HotelExpensesBean hotelexp, BindingResult errors,
			HttpServletRequest request) {
		AppLogger.info("::geneateHotelExpenses ::");
		val_hotelexp.validate(hotelexp, errors);

		if (errors.hasErrors()) {
			AppLogger.debug("::geneateHotelExpenses has Errors::");
			return "fn_daily_hotel_exp_by_ececutive";
		} else {
			insertorupdate = in_financeservice.geneateHotelExp(hotelexp);

			if (insertorupdate) {
				AppLogger.debug("::geneateHotelExpenses inserted Successfully ::");
				request.getSession().setAttribute("successmsg", successmsg);
			} else {
				AppLogger.debug("::Unable to insert  geneateHotelExpenses::");
			}
			return "redirect:fn_hotel_exp.fin";
		}

	}

	// Entertainment Expenses
	@RequestMapping(value = "fn_entertainment_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createEntertaimentExp(ModelMap model) {
		model.addAttribute(new EntertainmentExpencesesBean());
		return "fn_daily_entertainment_expenses_by_executive";
	}

	@RequestMapping(value = "sfn_entertainment_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateEntertainmentExp(@ModelAttribute EntertainmentExpencesesBean entertainmentexp,
			BindingResult errors, HttpServletRequest request) {
		AppLogger.info("::generateEntertainmentExp ::");
		val_entertainment.validate(entertainmentexp, errors);

		if (errors.hasErrors()) {
			AppLogger.debug("::generateEntertainmentExp:: has error");
			return "fn_daily_entertainment_expenses_by_executive";
		} else {
			insertorupdate = in_financeservice.generateEntertainmentExp(entertainmentexp);
			if (insertorupdate) {
				AppLogger.debug("::generateEntertainmentExp:: inserted successfully");
				request.getSession().setAttribute("successmsg", successmsg);
			} else {
				AppLogger.debug("::unable to generateEntertainmentExp:: ");
			}
			return "redirect:fn_entertainment_exp.fin";
		}

	}

	// Mislenious Expenses
	@RequestMapping(value = "fn_mislenious_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createMisleniousExp(ModelMap model) {
		model.addAttribute(new MisleniousExpencesesBean());

		return "fn_daily_mislaneous_exp_by_executives";

	}

	@RequestMapping(value = "sfn_misleneousexp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateMisleneousExp(@ModelAttribute MisleniousExpencesesBean misleneousexp, BindingResult error,
			HttpServletRequest request) {
		AppLogger.info("::generateMisleneousExp::");
		val_misexp.validate(misleneousexp, error);
		if (error.hasErrors()) {
			AppLogger.info(":: generateMisleneousExp has errors::");
			return "fn_daily_mislaneous_exp_by_executives";
		} else {
			AppLogger.info(":: generateMisleneousExp has no errors::");
			insertorupdate = in_financeservice.generateMisleneousExp(misleneousexp);
			if (insertorupdate) {
				AppLogger.info(":: generateMisleneousExp inserted Successfully::");
				request.getSession().setAttribute("successmsg", successmsg);
			}
			return "redirect:fn_mislenious_exp.fin";
		}

	}

	// NonTrading Expenses
	@RequestMapping(value = "fn_daily_non_training_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createNonTradingExp(ModelMap model) {
		model.addAttribute(new NonTradingExpencesesBean());
		return "fn_daily_non_training_exp";
	}

	@RequestMapping(value = "sfn_daily_non_training_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String genearteNonTradingExp(@ModelAttribute NonTradingExpencesesBean nontradingexp, BindingResult errors,
			HttpServletRequest request) {
		val_nontradeexp.validate(nontradingexp, errors);

		if (errors.hasErrors()) {
			return "fn_daily_non_training_exp";
		} else {
			insertorupdate = in_financeservice.generateNonTradingExp(nontradingexp);
			if (insertorupdate) {
				request.getSession().setAttribute("successmsg", successmsg);
			}
			return "redirect:fn_daily_non_training_exp.fin";
		}

	}

	// Internet Expenses
	@RequestMapping(value = "fn_internet_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateInternetExp(ModelMap model) {
		model.addAttribute(new InternetExpBean());
		return "fn_internet_exp";
	}

	@RequestMapping(value = "sfn_internet_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String geneateInternetExp(@ModelAttribute InternetExpBean internetexp, BindingResult errors,
			HttpServletRequest request) {
		val_intexp.validate(internetexp, errors);

		if (errors.hasErrors()) {
			return "fn_internet_exp";
		} else {
			insertorupdate = in_financeservice.geneateInternetExp(internetexp);
			if (insertorupdate) {
				request.getSession().setAttribute("successmsg", successmsg);
			} else {

			}
			return "redirect:fn_internet_exp.fin";
		}

	}

	// Advertisement Expenses
	@RequestMapping(value = "fn_advertisement_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateAdvertisementExp(ModelMap model) {
		model.addAttribute(new AdvertisementExpenses());
		return "fn_advertisement_exp";
	}

	@RequestMapping(value = "sfn_advertisement_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public @ResponseBody String geneatedAdvertisementExp(HttpServletRequest request,
			@ModelAttribute AdvertisementExpenses advertisement, BindingResult errors, ModelMap model) {
		val_advexp.validate(advertisement, errors);
		if (errors.hasErrors()) {
			return "fn_advertisement_exp";
		} else {
			System.out.println("Advertisement Out of the errors");

			/* logger.info("returning to fn_advertisement.jsp"); */
			insertorupdate = in_financeservice.generateAdvertisementExp(advertisement);

			if (insertorupdate) {
				request.getSession().setAttribute("sucessmsg", successmsg);
			} else {

			}

			return "redirect:fn_advertisement_exp.fin";
		}

	}

	// Office Exp
	@RequestMapping(value = "fn_office_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateOfficeExp(ModelMap model) {
		model.addAttribute(new OfficeExp());
		return "fn_office_exp";
	}

	@RequestMapping(value = "sfn_office_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public @ResponseBody String generateOfficeExp(@ModelAttribute OfficeExp officeexp, BindingResult errors,
			HttpServletRequest request) {
		val_officeexp.validate(officeexp, errors);
		if (errors.hasErrors()) {
			return "fn_office_exp";
		} else {
			insertorupdate = in_financeservice.geneateOfficeExp(officeexp);
			if (insertorupdate) {
				request.getSession().setAttribute("sucessmsg", successmsg);
			} else {

			}
			return "redirect:fn_office_exp.fin";
		}

	}

	// Repairs&Maintenance Expenses
	@RequestMapping(value = "fn_repairs_maintenance_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateRepairsandMaintenance(ModelMap model) {
		model.addAttribute(new RepairMaintenenceBean());
		return "fn_repairs_maintenance_exp";
	}

	@RequestMapping(value = "sfn_repairs_maintenance_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateRepairandMaintenance(RepairMaintenenceBean repairmaintenance, BindingResult errors,
			HttpServletRequest request) {
		val_repvalid.validate(repairmaintenance, errors);
		if (errors.hasErrors()) {
			return "fn_repairs_maintenance_exp";
		} else {
			insertorupdate = in_financeservice.generateRepairsAndMaintenance(repairmaintenance);
			if (insertorupdate) {
				request.getSession().setAttribute("successmsg", successmsg);
			}

			return "redirect:fn_repairs_maintenance_exp.fin";
		}

	}

	// Postage Expenses
	@RequestMapping(value = "fn_postage.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createPostageCorrier(ModelMap model) {
		model.addAttribute(new PostageExpBean());
		return "fn_postage_corrier_exp";
	}

	@RequestMapping(value = "sfn_postage.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatePostageCorrier(@ModelAttribute PostageExpBean postageexp, BindingResult errors,
			HttpServletRequest request) {
		val_postexp.validate(postageexp, errors);
		if (errors.hasErrors()) {
			return "fn_postage_corrier_exp";
		} else {
			insertorupdate = in_financeservice.generatePostageAndCorrier(postageexp);
			if (insertorupdate) {
				request.getSession().setAttribute("successmsg", successmsg);
			} else {

			}
			return "redirect:fn_postage.fin";
		}

	}

	// Aggingaccountpayble
	@RequestMapping(value = "fn_aggingaccounpayble.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createAggingaccountpayble(ModelMap model) {
		model.addAttribute(new AggingaccountpaybleBean());
		return "fn_aggingofaccountpayable";
	}

	@RequestMapping(value = "sfn_aggingaccounpayble.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateAggingaccountpayble(@ModelAttribute AggingaccountpaybleBean aggingaccountpayblebean,
			HttpServletRequest request) {
		insertorupdate = in_financeservice.generateAgingOfAccountPayable(aggingaccountpayblebean);
		if (insertorupdate) {
			System.out.println(":in aggingaccountpayble");
			request.getSession().setAttribute("successmsg", successmsg);
		} else {
			System.out.println(":in aggingaccountpayble else");
		}

		return "redirect:fn_aggingaccounpayble.fin";
	}

	// AggingaccountReceivable
	@RequestMapping(value = "fn_aggingaccounreceivable.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createAggingaccountreceivable(ModelMap model) {
		model.addAttribute(new AggingaccountreceivableBean());
		return "fn_aggingofaccountreceivable";
	}

	@RequestMapping(value = "sfn_aggingaccounreceivable.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateAggingaccountreceivable(
			@ModelAttribute AggingaccountreceivableBean aggingaccountreceivableBean, HttpServletRequest request) {
		insertorupdate = in_financeservice.generateAgingOfAccountRecivable(aggingaccountreceivableBean);

		if (insertorupdate) {
			System.out.println(":in aggingaccountreceivable");
			request.getSession().setAttribute("successmsg", successmsg);
		} else {
			System.out.println(":in aggingaccountreceivable else");
		}

		return "redirect:fn_aggingaccounreceivable.fin";
	}

	// cash disbursements journal
	@RequestMapping(value = "fn_cashdisbursementsjournal.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createCashdisbursementsjournal(ModelMap model) {
		model.addAttribute(new CashdisbursementsjournalBean());
		return "fn_cashdisbursementsjournal";
	}

	@RequestMapping(value = "sfn_cashdisbursementsjournal.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatecashdisbursementsjournal(
			@ModelAttribute CashdisbursementsjournalBean cashdisbursementsjournalBean) {

		insertorupdate = in_financeservice.generateCashDisbursmentJournal(cashdisbursementsjournalBean);

		if (insertorupdate) {
			System.out.println(":in cashdisbursementsjournal");
			// request.getSession().setAttribute("successmsg", successmsg);
		} else {
			System.out.println(":in cashdisbursementsjournal else");
		}

		return "redirect:fn_cashdisbursementsjournal.fin";
	}

	// cash receipts journal
	@RequestMapping(value = "fn_cashreceiptsjournal.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createCashreceiptsjournal(ModelMap model) {
		model.addAttribute(new CashreceiptsjournalBean());
		return "fn_cashreceiptsjournal";
	}

	@RequestMapping(value = "sfn_cashreceiptsjournal.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatecashreceiptsjournal(@ModelAttribute CashreceiptsjournalBean cashreceiptsjournalBean,
			HttpServletRequest request) {
		insertorupdate = in_financeservice.createCashreceiptsjournal(cashreceiptsjournalBean);

		if (insertorupdate) {
			System.out.println(":in cashreceiptsjournal");
			request.getSession().setAttribute("successmsg", successmsg);
		} else {
			System.out.println(":in cashreceiptsjournal else");
		}

		return "redirect:fn_cashreceiptsjournal.fin";
	}

	// daily cash report
	@RequestMapping(value = "fn_dailycashreport.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createDailycashreport(ModelMap model) {
		model.addAttribute(new DailycashreportBean());
		return "fn_dailycashreport";
	}

	@RequestMapping(value = "sfn_dailycashreport.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatedailycashreport(@ModelAttribute DailycashreportBean dailycashreportBean,
			HttpServletRequest request) {
		insertorupdate = in_financeservice.createDailycashreport(dailycashreportBean);

		if (insertorupdate) {
			System.out.println(":in dailycashreport");
			request.getSession().setAttribute("successmsg", successmsg);
		} else {
			System.out.println(":in dailycashreport else");
		}

		return "redirect:fn_dailycashreport.fin";
	}

	// petty cash journal
	@RequestMapping(value = "fn_pettycashjournal.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createPettycashjournal(ModelMap model) {
		model.addAttribute(new PettycashjornalBean());
		return "fn_pettycashjournal";
	}

	@RequestMapping(value = "sfn_pettycashjournal.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatepettycashjournal(@ModelAttribute PettycashjornalBean pettycashjornalBean,
			HttpServletRequest request) {
		insertorupdate = in_financeservice.createPettycashjournal(pettycashjornalBean);

		if (insertorupdate) {
			System.out.println(":in pettycashjournal");
			request.getSession().setAttribute("successmsg", successmsg);
		} else {
			System.out.println(":in pettycashjournal else");
		}

		return "redirect:fn_pettycashjournal.fin";
	}

	// petty cash voucher
	@RequestMapping(value = "fn_pettycashvoucher.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createPettycashvoucher(ModelMap model) {
		model.addAttribute(new PettycashvoucherBean());
		return "fn_pettycashvoucher";
	}

	@RequestMapping(value = "sfn_pettycashvoucher.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatepettycashvoucher(@ModelAttribute PettycashvoucherBean pettycashvoucherBean,
			HttpServletRequest request) {
		insertorupdate = in_financeservice.createPettycashvoucher(pettycashvoucherBean);

		if (insertorupdate) {
			System.out.println(":in pettycashvoucher");
			request.getSession().setAttribute("successmsg", successmsg);
		} else {
			System.out.println(":in pettycashvoucher else");
		}

		return "redirect:fn_pettycashvoucher.fin";
	}

	// Creating Ledger
	@RequestMapping(value = "fn_create_ledger_form.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createLedger(HttpServletRequest request, ModelMap model) {
		model.addAttribute(new LedgerDetailsBean());
		return "fn_create_ledger";
	}

	@RequestMapping(value = "created_fn_ledger.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createdLedgerDetails(@ModelAttribute LedgerDetailsBean ledgerdetails, BindingResult errors,
			HttpServletRequest request) {
		val_ledger.validate(ledgerdetails, errors);
		if (errors.hasErrors()) {
			return "fn_create_ledger";
		} else {
			insertorupdate = in_financeservice.createLedgerDetails(ledgerdetails);
			request.getSession().setAttribute("successmsg", successmsg);
			return "redirect:fn_create_ledger_form.fin";
		}

	}

	// Current Assets
	@RequestMapping(value = "fn_bl_current_assets.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewCurrentAssets(HttpServletRequest request, ModelMap model) {

		return "fn_bl_current_assets";
	}

	@RequestMapping(value = "fn_bl_current_assets_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewCurrentAssetsList(HttpServletRequest request, ModelMap model) {

		return "fn_bl_current_asset_ledger_list";
	}

	@RequestMapping(value = "fn_bl_cash_in_hand_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewCashInHandList(HttpServletRequest request, ModelMap model) {

		return "fn_bl_cash_in_hand";
	}

	@RequestMapping(value = "fn_bl_bank_and_cash_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewBankAndCashList(HttpServletRequest request, ModelMap model) {

		return "fn_bl_bank_and_cash_list";
	}

	// Voucher Creation
	@RequestMapping(value = "fn_create_voucher_form.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createVoucher(HttpServletRequest request, ModelMap model) {
		model.addAttribute(new VocherDetailsBean());
		return "fn_create_voucher";
	}

	@RequestMapping(value = "created_fn_voucher.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createdVoucherDetails(@ModelAttribute VocherDetailsBean voucherdetails, BindingResult errors,
			HttpServletRequest request) {
		val_voucher.validate(voucherdetails, errors);
		if (errors.hasErrors()) {
			return "fn_create_voucher";
		} else {
			insertorupdate = in_financeservice.createVoucherDetails(voucherdetails);
			if (insertorupdate) {
				request.getSession().setAttribute("successmsg", successmsg);
			}
			return "redirect:fn_create_voucher_form.fin";
		}

	}

	// Voucher Creation in Stock.
	@RequestMapping(value = "fn_voucher_stock.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createVoucherForStock(HttpServletRequest request, ModelMap model) {
		model.addAttribute(new VocherDetailsBean());
		return "fn_voucher_stock_form";
	}

	@RequestMapping(value = "created_fn_voucher_stock.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createdVoucherForStock(@ModelAttribute VocherDetailsBean voucherdetails, BindingResult errors,
			HttpServletRequest request) {
		val_voucher.validate(voucherdetails, errors);
		if (errors.hasErrors()) {
			return "fn_voucher_stock_form";
		} else {
			insertorupdate = in_financeservice.createVoucherDetails(voucherdetails);
			if (insertorupdate) {
				request.getSession().setAttribute("successmsg", successmsg);
			}
			return "redirect:fn_voucher_stock.fin";
		}

	}

	// Group Creation
	@RequestMapping(value = "fn_create_groups_form.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createGroups(HttpServletRequest request, ModelMap model) {
		model.addAttribute(new GroupDetailsBean());
		return "fn_create_groups";
	}

	@RequestMapping(value = "created_fn_group.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createdGroupDetails(@ModelAttribute GroupDetailsBean groupdetails, BindingResult errors,
			HttpServletRequest request) {
		val_group.validate(groupdetails, errors);
		if (errors.hasErrors()) {
			return "fn_create_groups";
		} else {
			insertorupdate = in_financeservice.createGroupDetails(groupdetails);
			if (insertorupdate) {
				request.getSession().setAttribute("successmsg", successmsg);
			}

			return "redirect:fn_create_groups_form.fin";
		}

	}

	// Create Stock Group Details.
	@RequestMapping(value = "fn_create_stock_group.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createStockGroup(ModelMap model) {
		model.addAttribute(new StockGroupDetailsBean());
		return "fn_create_stock_group";
	}

	@RequestMapping(value = "sfn_stock_group.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatedStockGroup(@ModelAttribute StockGroupDetailsBean stockgroupd, BindingResult errors,
			HttpServletRequest request) {
		val_stockgroup.validate(stockgroupd, errors);
		if (errors.hasErrors()) {
			return "fn_create_stock_group";
		} else {
			System.out.println("Stock Group Details");
			insertorupdate = in_financeservice.createStockGroups(stockgroupd);
			if (insertorupdate) {
				request.getSession().setAttribute("successmsg", successmsg);
			} else {

			}
			return "redirect:fn_create_stock_group.fin";
		}

	}

	// Stock Items
	@RequestMapping(value = "fn_create_stock_items.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateStockItem(ModelMap model) {
		model.addAttribute(new StockItemBean());
		return "fn_create_stock_items";
	}

	@RequestMapping(value = "sfn_generate_stock_item.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatedStockItems(@ModelAttribute StockItemBean stockitem, BindingResult errors,
			HttpServletRequest request) {
		val_stockitem.validate(stockitem, errors);

		if (errors.hasErrors()) {
			return "fn_create_stock_items";
		} else {
			System.out.println("StockGroupItems");
			insertorupdate = in_financeservice.createStockItems(stockitem);
			if (insertorupdate) {
				request.getSession().setAttribute("successmsg", successmsg);
			} else {

			}
			return "redirect:fn_create_stock_items.fin";
		}

	}

	// Invoice Measures
	@RequestMapping(value = "fn_inventory_measure.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateMeasure(ModelMap model) {
		model.addAttribute(new MeasuresBean());
		return "fn_inventory_measure";
	}

	@RequestMapping(value = "sfn_inventory_measure.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateMeasure(@ModelAttribute MeasuresBean measuresbean, BindingResult errors,
			HttpServletRequest request) {
		val_mesur.validate(measuresbean, errors);
		if (errors.hasErrors()) {
			return "fn_inventory_measure";
		} else {
			System.out.println("Mesures Unit");
			insertorupdate = in_financeservice.createMeasureUnits(measuresbean);
			if (insertorupdate) {
				request.getSession().setAttribute("successmsg", successmsg);
			} else {

			}
			return "redirect:fn_inventory_measure.fin";
		}

	}

	// Create Voucher Details.
	// Voucher Contra Details.
	@RequestMapping(value = "fn_voucher_reciept.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createVoucherReciept(ModelMap model) {
		model.addAttribute(new VoucherRecieptBean());
		return "fn_vocher_reciept";
	}

	@RequestMapping(value = "sfn_voucher_reciept.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateVoucherReciept(@ModelAttribute VoucherRecieptBean voucherreciept, BindingResult errors,
			HttpServletRequest request) {
		// System.out.println("Voucher Reciept Journal");
		val_vreciept.validate(voucherreciept, errors);
		if (errors.hasErrors()) {
			return "fn_vocher_reciept";
		} else {
			insertorupdate = in_financeservice.createVoucherReciept(voucherreciept);
			if (insertorupdate) {
				request.getSession().setAttribute("successmsg", successmsg);
			} else {

			}
			return "redirect:fn_voucher_reciept.fin";
		}

	}

	// Voucher Payment
	@RequestMapping(value = "fn_vocher_payment.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateVoucherPayment(ModelMap model) {
		model.addAttribute(new VocherPaymentBean());
		return "fn_vocher_payment";
	}

	@RequestMapping(value = "sfn_voucher_payment.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateVoucherPayment(@ModelAttribute VocherPaymentBean voucherpayment, BindingResult errors,
			HttpServletRequest request) {
		val_vpayment.validate(voucherpayment, errors);
		if (errors.hasErrors()) {
			return "fn_vocher_payment";
		} else {
			insertorupdate = in_financeservice.createVoucherPayment(voucherpayment);
			if (insertorupdate) {
				request.getSession().setAttribute("sucessmsg", successmsg);
			} else {

			}
			return "redirect:fn_vocher_payment.fin";
		}

	}

	// View Voucher Payment
	@RequestMapping(value = "fn_view_vocher_payment.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewVoucherPayment(HttpServletRequest request) {
		System.out.println("Voucher Payment");
		return "fn_view_voucher_payment";
	}

	// Carrage Out Ward
	@RequestMapping(value = "fn_view_carrage_out_ward.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewCarrageOutWard(HttpServletRequest request) {
		System.out.println("Voucher Payment");
		return "fn_pl_carrage_out_ward";
	}
	// AutoTravelExp

	@RequestMapping(value = "fn_view_travel_exp_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewTravelExp(HttpServletRequest request) {
		System.out.println("Voucher Payment");
		return "fn_pl_travel_exp_list";
	}
	// PhoneBillExp

	@RequestMapping(value = "fn_view_phone_bill_exp_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewPhoneBillExp(HttpServletRequest request) {
		System.out.println("Voucher Payment");
		return "fn_pl_travel_exp_list";
	}

	// HotelExp
	@RequestMapping(value = "fn_view_hotel_exp_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewHotelExpDetails(HttpServletRequest request) {
		System.out.println("Voucher Payment");
		return "fn_pl_hotel_exp";
	}
	// Food Exp

	@RequestMapping(value = "fn_view_food_exp_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewFoodExpDetails(HttpServletRequest request) {
		System.out.println("Voucher Payment");
		return "fn_pl_food_exp";
	}
	// Entertainment Exp

	@RequestMapping(value = "fn_view_entertainment_exp_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewEntertainmentExpDetails(HttpServletRequest request) {
		System.out.println("Voucher Payment");
		return "fn_pl_enter_exp";
	}
	// Mislleneous Exp

	@RequestMapping(value = "fn_view_mis_exp_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewMisleneousExpDetails(HttpServletRequest request) {
		System.out.println("Voucher Payment");
		return "fn_pl_mis_exp";
	}

	// Internet Exp
	@RequestMapping(value = "fn_view_internet_exp_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewInternetExpDetails(HttpServletRequest request) {
		System.out.println("Voucher Payment");
		return "fn_pl_internet_exp";
	}

	// Advertisement Exp
	@RequestMapping(value = "fn_view_advertisement_exp_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewAdvertisementExpDetails(HttpServletRequest request) {
		System.out.println("Voucher Payment");
		return "fn_pl_adv_exp";
	}

	// Office Exp
	@RequestMapping(value = "fn_view_office_exp_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewOfficeExpDetails(HttpServletRequest request) {
		System.out.println("Voucher Payment");
		return "fn_pl_office_exp";
	}
	// Postage Exp

	@RequestMapping(value = "fn_view_postage_exp_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewPostageExpDetails(HttpServletRequest request) {
		System.out.println("Voucher Payment");
		return "fn_pl_postageexp";
	}
	// Repair And Maintenance

	@RequestMapping(value = "fn_view_repair_exp_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewRepairAndMainteneceExpDetails(HttpServletRequest request) {
		System.out.println("Voucher Payment");
		return "fn_pl_repair_exp";
	}
	// Duties And Taxes

	@RequestMapping(value = "fn_view_duties_and_taxes_exp_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewDutiesAndTaxesExpDetails(HttpServletRequest request) {
		System.out.println("Voucher Payment");
		return "fn_pl_duties_and_taxes";
	}

	// OpenStock in Profit and Loss
	@RequestMapping(value = "fn_view_vocher_stock.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewOpenStockList(HttpServletRequest request) {
		System.out.println("Voucher Stock List");
		return "fn_view_voucher_payment";
	}

	// Profit & Loss End.
	// Voucher Contra
	@RequestMapping(value = "fn_voucher_contra.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateVoucherContra(ModelMap model) {
		model.addAttribute(new VocherContraBean());

		return "fn_voucher_contra";
	}

	@RequestMapping(value = "sfn_voucher_contra.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateVoucherContra(@ModelAttribute VocherContraBean vouchervcontra, BindingResult errors,
			HttpServletRequest request) {
		val_vouchercontra.validate(vouchervcontra, errors);
		if (errors.hasErrors()) {
			return "fn_voucher_contra";
		} else {
			insertorupdate = in_financeservice.createVoucherRecipt(vouchervcontra);

			if (insertorupdate) {
				request.getSession().setAttribute("successmsg", successmsg);
			}
			return "redirect:fn_voucher_contra.fin";
		}

	}

	// Purchase Details
	@RequestMapping(value = "fn_voucher_purchase.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String genarteVoucherPurchase(ModelMap model) {
		model.addAttribute(new VocherPurchaseBean());
		return "fn_vocher_purchase";
	}

	@RequestMapping(value = "sfn_voucher_purchase.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatedVoucherPurchase(@ModelAttribute VocherPurchaseBean voucherbean, BindingResult errors,
			HttpServletRequest request) {

		insertorupdate = in_financeservice.createVoucherPurchase(voucherbean);
		if (insertorupdate) {
			request.getSession().setAttribute("successmsg", successmsg);
		} else {

		}
		return "redirect:fn_voucher_purchase.fin";
	}

	// Voucher Sales
	@RequestMapping(value = "fn_voucher_sales.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createVoucherSales(ModelMap model) {
		model.addAttribute(new VocherSalesBean());
		return "fn_voucher_sales";
	}

	@RequestMapping(value = "sfn_voucher_sales.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateVoucherSales(@ModelAttribute VocherSalesBean vouchersales, HttpServletRequest request) {
		insertorupdate = in_financeservice.createVoucherSales(vouchersales);
		if (insertorupdate) {
			request.getSession().setAttribute("successmsg", successmsg);
		} else {

		}
		return "redirect:fn_voucher_sales.fin";
	}

	// Purchase Return
	@RequestMapping(value = "fn_vocher_purchase_return.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createVoucherPurchaseReturn(ModelMap model) {
		model.addAttribute(new VocherPurchaseReturnBean());
		return "fn_vocher_purchase_return";
	}

	@RequestMapping(value = "sfn_vocher_purchase_return.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateVoucherPurchaseReturn(@ModelAttribute VocherPurchaseReturnBean voucherpurchasereturn,
			HttpServletRequest request) {

		insertorupdate = in_financeservice.createVoucherPurchaseReturn(voucherpurchasereturn);

		if (insertorupdate) {
			request.getSession().setAttribute("successmsg", successmsg);
		} else {

		}
		return "redirect:fn_vocher_purchase_return.fin";
	}

	// Sales Return
	@RequestMapping(value = "fn_vocher_sales_return.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateSalesReturn(ModelMap model) {
		model.addAttribute(new VocherSalesReturnBean());

		return "fn_vocher_sales_return";
	}

	@RequestMapping(value = "sfn_vocher_sales_return.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatedSalesReturn(@ModelAttribute VocherSalesReturnBean vouchersalesreturn,
			HttpServletRequest request) {

		in_financeservice.createVoucherSalesReturn(vouchersalesreturn);
		return "redirect:fn_vocher_sales_return.fin";
	}

	// View Direct Expenses
	@RequestMapping(value = "fn_view_direct_expenses.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewDirectExpenses(HttpServletRequest request) {

		return "fn_view_direct_expenses";
	}

	@RequestMapping(value = "fn_voucher_journal.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateVoucherJournal(ModelMap model) {
		model.addAttribute(new VocherJournalBean());

		return "fn_voucher_journal";

	}

	@RequestMapping(value = "sfn_voucher_journal.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String createVoucherJournal(@ModelAttribute VocherJournalBean voucherjournal, BindingResult errors,
			HttpServletRequest request) {
		val_vjournal.validate(voucherjournal, errors);
		if (errors.hasErrors()) {
			return "fn_voucher_journal";
		} else {
			insertorupdate = in_financeservice.createVoucherJournal(voucherjournal);
			if (insertorupdate) {
				request.getSession().setAttribute("successmsg", successmsg);
			} else {

			}
			return "redirect:fn_voucher_journal.fin";
		}

	}

	// Profit And Loss
	@RequestMapping(value = "fn_profit_and_loss.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateProfitAndLoss(HttpServletRequest request) {

		return "fn_profit_and_loss";
	}

	// Indirect Expenses
	@RequestMapping(value = "fn_total_indirect_expenses.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateIndirectExpensesList(HttpServletRequest request) {

		return "fn_indirect_expenses_list";
	}

	// Admin Sundry Creditors
	@RequestMapping(value = "fn_total_sundry_creditors.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewSundryCreditorsList(HttpServletRequest request) {
		return "fn_bl_sundry_creditors";
	}

	// Admin
	@RequestMapping(value = "fn_balance_sheet.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateBalanceSheet(HttpServletRequest request) {

		return "fn_balance_sheet";
	}

	// Admin
	@RequestMapping(value = "fn_view_indirect_expenses.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewIndirectExpenses(ModelMap model) {

		return "fn_view_bl_indirect_expenses";
	}

	// Manager Balance Sheet
	@RequestMapping(value = "fn_manager_balancesheet.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateManagerBalanceSheet(ModelMap model) {

		return "fn_manager_balancesheet";

	}

	// Manager Profit & Loss
	@RequestMapping(value = "fn_manager_profitandloss.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateManagerProfitandLoss(ModelMap model) {

		return "fn_manager_profit_and_loss";

	}

	@RequestMapping(value = "fn_manager_indirect_expenses.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateManagerIndirectExpenses(ModelMap model) {
		return "fn_manager_indirect_expenses";
	}

	@RequestMapping(value = "fn_manager_purchase_account.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateManagerPurchaseAccount(ModelMap model) {
		return "fn_manager_purchase_account";
	}

	// Sundry Creditors
	@RequestMapping(value = "fn_manager_sundry_creditors.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateManagerSundryCreditors(ModelMap model) {
		return "fn_manager_sundry_creditors";
	}

	// fn_manager_current_assets.jsp
	@RequestMapping(value = "fn_manager_current_assets.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateManagerCurrentAssetsAccount(ModelMap model) {

		return "fn_manager_current_assets";
	}

	// finance Ledger Report.
	@RequestMapping(value = "fn_search_ledger.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateLedgerDetails(ModelMap model) {
		model.addAttribute(new LedgerDetailsBean());
		return "fn_search_check_ledger_details";
	}

	@RequestMapping(value = "fn_search_group.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateGroupDetails(ModelMap model) {
		model.addAttribute(new GroupDetailsBean());
		return "fn_search_groups";
	}

	@RequestMapping(value = "fn_admin_ledger_details.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateAdminLedgerDetails(ModelMap model) {
		model.addAttribute(new LedgerDetailsBean());
		return "fn_admin_ledger_details";
	}

	@RequestMapping(value = "fn_admin_groupdetails.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateAdminGroupDetails(ModelMap model) {
		model.addAttribute(new GroupDetailsBean());
		return "fn_admin_groupdetails";
	}

	@RequestMapping(value = "fn_admin_search_invoice.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String reportInvoice(ModelMap model) {
		model.addAttribute(new InvoiceFormBean());
		return "fn_admin_search_invoice";
	}

	// fn_admin_search_TravelExp.jsp
	@RequestMapping(value = "fn_admin_search_TravelExp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateAutoExpenses(ModelMap model) {
		model.addAttribute(new AutoExpencesesTravelBean());
		return "fn_admin_search_TravelExp";
	}

	// fn_admin_phone_bill_exp.jsp
	@RequestMapping(value = "fn_admin_phonebill_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatePhoneBillExp(ModelMap model) {
		model.addAttribute(new PhoneBillExpencesesBean());
		return "fn_admin_phone_bill";
	}

	// Food Expenses
	@RequestMapping(value = "fn_admin_foodexp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateFoodExpenses(ModelMap model) {
		model.addAttribute(new FoodExcepensesBean());
		return "fn_admin_food_exp";
	}

	// Hotel Expenses
	@RequestMapping(value = "fn_admin_hotel_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateHotelExpenses(ModelMap model) {
		model.addAttribute(new HotelExpensesBean());
		return "fn_admin_hotel_exp";
	}

	// Entertainment Expenses
	@RequestMapping(value = "fn_admin_entertainment_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateEntertainmentExp(ModelMap model) {
		model.addAttribute(new EntertainmentExpencesesBean());
		return "fn_admin_entertainment_exp";
	}

	@RequestMapping(value = "fn_admin_miscleneous_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateMisleneousExpenses(ModelMap model) {
		model.addAttribute(new MisleniousExpencesesBean());
		return "fn_admin_miscleneous_exp";
	}

	// Non trading Expenses
	@RequestMapping(value = "fn_admin_non_trading_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateNonTradingExp(ModelMap model) {
		model.addAttribute(new NonTradingExpencesesBean());
		return "fn_admin_non_trading_exp";
	}

	// Internet Expenses
	@RequestMapping(value = "fn_admin_internet_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateAdminInternetExp(ModelMap model) {
		model.addAttribute(new InternetExpBean());
		return "fn_admin_internet_exp";
	}

	// Advertisement Exp
	@RequestMapping(value = "fn_admin_advertisement_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateAdminAdvertisementExp(ModelMap model) {
		model.addAttribute(new AdvertisementExpenses());
		return "fn_admin_advertisement_exp";
	}

	// Voucher Type
	@RequestMapping(value = "fn_admin_vouchertype.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateVoucherType(ModelMap model) {
		model.addAttribute(new VocherDetailsBean());
		return "fn_admin_voucher_type";
	}

	// Stock Group Details.
	@RequestMapping(value = "fn_admin_stockgroup.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateStockGroupType(ModelMap model) {
		model.addAttribute(new StockGroupDetailsBean());
		return "fn_admin_stock_group";
	}

	@RequestMapping(value = "fn_admin_stock_item.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateStockItemReport(ModelMap model) {

		model.addAttribute(new StockItemBean());
		return "fn_admin_stock_item";
	}

	// fn_admin_stock_voucher_type.jsp
	@RequestMapping(value = "fn_admin_stock_voucher_type.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateStockVoucherTypeReport(ModelMap model) {

		model.addAttribute(new VocherDetailsBean());
		return "fn_admin_stock_voucher_type";
	}

	// fn_admin_office_exp.jsp
	@RequestMapping(value = "fn_admin_office_exp.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateOfficeExpReport(ModelMap model) {
		model.addAttribute(new OfficeExp());
		return "fn_admin_office_exp";
	}

	// fn_admin_repair_maintenance.jsp
	@RequestMapping(value = "fn_admin_repair_maintenance.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateRepairMaintenanceReport(ModelMap model) {
		model.addAttribute(new RepairMaintenenceBean());
		return "fn_admin_repair_maintenance";
	}

	// fn_admin_postage_exp.jsp
	@RequestMapping(value = "fn_admin_postage.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatePostageReport(ModelMap model) {
		model.addAttribute(new PostageExpBean());
		return "fn_admin_postage_exp";
	}

	// Voucher Search
	// Voucher Reciept
	@RequestMapping(value = "fn_admin_voucher_recipt.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateVoucherReciptReport(ModelMap model) {
		model.addAttribute(new VoucherRecieptBean());
		return "fn_admin_voucher_recipt";
	}

	// Voucher Contra
	@RequestMapping(value = "fn_admin_voucher_contra.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateVoucherContraReport(ModelMap model) {
		model.addAttribute(new VocherContraBean());
		return "fn_admin_voucher_contra";
	}

	// Voucher Payment
	@RequestMapping(value = "fn_admin_voucher_payment.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateVoucherPaymentReport(ModelMap model) {
		model.addAttribute(new VocherPaymentBean());
		return "fn_admin_voucher_payment";
	}

	// fn_admin_voucher_journal.jsp
	@RequestMapping(value = "fn_admin_voucher_journal.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateVoucherJournalReport(ModelMap model) {
		model.addAttribute(new VocherJournalBean());
		return "fn_admin_voucher_journal";
	}

	// Purchase
	@RequestMapping(value = "fn_admin_voucher_purchase.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateVoucherPurchasesReport(ModelMap model) {
		model.addAttribute(new VocherPurchaseBean());
		return "fn_admin_voucher_purchase";
	}

	// Purchas Return
	@RequestMapping(value = "fn_admin_voucher_purchase_return.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateVoucherPurchasesReturnReport(ModelMap model) {
		model.addAttribute(new VocherPurchaseReturnBean());
		return "fn_admin_voucher_purchase_return";
	}

	// Sales
	@RequestMapping(value = "fn_admin_voucher_sales.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateVoucherSalesReport(ModelMap model) {
		model.addAttribute(new VocherSalesBean());
		return "fn_admin_voucher_sales";
	}

	// Sales Return
	@RequestMapping(value = "fn_admin_voucher_sales_return.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateVoucherSalesReturnReport(ModelMap model) {
		model.addAttribute(new VocherSalesReturnBean());
		return "fn_admin_voucher_sales_return";
	}

	// Aging Account Payable.
	@RequestMapping(value = "fn_admin_aging_account_payable.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateAgingAccountPayableReport(ModelMap model) {
		model.addAttribute(new AggingaccountpaybleBean());
		return "fn_admin_aging_of_account_payable";
	}

	// Aging Of Accounr Recivable
	@RequestMapping(value = "fn_admin_aging_account_recivable.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateAgingAccountRecivableReport(ModelMap model) {
		model.addAttribute(new AggingaccountreceivableBean());
		return "fn_admin_aging_of_account_recivable";
	}

	// Cash Distribution Journal
	@RequestMapping(value = "fn_admin_cash_distribution_journal.fin", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String generateCashDistributionJournal(ModelMap model) {
		model.addAttribute(new CashdisbursementsjournalBean());
		return "fn_admin_cash_distribution_journal";
	}

	// Cash Reciept Journal
	@RequestMapping(value = "fn_admin_cash_reciept_journal.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateCashRecieptJournal(ModelMap model) {
		model.addAttribute(new CashreceiptsjournalBean());
		return "fn_admin_cash_reciept_journal";
	}

	// Daily Cash Report
	@RequestMapping(value = "fn_admin_daily_cash_form.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateDailyCashReport(ModelMap model) {
		model.addAttribute(new DailycashreportBean());
		return "fn_admin_daily_cash_form";
	}

	// PettyCashJournal
	@RequestMapping(value = "fn_admin_petty_cash_journal.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatePettyCashJournal(ModelMap model) {
		model.addAttribute(new PettycashjornalBean());
		return "fn_admin_petty_cash_journal";
	}

	// PettyCashVoucher
	@RequestMapping(value = "fn_admin_petty_cash_voucher.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatePettyCashVoucher(ModelMap model) {
		model.addAttribute(new PettycashjornalBean());
		return "fn_admin_petty_cash_voucher";
	}

	// Balance Sheet
	// Capital Account.
	@RequestMapping(value = "fn_bl_capital_account_details.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewCapitalAccountDetails(ModelMap model) {

		return "fn_bl_capital_account_details";
	}

	@RequestMapping(value = "fn_bl_capital_account.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewCapitalAccountList(ModelMap model) {

		return "fn_bl_capital_account";
	}

	@RequestMapping(value = "fn_bl_paid_up_shared_capital.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewPaidUpSharedCapital(ModelMap model) {
		return "fn_bl_paid_up_shared_capital";
	}

	// Reserve Surplus
	@RequestMapping(value = "fn_bl_reverse_surplus.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewReserverSurplusDetails(ModelMap model) {

		return "fn_bl_reverse_surplus";
	}

	// Reverse SurplusList
	@RequestMapping(value = "fn_bl_reverse_surplus_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewReserverSurplusLedgerList(ModelMap model) {

		return "fn_bl_reverse_surplus_list";
	}

	// RetainEarning List
	@RequestMapping(value = "fn_bl_retain_earning_ledger_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewRetainEarningLedgerList(ModelMap model) {

		return "fn_bl_retain_earning";
	}

	// Loans And Liabilites
	@RequestMapping(value = "fn_bl_loan_liabilites.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewLoansAndLiabilites(ModelMap model) {

		return "fn_bl_loans_liabilities";
	}

	// Loans And Liabilites Ledger List.
	@RequestMapping(value = "fn_bl_loan_liabiliteslist.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewLoansAndLiabilitesList(ModelMap model) {

		return "fn_bl_loans_and_liabilites_list";
	}
	// .jsp

	@RequestMapping(value = "fn_bl_current_liabiliteslist.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewCurrentLiabilitesList(ModelMap model) {

		return "fn_bl_current_liabilites_list";
	}

	// SecuredLoan Ledger List
	@RequestMapping(value = "fn_bl_secured_loan_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewSecuredLoanList(ModelMap model) {

		return "fn_bl_secured_loan";
	}

	// UnSecuredLoan Ledger List
	@RequestMapping(value = "fn_bl_un_secured_loan_list.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewUnSecuredLoanList(ModelMap model) {

		return "fn_bl_un_secured_loan";
	}

	// Sundry Creditors
	@RequestMapping(value = "fn_bl_sudry_creditors.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewSundryCreditors(ModelMap model) {

		return "fn_bl_sundry_creditors_details";
	}

	//
	// Sundry Creditors
	@RequestMapping(value = "fn_bl_current_liabilites.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewCurrentLiabilitesDetails(ModelMap model) {

		return "fn_bl_current_liabilites";
	}

	// Other Current Liabilites
	@RequestMapping(value = "fn_bl_other_current_liabilites.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewOtherCurrentLiabilitesDetails(ModelMap model) {

		return "fn_bl_other_current_liabilites";
	}

	// SuspenseAccount
	@RequestMapping(value = "fn_bl_suspense_account.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewSuspenseAccountDetails(ModelMap model) {

		return "fn_bl_suspense_account";
	}

	// Fixed Assets
	@RequestMapping(value = "fn_bl_fixed_assets.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewFixedAssets(ModelMap model) {

		return "fn_bl_fixed_assets";
	}

	// Bank And Cash
	@RequestMapping(value = "fn_bl_bank_and_cash.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewBankAndCash(ModelMap model) {

		return "fn_bl_bank_and_cash";
	}

	// Investments
	@RequestMapping(value = "fn_bl_investment.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewInvestment(ModelMap model) {

		return "fn_bl_investment";
	}

	// Investments
	@RequestMapping(value = "fn_bl_provisions.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewProvisions(ModelMap model) {

		return "fn_bl_provisions";
	}

	// Loans And Advances
	@RequestMapping(value = "fn_bl_loans_advances_assets.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewLoansAndAdvances(ModelMap model) {
		return "fn_bl_loans_advances_assets";
	}

	// Sales Account.
	@RequestMapping(value = "fn_bl_sales_account.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String displaySalesAccount(ModelMap model) {
		return "fn_bl_sales_account";
	}

	// Inventory
	@RequestMapping(value = "fn_bl_inventory.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String displayInventroyAccount(ModelMap model) {
		return "fn_bl_inventory";
	}

	@RequestMapping(value = "fn_comp_logo_update.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String updateCompanyLogo(ModelMap model, HttpServletRequest request) {
		model.addAttribute(new CompanyRegistrationBean());
		String companyname = (String) request.getSession().getAttribute("compname");
		String imagename = in_financeservice.viewImagePathByCompanyName(companyname);
		request.getSession().setAttribute("imagename", imagename);
		request.getSession().setAttribute("comp1", companyname);
		return "fn_company_logo_update";
	}

	@RequestMapping(value = "fn_comp_logo_updated.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String updatedCompanyLogo(HttpServletRequest request, HttpServletResponse response) {
		String comp2 = (String) request.getSession().getAttribute("comp1");

		insertorupdate = in_financeservice.geneateLogoPath(request, response, comp2);

		if (insertorupdate) {
			request.getSession().setAttribute("updatesuccess", updatesuccess);
		} else {

		}
		return "redirect:fn_comp_logo_update.fin";
	}

	@RequestMapping(value = "fn_create_company_payslip.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateComapanyPaySlip(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

		model.addAttribute(new CompanyPaySlipBean());
		return "fn_create_company_payslip";
	}

	@RequestMapping(value = "sfn_create_company_payslip.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatedComapanyPaySlip(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute CompanyPaySlipBean comppayslip) {

		in_financeservice.generateCompanyPaySlip(comppayslip);

		return "redirect:fn_create_company_payslip.fin";
	}

	@RequestMapping(value = "fn_view_employee.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String displayEmployeeList(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

		String comp = (String) request.getSession().getAttribute("compname");
		System.out.println("Company Name123456\t" + comp);
		request.setAttribute("employeeList", in_financeservice.searchEmployeeByComp(comp));

		return "fn_employee_details";
	}

	@RequestMapping(value = "fn_get_payroll_by_admin.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String displayEmployeePaySlip(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

		model.addAttribute(new FinalPaySlipBean());

		return "fn_payroll_by_admin";
	}

	@RequestMapping(value = "sfn_final_paylsip.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateFinalPaySlip(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute FinalPaySlipBean finalpayslip) {

		in_financeservice.generatePaySlip(finalpayslip);

		return "redirect:fn_view_employee.fin";
	}

	@RequestMapping(value = "fn_create_university.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateUniversity(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

		model.addAttribute(new UniversityBean());

		return "fn_university_details";
	}

	@RequestMapping(value = "sfn_create_university.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatedUniversity(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute UniversityBean university, BindingResult errors, ModelMap model) {
		String comp = (String) request.getSession().getAttribute("compname");
		university.setCollegename(comp);
		val_univer.validate(university, errors);
		if (errors.hasErrors()) {
			return "fn_university_details";
		} else {

			in_financeservice.generateUniversity(university);
		}

		return "redirect:fn_create_university.fin";
	}

	@RequestMapping(value = "fn_create_Student.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateStudent(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

		model.addAttribute(new StudentBean());

		return "fn_generate_student";

	}

	@RequestMapping(value = "sfn_create_Student.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatedStudent(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute StudentBean stbean, BindingResult errors, ModelMap model) {
		request.getSession().setAttribute("comp1", stbean.getCollegename());
		request.getSession().setAttribute("imagePath", stbean.getImagPath());
		request.getSession().setAttribute("id", stbean.getEntrollno());

		val_stud.validate(stbean, errors);
		if (errors.hasErrors()) {
			return "fn_generate_student";
		} else {
			in_financeservice.generateStudent(stbean);
		}

		return "fn_student_image_upload";

	}

	@RequestMapping(value = "sfn_student_image_upload.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String storeMemoImagesInServer(HttpServletRequest request, HttpServletResponse response) {
		String id = (String) request.getSession().getAttribute("id");
		String comp2 = (String) request.getSession().getAttribute("comp1");
		// String imagespath=(String)request.getSession().getAttribute("imagePath");
		insertorupdate = in_financeservice.uploadStudentImage(request, response, comp2, id);

		if (insertorupdate) {
			request.getSession().setAttribute("updatesuccess", updatesuccess);
		} else {

		}
		return "fn_upload_memo_image";
	}

	@RequestMapping(value = "sfn_upload_memo_image.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String storeStudentImagesInServer(HttpServletRequest request, HttpServletResponse response) {
		String id = (String) request.getSession().getAttribute("id");
		String comp2 = (String) request.getSession().getAttribute("comp1");
		// String imagespath=(String)request.getSession().getAttribute("imagePath");
		insertorupdate = in_financeservice.uploadMemoImage(request, response, comp2, id);

		if (insertorupdate) {
			request.getSession().setAttribute("updatesuccess", updatesuccess);
		} else {

		}
		return "redirect:fn_create_Student.fin";
	}

	@RequestMapping(value = "fn_Courier_Reciept.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateCourierReciept(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

		model.addAttribute(new CourierRecieptBean());

		return "fn_courier_reciept";

	}

	@RequestMapping(value = "sfn_Courier_Reciept.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatedCourierReciept(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute CourierRecieptBean courierreciept, BindingResult errors, ModelMap model) {

		val_courierreciept.validate(courierreciept, errors);
		if (errors.hasErrors()) {
			return "fn_courier_reciept";
		} else {
			in_financeservice.generateReciept(courierreciept);
		}

		return "redirect:fn_Courier_Reciept.fin";

	}

	@RequestMapping(value = "fn_Courier_dispatch.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generateCourierDispatch(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

		model.addAttribute(new CourierDispatchDetailsBean());

		return "fn_courier_dispatch";

	}

	@RequestMapping(value = "sfn_Courier_Dispatch.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generatedCourierDispatch(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute CourierDispatchDetailsBean courierdispath, BindingResult errors, ModelMap model) {

		val_courierreciept.validate(courierdispath, errors);
		if (errors.hasErrors()) {
			return "fn_courier_dispatch";
		} else {
			in_financeservice.generateCourierDispath(courierdispath);
		}

		return "redirect:fn_Courier_dispatch.fin";

	}

	@RequestMapping(value = "fn_viewCourier_dispatch.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String ViewUniversityDetails(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

		model.addAttribute(new CourierDispatchDetailsBean());

		return "fn_courier_dispatch";

	}

	@RequestMapping(value = "fn_view_university.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String viewUniversityDetails(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

		String comp = (String) request.getSession().getAttribute("compname");
		request.setAttribute("UniverstiyList", in_financeservice.viewUniversityList(comp));

		return "fn_UniversityList";

	}

	@RequestMapping(value = "fn_edit_university.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String editUniversityDetails(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

		model.addAttribute(new UniversityBean());
		long id = Long.parseLong(request.getParameter("id"));
		request.setAttribute("UniverstiyList", in_financeservice.viewUniversity(id));
		String comp = (String) request.getSession().getAttribute("compname");
		request.getSession().setAttribute("compname", comp);

		return "fn_edit_university";

	}

	@RequestMapping(value = "ufn_edit_university.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String updatedUniversityDetails(HttpServletRequest request, HttpServletResponse response, ModelMap model,
			@ModelAttribute UniversityBean uni) {

		System.out.println("University Name" + uni.getCollegename());
		request.getSession().setAttribute("compname", uni.getCollegename());

		in_financeservice.updateUniversity(uni);

		return "redirect:fn_view_university.fin";

	}

	@RequestMapping(value = "fn_view_universityList.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String dislayUniversityDetails(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

		String comp = (String) request.getSession().getAttribute("compname");
		request.setAttribute("UniverstiyList", in_financeservice.viewUniversityList(comp));

		return "fn_view_universityList";

	}

	@RequestMapping(value = "fn_search_student.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String displayStudent(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		model.addAttribute(new StudentBean());
		return "fn_search_student";
	}

	@RequestMapping(value = "fn_result_student.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String displayResultStudent(HttpServletRequest request, HttpServletResponse response, ModelMap model,
			@ModelAttribute StudentBean stbean) {
		request.setAttribute("StudentResultList", in_financeservice.viewStudent(stbean));
		return "fn_search_result_student";
	}

	@RequestMapping(value = "fn_search_courier_reciept.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String searchCourierReciept(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		model.addAttribute(new CourierRecieptBean());
		// request.setAttribute("CourierRecieptList",
		// in_financeservice.searchCourierReciept(crb));
		return "fn_search_courier_reciept";
	}

	@RequestMapping(value = "fn_search_result_courier_reciept.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String searchResultCourierReciept(HttpServletRequest request, HttpServletResponse response, ModelMap model,
			@ModelAttribute CourierRecieptBean crb) {

		request.setAttribute("CourierRecieptList", in_financeservice.searchCourierReciept(crb));
		return "fn_result_courier_reciept";
	}

	@RequestMapping(value = "fn_search_courier_dispather.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String searchCourierDispatch(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		model.addAttribute(new CourierDispatchDetailsBean());

		return "fn_search_courier_dispatcher";
	}

	@RequestMapping(value = "fn_search_result_courier_dispather.fin", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String searchResultCourierDispatch(HttpServletRequest request, HttpServletResponse response, ModelMap model,
			@ModelAttribute CourierDispatchDetailsBean cddb) {
		request.setAttribute("CourierDispatchList", in_financeservice.searchCourierDispathc(cddb));

		return "fn_result_courier_dispath";
	}

	@RequestMapping(value = "fn_student_paid_amount.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String searchPaidAmount(HttpServletRequest request, HttpServletResponse response, ModelMap model) {

		model.addAttribute(new StudentBean());
		return "fn_student_paid_amount";
	}

	@RequestMapping(value = "fn_result_paid_amount.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String searchedPaidAmount(HttpServletRequest request, HttpServletResponse response, ModelMap model,
			@ModelAttribute StudentBean stbean) {
		request.setAttribute("RemainigAmountList", in_financeservice.searchStudentRemainingAmount(stbean));

		return "fn_student_remaing_amount";
	}

	@RequestMapping(value = "fn_employee_payslip.fin", method = { RequestMethod.GET, RequestMethod.POST })
	public String generartePayslip(HttpServletRequest request, HttpServletResponse response, ModelMap model,
			@ModelAttribute StudentBean stbean) {

		String comp = (String) request.getSession().getAttribute("compname");
		System.out.println("Company Name\t" + comp);
		request.setAttribute("PaySlipEmp", in_financeservice.viewEmployee(comp));

		return "fn_employee_payslip";
	}
}
