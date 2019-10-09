package com.erp.finance.controller;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.erp.finance.bean.RecieptBean;
import com.erp.finance.bean.VocherContraBean;
import com.erp.finance.bean.VocherJournalBean;
import com.erp.finance.bean.VocherPaymentBean;
import com.erp.finance.bean.VocherPurchaseBean;
import com.erp.finance.bean.VocherPurchaseReturnBean;
import com.erp.finance.bean.VocherSalesBean;
import com.erp.finance.bean.VocherSalesReturnBean;
import com.erp.finance.service.FinanceServiceImpl;
import com.erp.util.DBConnection;

@Controller
public class AccountVocherController {

	@Autowired
	FinanceServiceImpl fnservice;

	@RequestMapping(value = "fn_vocher_reciept.erp", method = RequestMethod.GET)
	public String generateReciept(ModelMap model) {
		model.addAttribute(new RecieptBean());
		return "fn_vocher_reciept";
	}

	@RequestMapping(value = "sfn_vocher_reciept.erp", method = RequestMethod.POST)
	public String generatedRecipt(@ModelAttribute RecieptBean recipt) {
		fnservice.generateVocherRecipt(recipt);
		return "redirect:fn_vocher_reciept.erp";
	}

	@RequestMapping(value = "fn_vocher_contra.erp", method = RequestMethod.GET)
	public String generateVocherContra(ModelMap model) {
		model.addAttribute(new VocherContraBean());
		return "fn_vocher_contra";
	}

	@RequestMapping(value = "sfn_vocher_contra.erp", method = RequestMethod.POST)
	public String generatedVocherContra(
			@ModelAttribute VocherContraBean vochercontra) {
		fnservice.generateVocherContra(vochercontra);
		return "redirect:fn_vocher_contra.erp";
	}

	@RequestMapping(value = "fn_vocher_payment.erp", method = RequestMethod.GET)
	public String generateVocherPayment(ModelMap model) {
		model.addAttribute(new VocherPaymentBean());
		return "fn_vocher_payment";
	}

	@RequestMapping(value = "sfn_vocher_payment.erp", method = RequestMethod.POST)
	public String generatedVocherPayment(
			@ModelAttribute VocherPaymentBean vocherpayment) {
		fnservice.generateVocherPayment(vocherpayment);
		return "redirect:fn_vocher_payment.erp";
	}

	@RequestMapping(value = "fn_vocher_journal.erp", method = RequestMethod.GET)
	public String generateVocherJournal(ModelMap model) {
		model.addAttribute(new VocherJournalBean());
		return "fn_vocher_journal";
	}

	@RequestMapping(value = "sfn_vocher_journal.erp", method = RequestMethod.POST)
	public String generatedVocherJournal(
			@ModelAttribute VocherJournalBean journal) {
		fnservice.generateVocherJournal(journal);
		return "redirect:fn_vocher_journal.erp";
	}

	@RequestMapping(value = "fn_vocher_purchase.erp", method = RequestMethod.GET)
	public String generateVocherPurchase(ModelMap model) {
		model.addAttribute(new VocherPurchaseBean());
		return "fn_vocher_purchase";
	}

	@RequestMapping(value = "sfn_vocher_purchase.erp", method = RequestMethod.POST)
	public String generatedVocherPurchase(
			@ModelAttribute VocherPurchaseBean vocherpurchase) {
		fnservice.generateVocherPurchase(vocherpurchase);
		return "redirect:fn_vocher_purchase.erp";
	}

	@RequestMapping(value = "fn_vocher_sales.erp", method = RequestMethod.GET)
	public String generateVocherSales(ModelMap model) {
		model.addAttribute(new VocherSalesBean());
		return "fn_vocher_sales";
	}

	@RequestMapping(value = "sfn_vocher_sales.erp", method = RequestMethod.POST)
	public String generatedVocherSales(
			@ModelAttribute VocherSalesBean vochersales) {
		fnservice.generateVocherSales(vochersales);
		return "redirect:fn_vocher_sales.erp";
	}

	@RequestMapping(value = "fn_vocher_purchase_return.erp", method = RequestMethod.GET)
	public String generateVocherPurcahseReturn(ModelMap model) {
		model.addAttribute(new VocherPurchaseReturnBean());
		return "fn_vocher_purchase_return";
	}

	@RequestMapping(value = "sfn_vocher_purchase_return.erp", method = RequestMethod.POST)
	public String generatedVocherPurchaseReturn(
			@ModelAttribute VocherPurchaseReturnBean vocherpurchasereturn) {
		fnservice.generateVocherPurchaseReturn(vocherpurchasereturn);
		return "redirect:fn_vocher_purchase_return.erp";
	}

	@RequestMapping(value = "fn_vocher_sales_return.erp", method = RequestMethod.GET)
	public String generateVocherSalesReturn(ModelMap model) {
		model.addAttribute(new VocherSalesReturnBean());
		return "fn_vocher_sales_return";
	}

	@RequestMapping(value = "sfn_vocher_sales_return.erp", method = RequestMethod.POST)
	public String generatedVocherSalesReturn(
			@ModelAttribute VocherSalesReturnBean vochersales) {
		fnservice.generateVocherSalesReturn(vochersales);
		return "redirect:fn_vocher_sales_return.erp";
	}

	@RequestMapping(value = "currentbalace.erp", method = RequestMethod.GET)
	public void getCurrentBalance(HttpServletRequest request,
			HttpServletResponse response) {
		DBConnection dbconnection = new DBConnection();

		System.out.println("Getting method");
		Connection con = null;
		try {
			PrintWriter out = response.getWriter();
			System.out.println("Getting method");
			String str = "select balance from currentasserts where ledgername=?";
			System.out.println("Getting method"
					+ request.getParameter("account"));
			con = dbconnection.getDBConnection();
			PreparedStatement pstmt = con.prepareStatement(str);
			pstmt.setString(1, request.getParameter("account"));
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				out.println(rs.getString("balance"));
				System.out.println(rs.getString("balance"));
			}
			response.setContentType("text/plain");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
