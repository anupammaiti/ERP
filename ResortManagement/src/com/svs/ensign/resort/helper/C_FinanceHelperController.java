package com.svs.ensign.resort.helper;


import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DecimalFormat;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.svs.ensign.resort.dao.IN_LedgerDetailsDAO;
import com.svs.ensign.resort.util.AppTrack;
import com.svs.ensign.resort.util.C_StoredProceduresUtil;
import com.svs.ensign.resort.util.ConvertStackTracetoString;
import org.springframework.beans.factory.annotation.Value;

@Controller
public class C_FinanceHelperController {

	@Autowired
	DataSource ds;
	private boolean status = false;
	@Autowired
	C_StoredProceduresUtil util_sp;
	@Autowired
	ServletContext servletcontext;
	@Autowired
	ConvertStackTracetoString util_stos;
	@Autowired
	IN_LedgerDetailsDAO in_ledgerdao;

	final static Logger logger = Logger
			.getLogger(C_FinanceHelperController.class.getName());

	private ArrayList closingstocklist = new ArrayList();
	DecimalFormat indiaformat = new DecimalFormat("##,##,##,###.00");
	// Drop down for under in Ledger Creation Jsp.

	@Value("${fn_grouplist}")
	private String fngrouplist;

	@RequestMapping(value = "fn_drop_down_for_under.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void generateTelecallers(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con = null;
		PreparedStatement pr = null;
		ResultSet rs = null;
		try {
			AppTrack.info(":: generateTelecallers ::");
			con = ds.getConnection();
			PrintWriter out = response.getWriter();
			pr = con.prepareStatement(fngrouplist);

			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("List is\t"+rs.getString(1));
				out.println("<option>" + rs.getString(1) + "</option>");
			}

		} catch (Exception e) {
			AppTrack.error("Exception in generateTelecallers ", e);
		} finally {
			if (con != null) {
				con = null;
			}
			if (pr != null) {
				pr = null;
			}
			if (rs != null) {
				rs = null;
			}
		}
		response.setContentType("plian/text");
	}

	// Drop down for VoucherType in Voucher Creation Jsp.
	@Value("${finance.vocherType}")
	private String voucherType;
	@RequestMapping(value = "fn_drop_down_for_voucher_type.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void generateVoucher(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		try {
			AppTrack.info("::generateVoucher::");
			con = ds.getConnection();
			PrintWriter out = response.getWriter();
			pr = con.prepareStatement(voucherType);

			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("List is\t"+rs.getString(1));
				out.println("<option>" + rs.getString(1) + "</option>");
			}
			con.close();
			pr.close();
		} catch (Exception e) {
			AppTrack.error("Exception in generateVoucher ", e);
		}
		response.setContentType("plian/text");
	}

	// Drop down for.
	@Value("${accounts_dropdown}")
	private String account_dropDown;
	@RequestMapping(value = "fn_drop_down_for_account.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getAccounts(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String query = account_dropDown;
		// //System.out.println("*******************************Start*******************************");
		try {
			AppTrack.info("::getAccounts::");
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con = ds.getConnection();
			pr = con.prepareStatement(query);

			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Start: \t 1 \t"+rs.getString(1));
				out.println("<option name=" + rs.getString(1) + ">"
						+ rs.getString(1) + "</option>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			AppTrack.error("Exception in getAccounts", e);
		}

		response.setContentType("plain/text");
	}

	@Value("${secondaccount}")
	private String secondaccount;
	@RequestMapping(value = "second_account_recive.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getSecondAccounts(HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String query = secondaccount;
		// //System.out.println("####################Second#####################################");
		try {
			AppTrack.info("::getSecondAccounts::");
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con = ds.getConnection();
			pr = con.prepareStatement(query);

			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Second:\t 2 \t"+rs.getString(1));
				out.println("<option " + rs.getString(1) + ">"
						+ rs.getString(1) + "</option>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			// logger.error(util_stos.sendingErrorAsString(e));
			AppTrack.error("::Exception in getSecondAccounts::", e);
		}

		response.setContentType("plain/text");

	}

	// Getting Amount to the ledger
	@Value("${ledgerAmount}")
	private String ledgerAmount;
	@RequestMapping(value = "ledgerAmount.res", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void getAmountOfLeger(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("ledgername") String ledgername) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String query = ledgerAmount;
		// //System.out.println("####################Second#####################################");

		try {
			AppTrack.info("::getAmountOfLeger::");
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement(query);
			pr.setString(1, ledgername);

			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Second:\t 2 \t"+rs.getString(1));
				out.println(rs.getString(1));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			// logger.error(util_stos.sendingErrorAsString(e));
			AppTrack.error("Exception in getAmountOfLeger::", e);
		}

		response.setContentType("plain/text");

	}

	// Getting the Parent Group
	@Value("${parentgroupquery}")
	private String parentgroupQuery;
	public String gettingParentGroup(String parentgroup) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String pgroup = null;
		String parentgroupquery = parentgroupQuery;
		try {
			AppTrack.info("::gettingParentGroup ::");
			con = ds.getConnection();
			pr = con.prepareStatement(parentgroupquery);
			pr.setString(1, parentgroup);
			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("Primary Groupis\t\t\t\t" +
				// rs.getString(1));
				pgroup = rs.getString(1);
			}
		} catch (Exception e) {
			AppTrack.error("Exception in gettingParentGroup", e);
		}

		return pgroup;
	}

	// Getting the Amount from CurrentAsserts
	@Value("${parentGroudQueryph2}")
	private String parentGroudQueryph2;
	public String gettingAmmountForLedgers(String parentgroup) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String pgroup = null;
		String parentgroupquery = parentGroudQueryph2;
		try {
			AppTrack.info("::gettingAmmountForLedgers::");
			con = ds.getConnection();
			pr = con.prepareStatement(parentgroupquery);
			pr.setString(1, parentgroup);
			rs = pr.executeQuery();
			while (rs.next()) {
				pgroup = rs.getString(1);
			}
		} catch (Exception e) {
			AppTrack.error("Exception in gettingAmmountForLedgers", e);

		}

		return pgroup;
	}

	// Getting Amount to the ledger
	@Value("${balance_currentasserts}")
	private String balacecurrentasserts;
	@RequestMapping(value = "hlp_groupAmount.res", method = RequestMethod.POST)
	public void getAmountOfGroup(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String query = balacecurrentasserts;
		// //System.out.println("####################Second#####################################");
		try {
			AppTrack.info(":: getAmountOfGroup ::");
			String result = null;
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			String ledgername = request.getParameter("groupname");
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			pr.setString(1, ledgername);
			rs = pr.executeQuery();

			while (rs.next()) {
				// //System.out.println("Second:\t 2 \t"+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				out.println(rs.getString(1));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			AppTrack.error("Exception in getAmountOfGroup", e);
		}

		response.setContentType("plain/text");

	}

	// SELECT v.* FROM tl_fn_vocherpayment v,tl_fn_ledgerdetails
	// ld,tl_fn_groupmapping gmap WHERE ld.ledgername= v.particulars AND
	// gmap.subgroup=ld.under AND gmap.primarygroup='IndirectExpenses';
	// Getting Amount to the ledger
	
	@RequestMapping(value = "hlp_IndirectExpenses.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getAmountOfIndirectExpenses(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT v.reciptno,v.under,v.particulars,v.amount FROM tl_fn_vocherpayment v,tl_fn_ledgerdetails ld,tl_fn_groupmapping gmap  WHERE ld.ledgername= v.particulars AND gmap.subgroup=ld.under AND gmap.primarygroup='IndirectExpenses'";
		// //System.out.println("####################Second#####################################");
		try {
			AppTrack.info("::getAmountOfIndirectExpenses::");
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement(query);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Second:\t 2 \t"+rs.getString(1));
				out.println("<tr><td>" + rs.getString(1) + "</td><td>"
						+ rs.getString(2) + "</td><td>" + rs.getString(3)
						+ "</td><td>" + rs.getString(4) + "</td></tr>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			AppTrack.error("::Exception in getAmountOfIndirectExpenses::", e);

		}

		response.setContentType("plain/text");

	}

	// Getting Balance Sheet.
	// Getting Amount to the ledger
	@RequestMapping(value = "hlp_listTotalLoanAdvances.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getLoanLiabilitie(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con, con1, con2;
		PreparedStatement pr, pr1, pr2;
		ResultSet rs, rs1, rs2;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "select sum(balance) from tl_fn_current_asserts where under='Loans&Advances(Asset)'";

		try {
			AppTrack.info("::getLoanLiabilitie ::");
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			String result = null;
			String result1 = null;
			con = ds.getConnection();
			pr = con.prepareStatement(query);

			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Second:\t 2 \t"+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

			}
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("select sum(balance) from tl_fn_current_asserts where under='SecuredLoans'");

			rs1 = pr1.executeQuery();
			while (rs1.next()) {
				// //System.out.println("Second:\t 2 \t"+rs.getString(1));
				result1 = rs1.getString(1);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs1.getString(1);
				} else {
					result1 = "0.0";
				}
			}
			DecimalFormat indiaformat = new DecimalFormat("##,##,##,###.00");
			out.println(indiaformat.format(Double.parseDouble(result1)
					+ Double.parseDouble(result)));

			con1.close();
			pr1.close();
			rs1.close();
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			AppTrack.error("::Exception in  getLoanLiabilitie::", e);
		}

		response.setContentType("plain/text");

	}

	// Getting Amount to the ledger
	@RequestMapping(value = "hlp_particulars1.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getParticular1(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "select ledgername from tl_fn_ledgerdetails where  ledgername!='Cash' and under!='BankAccounts' and under!='BankOCC-A/c' and under!='BankOD-A/c'";

		try {
			AppTrack.info("::getParticular1 ::");
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement(query);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Second:\t 2 \t"+rs.getString(1));
				out.println("<option>" + rs.getString(1) + "</option>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			AppTrack.error("::Exception in getParticular1::", e);

		}

		response.setContentType("plain/text");

	}

	// Getting Amount to the ledger
	@RequestMapping(value = "hlp_VoucherJournalSno.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getJouralSno(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "select MAX(sno) from tl_fn_voucher_journal";

		try {
			AppTrack.info("::getJouralSno ::");
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			String result = null;
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			rs = pr.executeQuery();
			while (rs.next()) {
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);

				} else {
					result = "0";
				}
				// //System.out.println("Voucher Journal Sno:\t "+rs.getString(1));

				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			// logger.error(util_stos.sendingErrorAsString(e));
			AppTrack.error("Exception in getJouralSno:: ", e);
		}

		response.setContentType("plain/text");

	}

	// Getting Stock Group
	@RequestMapping(value = "hlp_StockGroup.res", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void getStockGroup(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT groupname FROM tl_fn_stockgroup";

		try {
			AppTrack.info(":: getStockGroup ::");
			PrintWriter out = response.getWriter();
			// //System.out.println("Company Name12121\t"+companyname);
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();

			pr = con.prepareStatement(query);

			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Stock Name:\t "+rs.getString(1));
				out.println("<option>" + rs.getString(1) + "</option>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			// logger.error(util_stos.sendingErrorAsString(e));
			AppTrack.error(":: Exception in getStockGroup:: ", e);

		}

		response.setContentType("plain/text");

	}

	// Getting Stock Item List
	@RequestMapping(value = "hlp_StockList.res", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void getStockList(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "select name from tl_fn_stockitem ";

		try {
			AppTrack.info(":: getStockList ::");
			PrintWriter out = response.getWriter();
			// //System.out.println("Company Name12121\t"+companyname);
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();

			pr = con.prepareStatement(query);

			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Stock Name:\t "+rs.getString(1));
				out.println("<option>" + rs.getString(1) + "</option>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			// logger.error(util_stos.sendingErrorAsString(e));
			AppTrack.error("::Exception in getStockList::", e);
		}

		response.setContentType("plain/text");

	}

	// tl_fn_measures
	// Getting Stock Group
	@RequestMapping(value = "hlp_MesuaresUnit.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getMesuaresUnit(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT symbol FROM tl_fn_measures";

		try {
			AppTrack.info(":: getMesuaresUnit ::");
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement(query);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Stock Name:\t "+rs.getString(1));
				out.println("<option>" + rs.getString(1) + "</option>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
			AppTrack.error("Exception in getMesuaresUnit::", e);
		}

		response.setContentType("plain/text");

	}

	// Getting Stock Group
	@RequestMapping(value = "hlp_VoucherPaymentRpNo.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getVoucherPaymentRpNo(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT MAX(sno) FROM tl_fn_vocherpayment;";
		String result = null;
		try {
			AppTrack.info(":: getVoucherPaymentRpNo ::");
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement(query);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Recipt No:\t "+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0";
				}
				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			// logger.error(util_stos.sendingErrorAsString(e));
			AppTrack.error(":: Exception in getVoucherPaymentRpNo ::", e);
		}

		response.setContentType("plain/text");

	}

	// Getting Voucher Contra
	@RequestMapping(value = "hlp_VoucherContraRpNo.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getVoucherContraRpNo(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT MAX(sno) FROM tl_fn_vochercontra";
		String result = null;
		try {
			AppTrack.info("::getVoucherContraRpNo::");
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement(query);
			rs = pr.executeQuery();
			while (rs.next()) {
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0";
				}
				// //System.out.println("Recipt No:\t "+rs.getString(1));
				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			AppTrack.error("Exception in getVoucherContraRpNo::", e);
		}

		response.setContentType("plain/text");

	}

	// Getting Voucher Recipt No
	@RequestMapping(value = "hlp_VoucherReciptRpNo.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getVoucherReciptRpNo(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT MAX(sno) FROM tl_fn_recipt";
		String result = null;
		try {
			AppTrack.info(":: getVoucherReciptRpNo ::");
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement(query);
			rs = pr.executeQuery();
			while (rs.next()) {
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0";
				}
				// //System.out.println("Recipt No:\t "+rs.getString(1));
				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			AppTrack.error("getVoucherReciptRpNo ::", e);
			;
		}

		response.setContentType("plain/text");

	}

	public boolean getReciptIsAvailable() {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT * FROM tl_fn_ledgerdetails ld,tl_fn_groupmapping gm WHERE ld.under=gm.subgroup AND gm.primarygroup='SundryDebtors'";

		try {
			// PrintWriter out=response.getWriter();
			// con=dbconnection.getDBConnection();
			AppTrack.info(":: getReciptIsAvailable ::");
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Recipt No:\t "+rs.getString(1));
				if (rs.getString(1).equals(null)) {
					status = false;
				} else {
					status = true;
				}
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			AppTrack.error("Exception in getReciptIsAvailable", e);
		}

		return status;

	}

	public boolean getSundryCreditorsIsAvailable() {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT * FROM tl_fn_ledgerdetails ld,tl_fn_groupmapping gm WHERE ld.under=gm.subgroup AND gm.primarygroup='SundryCreditors'";

		try {
			// PrintWriter out=response.getWriter();
			// con=dbconnection.getDBConnection();
			AppTrack.info("::getSundryCreditorsIsAvailable::");
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Recipt No:\t "+rs.getString(1));
				if (rs.getString(1).equals(null)) {
					status = false;
				} else {
					status = true;
				}
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			// logger.error(util_stos.sendingErrorAsString(e));
			AppTrack.error("Exception in getSundryCreditorsIsAvailable", e);
		}

		return status;

	}

	public JSONObject viewClosingStock(String itemname) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject closingstock = new JSONObject();
		String viewquery = "select * from tl_fn_closingstock where stockitem=?";
		try {
			con = ds.getConnection();
			pr = con.prepareStatement(viewquery);
			pr.setString(1, itemname);
			rs = pr.executeQuery();
			while (rs.next()) {
				/*
				 * //System.out.println(rs.getString(2));
				 * //System.out.println(rs.getString(3));
				 * //System.out.println(rs.getString(5));
				 * //System.out.println(rs.getString(6));
				 */
				closingstock.put("itemname", rs.getString(2));
				closingstock.put("quantity", rs.getString(3));
				closingstock.put("rate", rs.getString(5));
				closingstock.put("balance", rs.getString(6));

			}
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		return closingstock;
	}

	// Total Closing Stock.
	public JSONObject viewTotalClosingStock(String itemname) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject closingstock = new JSONObject();
		String viewquery = "SELECT SUM(quantity),SUM(amount) FROM tl_fn_purchase where nameofitems =?";
		try {
			con = ds.getConnection();
			pr = con.prepareStatement(viewquery);
			pr.setString(1, itemname);
			rs = pr.executeQuery();
			while (rs.next()) {
				/*
				 * //System.out.println(rs.getString(2));
				 * //System.out.println(rs.getString(3));
				 * //System.out.println(rs.getString(5));
				 * //System.out.println(rs.getString(6));
				 */
				closingstock.put("totalqnty", rs.getString(1));
				closingstock.put("totalamount", rs.getString(2));

			}
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		return closingstock;
	}

	// BalanceSheet Display Starts.
	// Getting Loans (Liabilites)
	@RequestMapping(value = "hlp_LoanLiabilites.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getBalanceSheetLoanLiabilites(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT SUM(balance) FROM tl_fn_current_asserts where under='Loans(Liability)'";
		String result = null;
		String result1 = null;
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement(query);

			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Recipt No:\t "+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {

					result = rs.getString(1);
				} else {
					result = "0.0";
				}

				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Total Loans(Liability)
	// Getting Loans (Liabilites)

	@RequestMapping(value = "hlp_totalLoanLiabilites.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getBalanceSheetLoanTotalLoansLiabilites(
			HttpServletRequest request, HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT SUM(balance) FROM tl_fn_current_asserts where under='Loans(Liability)'";
		String result = null;
		String result1 = null;
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement(query);

			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Recipt No:\t "+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {

					result = rs.getString(1);
				} else {
					result = "0.0";
				}

				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Getting SecuredLoans
	@RequestMapping(value = "hlp_SecuredLoans.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getBLSecureLoans(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT SUM(balance) FROM tl_fn_current_asserts where under='SecuredLoans'";
		String result = null;
		String result1 = null;
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement(query);

			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Recipt No:\t "+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {

					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Getting UnSecuredLoans
	@RequestMapping(value = "hlp_UnSecuredLoans.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getBLUnSecureLoans(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT SUM(balance) FROM tl_fn_current_asserts where under='SecuredLoans'";
		String result = null;
		String result1 = null;
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement(query);

			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Recipt No:\t "+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {

					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Current Assets
	@RequestMapping(value = "hlp_CashinHand.res", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void getBalanceSheetCashinHand(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT SUM(balance) FROM tl_fn_current_asserts where under='Cash-in-Hand'";

		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			String result = null;
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Recipt No:\t "+rs.getString(1));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {

					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Change this method to Procedures.
	@RequestMapping(value = "hlp_TotalAutoTravelExpenses.res", method = RequestMethod.POST)
	public void getAutoTravelExpensesTotal(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr, pr1, pr2, pr3;
		ResultSet rs, rs1, rs2, rs3;
		double autotravel = 0.0;
		double phonebill = 0.0;
		double foodexp = 0.0;
		double hotelexp = 0.0;
		double entertainment = 0.0;
		double misleneous = 0.0;
		double indirectexpense = 0.0;
		double totalindirectexp = 0.0;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query1 = "SELECT SUM(amountdue) FROM tl_fn_autoexpencestravel;";
		String query2 = "SELECT SUM(amountdue) FROM tl_fn_phonebillexpences;";
		String query3 = "select SUM(balance) from tl_fn_current_asserts where under='IndirectExpenses'";
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement(query1);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Recipt No:\t "+rs.getString(1));
				autotravel = Double.parseDouble(rs.getString(1));
			}

			// con=dbconnection.getDBConnection();
			con = ds.getConnection();
			pr1 = con.prepareStatement(query1);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {
				// //System.out.println("Recipt No:\t "+rs.getString(1));
				phonebill = Double.parseDouble(rs1.getString(1));
			}

			/*
			 * con=ds.getConnection(); pr2=con.prepareStatement(query3);
			 * rs2=pr2.executeQuery(); while(rs2.next()){
			 * ////System.out.println("Recipt No:\t "+rs.getString(1));
			 * if(rs2.getString(1).equals("")||(rs2.getString(1).equals(null))){
			 * indirectexpense=0.0; }else{
			 * indirectexpense=Double.parseDouble(rs2.getString(1)); }
			 * 
			 * }
			 */
			totalindirectexp = autotravel + phonebill + indirectexpense;

			// System.out.println("Total Indirect Exp\t" + totalindirectexp);
			out.print(totalindirectexp);

			rs.close();
			pr.close();
			rs1.close();
			pr1.close();
			/*
			 * pr2.close(); rs2.close();
			 */
			con.close();

		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	//
	// Getting Amount to the ledger
	@RequestMapping(value = "hlp_IndirectExpensesAmount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getIndirectExpensesAmount(HttpServletRequest request,
			HttpServletResponse response) {
		// //System.out.println("Indirect Expenses ");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT SUM(amountdue) FROM tl_fn_autoexpencestravel";
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			String result = null;
			con = ds.getConnection();
			pr = con.prepareStatement(query);

			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("Travel Amount \t" + rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				// System.out.println("Number Format is\t"+indiaformat.format(Double.parseDouble(result)));
				out.println(indiaformat.format(Double.parseDouble(result)));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Getting Amount to the ledger
	@RequestMapping(value = "hlp_IndirectPhoneBillExpensesAmount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getIndirectExpensesPhoneBillExpen(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Indirect Expenses ");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT SUM(amountdue) FROM tl_fn_phonebillexpences where login_comp=?";
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			String result = null;
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("Amount \t" + rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				// System.out.println("Number Format is\t"+indiaformat.format(Double.parseDouble(result)));
				out.println(indiaformat.format(Double.parseDouble(result)));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// HotelExpenses
	@RequestMapping(value = "hlp_IndirectHotelExpensesAmount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getIndirectExpensesHotelExpen(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Indirect Expenses ");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT SUM(totalamount) FROM tl_fn_hotelexpenses where login_comp=?";
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			String result = null;
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("Amount \t" + rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				// System.out.println("Number Format is\t"+indiaformat.format(Double.parseDouble(result)));
				out.println(indiaformat.format(Double.parseDouble(result)));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	//
	// FoodExpenses
	@RequestMapping(value = "hlp_IndirectFoodExpensesAmount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getIndirectExpensesFoodExpen(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Indirect Expenses ");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT SUM(amountdue) FROM tl_fn_foodexpenses where login_comp=?";
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			String result = null;
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("Amount \t" + rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				// System.out.println("Number Format is\t"+indiaformat.format(Double.parseDouble(result)));
				out.println(indiaformat.format(Double.parseDouble(result)));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// FoodExpenses
	@RequestMapping(value = "hlp_IndirectEntertainmentExpensesAmount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getIndirectExpensesEntertainmentExpen(
			HttpServletRequest request, HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Indirect Expenses ");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT SUM(amountdue) FROM tl_fn_entertainmentexpenceses where login_comp=?";
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			String result = null;
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("Amount \t" + rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				// System.out.println("Number Format is\t"+indiaformat.format(Double.parseDouble(result)));
				out.println(indiaformat.format(Double.parseDouble(result)));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Mislleneous Expenses
	@RequestMapping(value = "hlp_IndirectMisExpensesAmount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getIndirectMislExpen(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Indirect Expenses ");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT SUM(amount) FROM tl_fn_misleniousexpenceses where login_comp=?";
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			String result = null;
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				result = rs.getString(1);

				if (result != null && !result.isEmpty()) {

					result = rs.getString(1);

				} else {
					result = "0.0";
				}
				// System.out.println("Number Format is\t"+indiaformat.format(Double.parseDouble(result)));
				out.println(indiaformat.format(Double.parseDouble(result)));
			}

			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Villa Details
	@RequestMapping(value = "hlp_displayVillaDetails.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getVillaDetails(HttpServletRequest request,
			HttpServletResponse response) {
		// //System.out.println("Indirect Expenses ");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "";
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT villa_name,villa_facing,villa_type,total_villas,villas_left FROM tl_villatype;");
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Amount \t"+rs.getString(1));
				out.println("<tr><td>" + rs.getString(1) + "</td><td>"
						+ rs.getString(2) + "</td><td>" + rs.getString(3)
						+ "</td><td>" + rs.getString(4) + "</td><td>"
						+ rs.getString(5) + "</td></tr>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// InternetExpenses
	@RequestMapping(value = "hlp_displayInternetExp.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getInternetExp(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Indirect Expenses ");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "";
		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(amount) FROM tl_fn_internetexp where login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Amount \t"+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				// System.out.println("Number Format is\t"+indiaformat.format(Double.parseDouble(result)));
				out.println(indiaformat.format(Double.parseDouble(result)));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// AdvertisementExpenses
	@RequestMapping(value = "hlp_displayAdvertisementExp.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getAdvertisementExp(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Indirect Expenses ");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "";
		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT SUM(amount)FROM tl_fn_advertisementexp where login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Amount \t"+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				// System.out.println("Number Format is\t"+indiaformat.format(Double.parseDouble(result)));
				out.println(indiaformat.format(Double.parseDouble(result)));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// OfficeExpenses
	@RequestMapping(value = "hlp_displayOfficeExp.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getOfficeExp(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Indirect Expenses ");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "";
		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(total) FROM tl_fn_officeexp where login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Amount \t"+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				// System.out.println("Number Format is\t"+indiaformat.format(Double.parseDouble(result)));
				out.println(indiaformat.format(Double.parseDouble(result)));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// RepairExpenses
	@RequestMapping(value = "hlp_displayRepairExp.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getRepairExp(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Indirect Expenses ");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "";
		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(total) FROM tl_fn_repairmaintenance where login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Amount \t"+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				// System.out.println("Number Format is\t"+indiaformat.format(Double.parseDouble(result)));
				out.println(indiaformat.format(Double.parseDouble(result)));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// RepairExpenses
	@RequestMapping(value = "hlp_displayPostageExp.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getPostageExp(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Indirect Expenses ");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "";
		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(totalamount) FROM tl_fn_postageexp where login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Amount \t"+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				// System.out.println("Number Format is\t"+indiaformat.format(Double.parseDouble(result)));
				out.println(indiaformat.format(Double.parseDouble(result)));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// SalaryExpenses
	@RequestMapping(value = "hlp_displaySalaryExp.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getSalaryExp(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Indirect Expenses ");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(totalamount) FROM tl_fn_salaryexp where login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Amount \t"+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				// System.out.println("Number Format is\t"+indiaformat.format(Double.parseDouble(result)));
				out.println(indiaformat.format(Double.parseDouble(result)));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// SundryStaffExpenses
	@RequestMapping(value = "hlp_displaySundryStaffExp.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getSundryStaffExp(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Indirect Expenses ");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(totalamount)FROM tl_fn_sundrystaff where login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Amount \t"+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				// System.out.println("Number Format is\t"+indiaformat.format(Double.parseDouble(result)));
				out.println(indiaformat.format(Double.parseDouble(result)));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Capital Account:
	// Getting Voucher Recipt No
	@RequestMapping(value = "hlp_CapitalAccount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getBalanceSheetCapitalAccount(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT SUM(balance) FROM tl_fn_current_asserts where under='CapitalAccount'";
		String result = null;
		String result1 = null;
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement(query);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Recipt No:\t "+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {

					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				// System.out.println("Amount is\t" + result);
				out.println(indiaformat.format(Double.parseDouble(result)));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Paid Up Shared Account.
	// Getting Voucher Recipt No
	@RequestMapping(value = "hlp_PaidUpSharedAccount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getPaidUpSharedAccount(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT SUM(balance) FROM tl_fn_current_asserts where under='PaidUpSharedAccount' and login_comp=? ";
		String result = null;
		String result1 = null;
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement(query);
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Recipt No:\t "+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {

					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				// System.out.println("Amount is\t" + result);
				out.println(indiaformat.format(Double.parseDouble(result)));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// CapitalAccountTotal.
	@RequestMapping(value = "hlp_TotalCapitalAccount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getBlCapitalAccountTotal(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		Connection con, con2;
		PreparedStatement pr, pr2;
		ResultSet rs, rs2;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;
		String query = "SELECT SUM(balance) FROM tl_fn_current_asserts where under='CapitalAccount' and login_comp=?";
		String result = null;
		String result1 = null;
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement(query);
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Recipt No:\t "+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {

					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				// System.out.println("Amount is\t" + result);

			}
			try {
				con2 = ds.getConnection();
				pr2 = con2
						.prepareStatement("SELECT SUM(balance) FROM tl_fn_current_asserts where under='PaidUpSharedCapital' and login_comp=?");
				pr2.setString(1, companyname);
				rs2 = pr2.executeQuery();
				while (rs2.next()) {
					result1 = rs2.getString(1);
					if (result1 != null && !result1.isEmpty()) {

						result1 = rs2.getString(1);
					} else {
						result1 = "0.0";
					}
				}
			} catch (Exception e) {
				logger.error(util_stos.sendingErrorAsString(e));
			}
			out.println(indiaformat.format(Double.parseDouble(result)
					+ Double.parseDouble(result1)));

			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Reverse Surplus Account
	@RequestMapping(value = "hlp_displayReverseSurplus.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getReverseSurplusAmount(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// System.out.println("Reverse Surplus");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = "0.0";
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Reverse&Surplus' and login_comp=?;");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Reverse Surplus \t"+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

			}
			out.println(result);
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Retain Earning.
	@RequestMapping(value = "hlp_displayRetainEarning.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getRetainEarningAmount(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// System.out.println("Reverse Surplus");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = "0.0";
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='RetainedEarnings' and login_comp=?;");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Reverse Surplus \t"+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

			}
			out.println(result);
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Reverse Surplus Account
	@RequestMapping(value = "hlp_total_ReverseSurplus.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getTotalReverseSurplusAmount(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// System.out.println("Reverse Surplus");
		Connection con, con2;
		PreparedStatement pr, pr2;
		ResultSet rs, rs2;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = "0.0";
		String result1 = "0.0";
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Reverse&Surplus' and login_comp=?;");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Reverse Surplus \t"+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

			}

			con2 = ds.getConnection();
			pr2 = con2
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='RetainedEarning' and login_comp=?;");
			pr2.setString(1, companyname);
			rs2 = pr2.executeQuery();
			while (rs2.next()) {
				result1 = rs2.getString(1);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs2.getString(1);
				} else {
					result1 = "0.0";
				}
			}

			out.println(Double.parseDouble(result)
					+ Double.parseDouble(result1));
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Capital Account
	@RequestMapping(value = "hlp_displaySundryCreators.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getSundryCreatorsAmount(HttpServletRequest request,
			HttpServletResponse response) {
		// System.out.println("Sundry Creditors");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = "0.0";
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT balance FROM tl_fn_current_asserts WHERE under='SundryCreditors';");
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Sundry Creditors \t"+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Capital Account
	@RequestMapping(value = "hlp_displayLoansandAdvances.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getLoanandAdvancesAmount(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// System.out.println("Sundry Creditors");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Loans&Advances(Asset)' and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();

			while (rs.next()) {
				// //System.out.println("Loan & Advances Creditors \t"+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				out.println(indiaformat.format(Double.parseDouble(result)));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	//
	// PaymentMode Account
	@RequestMapping(value = "hlp_displayPaymentMode.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getPaymentModeAmount(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// System.out.println("Payment Mode"+companyname);
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("select ledgername from tl_fn_ledgerdetails where (under='CurrentAsset' or under='Cash-in-hand' or under='BankAccounts' or under='BankOCC-A/c' or under='BankOD-A/c' or under='SundryCreditors' or under='SundryDebtors') and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Loan & Advances Creditors \t"+rs.getString(1));
				/*
				 * result=rs.getString(1); if(result!=null &&
				 * !result.isEmpty()){ result=rs.getString(1); }else{
				 * result="0.0"; }
				 */
				out.println("<option>" + rs.getString(1) + "</option>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// PaymentMode Account
	@RequestMapping(value = "hlp_displayPurchaseLedger.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getPurchaseLedger(HttpServletRequest request,
			HttpServletResponse response) {
		// System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT ledgername FROM tl_fn_ledgerdetails WHERE under=(SELECT subgroup FROM tl_fn_groupmapping WHERE primarygroup='PurchaseAccounts')");
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Loan & Advances Creditors \t"+rs.getString(1));
				/*
				 * result=rs.getString(1); if(result!=null &&
				 * !result.isEmpty()){ result=rs.getString(1); }else{
				 * result="0.0"; }
				 */
				out.println("<option>" + rs.getString(1) + "</option>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Stock Item
	@RequestMapping(value = "hlp_displayStockItem.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getStockItem(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("select name from tl_fn_stockitem where login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Loan & Advances Creditors \t"+rs.getString(1));
				/*
				 * result=rs.getString(1); if(result!=null &&
				 * !result.isEmpty()){ result=rs.getString(1); }else{
				 * result="0.0"; }
				 */
				out.println("<option>" + rs.getString(1) + "</option>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// SELECT symbol FROM `tl_fn_measures`;
	// Stock Item
	@RequestMapping(value = "hlp_displayMesurements.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getMesurements(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT symbol FROM `tl_fn_measures` where login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Loan & Advances Creditors \t"+rs.getString(1));
				/*
				 * result=rs.getString(1); if(result!=null &&
				 * !result.isEmpty()){ result=rs.getString(1); }else{
				 * result="0.0"; }
				 */
				out.println("<option>" + rs.getString(1) + "</option>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	@RequestMapping(value = "hlp_PurchaseDetailsRecptNo.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getPurchaseDetailsRecptNo(HttpServletRequest request,
			HttpServletResponse response) {
		// System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT MAX(sno) FROM `tl_fn_purchase`;");
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Loan & Advances Creditors \t"+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0";
				}
				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	@RequestMapping(value = "hlp_SalesLedger.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getSlesLedger(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		// System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT ledgername FROM tl_fn_ledgerdetails WHERE under=(SELECT subgroup FROM tl_fn_groupmapping WHERE primarygroup='SalesAccounts') and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Sales Account\t"+rs.getString(1));
				/*
				 * result=rs.getString(1); if(result!=null &&
				 * !result.isEmpty()){ result=rs.getString(1); }else{
				 * result="0.0"; }
				 */
				out.println("<option>" + rs.getString(1) + "</option>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Sales No
	@RequestMapping(value = "hlp_SalesNo.res", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void getSlesNo(HttpServletRequest request,
			HttpServletResponse response) {
		// System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT MAX(sno) FROM tl_fn_vochersales;");
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Loan & Advances Creditors \t"+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0";
				}
				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Purchase Return No
	@RequestMapping(value = "hlp_PurhaseReturnNo.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getPurhaseReturnNo(HttpServletRequest request,
			HttpServletResponse response) {
		// //System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("select MAX(sno) from tl_fn_vocherpurcahsereturn");
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Loan & Advances Creditors \t"+rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0";
				}
				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Party Account Name
	@RequestMapping(value = "hlp_PartyAccountName.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getPartyAccountName(HttpServletRequest request,
			HttpServletResponse response) {
		// //System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT ledgername FROM tl_fn_ledgerdetails WHERE under='CurrentAsset' OR under='Cash-in-hand' OR under='BankAccounts' OR under='BankOCC-A/c' OR under='BankOD-A/c' OR under='SundryCreditors' OR under='SundryDebtors'");
			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("Party Account\t" + rs.getString(1));
				out.println("<option>" + rs.getString(1) + "</option>");
				/*
				 * if(result!=null && !result.isEmpty()){
				 * result=rs.getString(1); }else{ result="0.0"; }
				 */

			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Purchase Return Ledger
	@RequestMapping(value = "hlp_PurchaseAccountLedger.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getPurchaseAccountLedger(HttpServletRequest request,
			HttpServletResponse response) {
		// //System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("select ledgername from tl_fn_ledgerdetails where under='PurchaseAccounts' ");
			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("Party Account\t" + rs.getString(1));
				out.println("<option>" + rs.getString(1) + "</option>");
				/*
				 * if(result!=null && !result.isEmpty()){
				 * result=rs.getString(1); }else{ result="0.0"; }
				 */

			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// SELECT * FROM tl_fn_salesreturn;
	// Purchase Return Ledger
	@RequestMapping(value = "hlp_SalesReturnSno.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getSalesReturnSno(HttpServletRequest request,
			HttpServletResponse response) {
		// //System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT MAX(sno) FROM tl_fn_salesreturn;");
			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("Party Account\t" + rs.getString(1));

				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0";
				}
				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Purchase Account Amount
	@RequestMapping(value = "hlp_PurchaseAccountAmount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getPurchaseAccountAmount(HttpServletRequest request,
			HttpServletResponse response) {
		// //System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT SUM(amount) FROM tl_fn_purchase");
			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("Party Account\t" + rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

				out.println(indiaformat.format(Double.parseDouble(result)));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Sales Account Amount
	@RequestMapping(value = "hlp_SalesAccountAmount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getSalesAccountAmount(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = "0.0";
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT SUM(amount) FROM tl_fn_vochersales where login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("Party Account\t" + rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				out.println(indiaformat.format(Double.parseDouble(result)));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// SundryCreditors Amount
	@RequestMapping(value = "hlp_SundryCreditorsAmount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getSundryCreditorsAmount(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = "0.0";
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT * FROM tl_fn_current_asserts WHERE under='SundryCreditors' and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("Party Account\t" + rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

			}
			out.println(result);
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// SundryCreditors Amount
	@RequestMapping(value = "hlp_SundryCreditorsdetails.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getSundryCreditorsDetails(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		String result1 = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT ledgername,SUM(balance) FROM tl_fn_current_asserts WHERE under='SundryCreditors' and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();

			while (rs.next()) {
				// System.out.println("Party Account\t" + rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = " ";
				}
				result1 = rs.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(2);
				} else {
					result1 = "";
				}
				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// SundryCreditors Amount
	public JSONObject getCustomerInstallmentDetails(String deltby,
			String status, String custid) {
		// //System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject custinstallments = new JSONObject();
		int i = 0;

		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			// PrintWriter out=response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT totalamount,amountpaid,remainingamount,totalinstallments,installmentspaid FROM tl_fn_customer WHERE deltby=? AND custid=?");
			pr.setString(1, deltby);
			pr.setString(2, custid);
			rs = pr.executeQuery();
			while (rs.next()) {
				custinstallments.put("totalamount", rs.getString(1));
				custinstallments.put("amountpaid", rs.getString(2));
				custinstallments.put("remainingamount", rs.getString(3));
				custinstallments.put("totalinstallments", rs.getString(4));
				custinstallments.put("installmentspaid", rs.getString(5));
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		return custinstallments;

	}

	// Reverse Surplus Amount.
	@RequestMapping(value = "fn_reversesurplusamount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getBalanceSheetReverseSurplusAmount(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String query = "SELECT * FROM tl_fn_current_asserts WHERE under='Reverse&Surplus' and login_comp=?";
		String result = null;
		// //System.out.println("*******************************Start*******************************");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("Reverse Surplus");
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				out.print(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");
	}

	// CurrentLiabilities Amount
	@RequestMapping(value = "fn_currentLiabilitesAmount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getBalanceSheetCurrentLiabilites(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String query = "SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='CurrentLiabilities' and login_comp=?";
		String result = "0.0";
		// System.out.println("*******************************Start*******************************");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("Current Liabilites");
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				out.print(result);
			}

			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");
	}

	// CurrentLiabilities Amount
	@RequestMapping(value = "fn_currentLiabilitesLedgerList.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getBalanceSheetCurrentLiabilitesList(
			HttpServletRequest request, HttpServletResponse response,
			@RequestParam("login_comp") String companyname) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String query = "SELECT ledgername,sum(balance) FROM tl_fn_current_asserts WHERE under='CurrentLiabilities' where login_comp=?";
		String result = "0.0";
		String result1 = "0.0";
		// //System.out.println("*******************************Start*******************************");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("Current Liabilites");
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				result1 = rs.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(2);
				} else {
					result1 = "0.0";
				}

				out.print("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");
			}

			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");
	}

	// Total Current Liabilities
	@RequestMapping(value = "fn_TotalCurrentLiabilitesAmount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getBalanceSheetTotalCurrentLiabilites(
			HttpServletRequest request, HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		Connection con, con1;
		PreparedStatement pr, pr1;
		ResultSet rs, rs1;
		String query = "SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='CurrentLiabilities' and login_comp=?";
		String query1 = "SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='SundryCreditors' and login_comp=?";
		String result1 = "0.0";
		String result = "0.0";
		// System.out.println("*******************************Start*******************************");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("Current Liabilites");
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0";
				}

			}

			con1 = ds.getConnection();
			pr1 = con.prepareStatement(query1);
			pr1.setString(1, companyname);
			rs1 = pr.executeQuery();
			while (rs1.next()) {
				// System.out.println("Current Liabilites");
				result1 = rs1.getString(1);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs1.getString(1);
				} else {
					result1 = "0";
				}
			}

			out.print(indiaformat.format(Integer.parseInt(result)
					+ Integer.parseInt(result1)));
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");
	}

	// CurrentLiabilities Amount
	@RequestMapping(value = "fn_fixedAssetsAmount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getBalanceSheetFixedAssets(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String query = "SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='FixedAssets' and login_comp=? ";
		String result = "0.0";
		// //System.out.println("*******************************Start*******************************");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("FixedAssets");
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

			}
			out.print(result);
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");
	}

	// List of Fixed Assets
	@RequestMapping(value = "fn_fixedAssetsList.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getBalanceSheetFixedAssetsList(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String query = "SELECT ledgername,sum(balance) FROM tl_fn_current_asserts WHERE under='FixedAssets' and login_comp=? ";
		String result = "0.0";
		String result2 = "0.0";
		// //System.out.println("*******************************Start*******************************");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("FixedAssets");
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "";
				}
				result2 = rs.getString(2);
				if (result2 != null && !result2.isEmpty()) {
					result2 = rs.getString(1);
				} else {
					result2 = "";
				}
				out.println("<tr><td>" + result + "</td><td>" + result2
						+ "</td></tr>");

			}
			out.print(result);
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");
	}

	// BankAccount Amount
	@RequestMapping(value = "fn_bankAndCashAmount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getBalanceSheetBankAndCash(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String query = "SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='BankAccounts'";
		String result = null;
		// //System.out.println("*******************************Start*******************************");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			rs = pr.executeQuery();
			while (rs.next()) {
				// System.out.println("Bank And Cash");
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

			}
			out.print(result);
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");
	}

	// Investment Amount
	@RequestMapping(value = "fn_investmentAmount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getBalanceSheetInvestment(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String query = "SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Investments'";
		String result = "0.0";
		System.out
				.println("*******************************Start*******************************");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			rs = pr.executeQuery();
			while (rs.next()) {
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

			}
			out.print(result);
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");
	}

	// Balance Sheet Ends
	public boolean customerInstallmentAvailable(String deltby, String custid) {
		// //System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject custinstallments = new JSONObject();
		int i = 0;
		boolean insertorupdate = false;
		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			// PrintWriter out=response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT remainingamount FROM tl_fn_customer WHERE deltby=? AND custid=?");
			pr.setString(1, deltby);
			pr.setString(2, custid);
			rs = pr.executeQuery();
			while (rs.next()) {

				if (rs.getString(1).isEmpty()) {
					insertorupdate = false;
				} else {
					insertorupdate = true;
				}
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		return insertorupdate;

	}

	// SELECT ledgername FROM tl_fn_ledgerdetails WHERE under=(SELECT subgroup
	// FROM tl_fn_groupmapping WHERE primarygroup='Loans&Advances(Asset)');
	// SundryCreditors Amount
	@RequestMapping(value = "hlp_LedgerDetailsByGroupName.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getLedgerDetailsByUsingGroup(HttpServletRequest request,
			HttpServletResponse response) {
		// //System.out.println("Payment Mode");
		Connection con = null;
		PreparedStatement pr = null;
		ResultSet rs = null;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		// //System.out.println("####################Second#####################################");
		try {
			AppTrack.info(":: getLedgerDetailsByUsingGroup::");
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT ledgername FROM tl_fn_ledgerdetails WHERE under in (SELECT DISTINCT(subgroup) FROM tl_fn_groupmapping WHERE primarygroup='IndirectExpenses');");
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Party Account\t" + rs.getString(1));
				/*
				 * result=rs.getString(1); if(result!=null &&
				 * !result.isEmpty()){ result=rs.getString(1); }else{
				 * result="0.0"; }
				 */
				
				out.println("<option>" + rs.getString(1) + "</option>");
			}

		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		} finally {
			try {

				rs.close();
				pr.close();
				con.close();
			} catch (Exception e) {
				logger.error(util_stos.sendingErrorAsString(e));
			}
		}

		response.setContentType("plain/text");

	}

	// Drop down for.
	@RequestMapping(value = "fn_ledgerdetails.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getLedgerDetails(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		// System.out.println("Company Name\t" + companyname);
		String query = "select ledgername from tl_fn_ledgerdetails where login_comp=?";
		// //System.out.println("*******************************Start*******************************");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Start: \t 1 \t"+rs.getString(1));
				out.println("<option>" + rs.getString(1) + "</option>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");
	}

	// Drop down for.
	@RequestMapping(value = "fn_inventoryno.res", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void getInventoryNo(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String query = "select MAX(sno) from tl_sl_invoice";
		String result = null;
		// //System.out.println("*******************************Start*******************************");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			rs = pr.executeQuery();
			while (rs.next()) {
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0";
				}
				out.print(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");
	}

	// Drop down for.
	@RequestMapping(value = "fn_voucher_type_details.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getVoucherTypeDetails(HttpServletRequest request,
			HttpServletResponse response) {
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		String query = "SELECT vouchertype FROM tl_fn_vouchertype";
		String result = null;
		// //System.out.println("*******************************Start*******************************");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con = ds.getConnection();
			pr = con.prepareStatement(query);
			rs = pr.executeQuery();
			while (rs.next()) {
				out.print("<option>" + rs.getString(1) + "</option>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");
	}

	// Stored Procedures
	// Drop down for.
	@RequestMapping(value = "fn_indirect_exp_total_details.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getTotalIndirectDetails(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		Connection con;

		// //System.out.println("*******************************Start*******************************");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			int totalamount = 0;
			totalamount = util_sp
					.generateTotalIndirectExpensesAmount(companyname);

			DecimalFormat indiaformat = new DecimalFormat("##,##,##,###.00");
			out.print(indiaformat.format(totalamount));

			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");
	}

	// Getting Companyname and Designation
	public JSONObject gettingLoginDetails(String username, String password) {
		JSONObject jsonobj = new JSONObject();
		Connection con = null;

		PreparedStatement pr;
		ResultSet rs;
		try {
			con = ds.getConnection();

			pr = con.prepareStatement("select companyname,designation from tl_hr_login where username=? and password=?");
			pr.setString(1, username);
			pr.setString(2, password);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("List is\t"+rs.getString(1));
				jsonobj.put("companyname", rs.getString(1));
				jsonobj.put("designation", rs.getString(2));
			}
			con.close();
			pr.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		return jsonobj;
	}

	// Invoice Tax Calculation.
	@RequestMapping(value = "fn_invoice_tax_details.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void gettingInvoiceTax(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		// //System.out.println("*******************************Start*******************************");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			// System.out.println("CompanyName\t" + companyname);
			con = ds.getConnection();
			pr = con.prepareStatement("select * from tl_fn_taxdetails where companyname=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			// out.print(totalamount);
			while (rs.next()) {
				invoicetax.put("vat", rs.getString(2));
				invoicetax.put("tax", rs.getString(3));
				invoicetax.put("eduservicetax", rs.getString(4));
			}
			out.print(invoicetax);
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Displaying logo for the logged in user.
	@RequestMapping(value = "fn_logo_path.res", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void gettingLogoPath(HttpServletRequest request,
			HttpServletResponse response) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {
			String companyname = request.getParameter("companyname");
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			// System.out.println("CompanyName\t" + companyname);
			con = ds.getConnection();
			pr = con.prepareStatement("select logoname from tl_fn_companyregistration where companyname=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();

			while (rs.next()) {
				// //System.out.println("Company Registration Path\t"+rs.getString(1));

				actual_file = rs.getString(1);
			}
			String logo1 = "logos/" + actual_file;

			out.print(logo1);
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Profit & Loss
	// Carrage Out Ward
	@RequestMapping(value = "fn_PL_carrage_Out_ward.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void gettingProfitAndLossCarragOutWard(HttpServletRequest request,
			HttpServletResponse response) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			String result = "0.0";
			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='CarrageOutWard'");
			rs = pr.executeQuery();

			while (rs.next()) {
				// //System.out.println("Company Registration Path\t"+rs.getString(1));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

			}

			// System.out.println("Result is\t" + result);
			out.print(result);
			con.close();
			pr.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Carrage Out Ward
	@RequestMapping(value = "fn_PL_carrage_Out_ward_list.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void gettingPLCarragOutWard(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// System.out.println("*******************************Start*******************************");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			String result = null;
			String result1 = null;
			con = ds.getConnection();
			pr = con.prepareStatement("SELECT ledgername,sum(balance) FROM tl_fn_current_asserts WHERE under='CarrageOutWard' and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();

			while (rs.next()) {
				// //System.out.println("Company Registration Path\t"+rs.getString(1));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = " ";
				}

				result1 = rs.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(1);
				} else {
					result1 = " ";
				}
				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");

			}

			con.close();
			pr.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Carrage In Ward
	@RequestMapping(value = "fn_PL_Carriage_In_Ward.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void gettingProfitAndLossCarragInWard(HttpServletRequest request,
			HttpServletResponse response) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='CarrageInWard'");
			rs = pr.executeQuery();
			String result = "0.0";

			while (rs.next()) {
				// //System.out.println("Company Registration Path\t"+rs.getString(1));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

			}

			out.print(result);
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Open Stock
	@RequestMapping(value = "fn_PL_OpenStock.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void gettingProfitAndLossOpenStock(HttpServletRequest request,
			HttpServletResponse response) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='OpenStock'");
			rs = pr.executeQuery();
			String result = "0.0";

			while (rs.next()) {
				// //System.out.println("Company Registration Path\t"+rs.getString(1));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

			}

			out.print(result);
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Indirect Expenses
	@RequestMapping(value = "fn_pl_auto_travel_exp.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void gettingProfitAndLossAutoTravelExp(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {
			// System.out.println("Company Namedfdfdfsd\t"+companyname);
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT ledgername,sum(amountdue) FROM tl_fn_autoexpencestravel WHERE login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			String result = null;
			String result1 = null;
			while (rs.next()) {
				// System.out.println("Data is\t"+rs.getString(1)+"\t"+rs.getString(2));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "";
				}

				result1 = rs.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(2);
				} else {
					result1 = "";
				}
				// System.out.println("Result\t"+result+"\t Result2"+indiaformat.format(Double.parseDouble(result1)));
				out.println("<tr><td>" + result + "</td><td>"
						+ indiaformat.format(Double.parseDouble(result1))
						+ "</td></tr>");

			}

			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Phone Bill Exp
	@RequestMapping(value = "fn_pl_phone_bill_exp.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewPhoneBillExpDetails(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {
			// System.out.println("Company Namedfdfdfsd\t"+companyname);
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT ledgername,sum(amountdue) FROM tl_fn_phonebillexpences WHERE login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			String result = null;
			String result1 = null;
			while (rs.next()) {
				// System.out.println("Data is\t"+rs.getString(1)+"\t"+rs.getString(2));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "";
				}

				result1 = rs.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(2);
				} else {
					result1 = "";
				}
				// System.out.println("Result\t"+result+"\t Result2"+result1);
				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");

			}

			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Hotel Bill Exp
	@RequestMapping(value = "fn_pl_hotel_exp.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewHotelExpDetails(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {
			// System.out.println("Company Namedfdfdfsd\t"+companyname);
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT ledgername,sum(totalamount) FROM `tl_fn_hotelexpenses` WHERE login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			String result = null;
			String result1 = null;
			while (rs.next()) {
				// System.out.println("Data is\t"+rs.getString(1)+"\t"+rs.getString(2));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "";
				}

				result1 = rs.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(2);
				} else {
					result1 = "";
				}
				// System.out.println("Result\t"+result+"\t Result2"+result1);
				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");

			}

			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Food Exp

	@RequestMapping(value = "fn_pl_food_exp.res", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void viewFoodExpDetails(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {
			// System.out.println("Company Namedfdfdfsd\t"+companyname);
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT ledgername,sum(amountdue) FROM tl_fn_foodexpenses WHERE login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			String result = null;
			String result1 = null;
			while (rs.next()) {
				// System.out.println("Data is\t"+rs.getString(1)+"\t"+rs.getString(2));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "";
				}

				result1 = rs.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(2);
				} else {
					result1 = "";
				}
				// System.out.println("Result\t"+result+"\t Result2"+result1);
				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");

			}

			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Entertainment Exp

	@RequestMapping(value = "fn_pl_entertainment_exp.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewEntertainmentExpDetails(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {
			// System.out.println("Company Namedfdfdfsd\t"+companyname);
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("select ledgername,sum(amountdue) from `tl_fn_entertainmentexpenceses` where login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			String result = null;
			String result1 = null;
			while (rs.next()) {
				// System.out.println("Data is\t"+rs.getString(1)+"\t"+rs.getString(2));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "";
				}

				result1 = rs.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(2);
				} else {
					result1 = "";
				}
				// System.out.println("Result\t"+result+"\t Result2"+result1);
				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");

			}

			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Misleneous Exp
	@RequestMapping(value = "fn_pl_misleneous_exp.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewMisleneousExpDetails(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {
			// System.out.println("Company Namedfdfdfsd\t"+companyname);
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("select ledgername,sum(amount) from tl_fn_misleniousexpenceses where login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			String result = null;
			String result1 = null;
			while (rs.next()) {
				// System.out.println("Data is\t"+rs.getString(1)+"\t"+rs.getString(2));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "";
				}

				result1 = rs.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(2);
				} else {
					result1 = "";
				}
				// System.out.println("Result\t"+result+"\t Result2"+result1);
				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");

			}

			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}//

	// InterNet Exp
	@RequestMapping(value = "fn_pl_internet_exp.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewINternetExpDetails(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {
			// System.out.println("Company Namedfdfdfsd\t"+companyname);
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("select ledgername,sum(totalamount) from tl_fn_internetexp where login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			String result = null;
			String result1 = null;
			while (rs.next()) {
				// System.out.println("Data is\t"+rs.getString(1)+"\t"+rs.getString(2));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "";
				}

				result1 = rs.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(2);
				} else {
					result1 = "";
				}
				// System.out.println("Result\t"+result+"\t Result2"+result1);
				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");

			}

			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}// tl_fn_internetexp

	// Advertisement Exp
	@RequestMapping(value = "fn_pl_advertisement_exp.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewAdvertisementExpDetails(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {
			// System.out.println("Company Namedfdfdfsd\t"+companyname);
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("select ledgername,sum(amount) from tl_fn_advertisementexp where login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			String result = null;
			String result1 = null;
			while (rs.next()) {
				// System.out.println("Data is\t"+rs.getString(1)+"\t"+rs.getString(2));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "";
				}

				result1 = rs.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(2);
				} else {
					result1 = "";
				}
				// System.out.println("Result\t"+result+"\t Result2"+result1);
				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");

			}

			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}// tl_fn_internetexp

	// Office Exp
	@RequestMapping(value = "fn_pl_office_exp.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewOfficeExpDetails(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {
			// System.out.println("Company Namedfdfdfsd\t"+companyname);
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("select ledgername,sum(total) from tl_fn_officeexp where login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			String result = null;
			String result1 = null;
			while (rs.next()) {
				// System.out.println("Data is\t"+rs.getString(1)+"\t"+rs.getString(2));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "";
				}

				result1 = rs.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(2);
				} else {
					result1 = "";
				}
				// System.out.println("Result\t"+result+"\t Result2"+result1);
				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");

			}

			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}// tl_fn_internetexp

	// Office Exp
	@RequestMapping(value = "fn_pl_repair_exp.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewRepairExpDetails(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {
			// System.out.println("Company Namedfdfdfsd\t"+companyname);
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("select ledgername,sum(total) from tl_fn_repairmaintenance where login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			String result = null;
			String result1 = null;
			while (rs.next()) {
				// System.out.println("Data is\t"+rs.getString(1)+"\t"+rs.getString(2));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "";
				}

				result1 = rs.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(2);
				} else {
					result1 = "";
				}
				// System.out.println("Result\t"+result+"\t Result2"+result1);
				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");

			}

			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}// tl_fn_internetexp

	// Duties & Taxes
	@RequestMapping(value = "fn_PL_DutiesAndTaxes.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void gettingProfitAndLossDutiesAndTaxes(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		String result = "0.0";
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Duties&Taxes' and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Company Registration Path\t"+rs.getString(1));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

			}

			out.print(result);
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Duties & Taxes

	@RequestMapping(value = "fn_pl_dutiesandtaxes.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewPLDutiesAndTaxesList(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		String result = "";
		String result1 = "";
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT ledgername,sum(balance) FROM tl_fn_current_asserts WHERE under='Duties&Taxes' and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Company Registration Path\t"+rs.getString(1));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "";
				}

				result1 = rs.getString(1);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(2);
				} else {
					result1 = "";
				}
				out.print("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");
			}

			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Direct Expenses
	@RequestMapping(value = "fn_PL_DirectExpenses.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void gettingProfitAndLossDirectExpenses(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='DirectExpenses' and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			String result = "0.0";

			while (rs.next()) {
				// //System.out.println("Company Registration Path\t"+rs.getString(1));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

			}

			out.print(result);
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Duties & Taxes
	@RequestMapping(value = "fn_pl_direct_exp_list.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewDirectExpensesList(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		String result = "";
		String result1 = "";
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT ledgername,sum(balance) FROM tl_fn_current_asserts WHERE under='DirectExpenses' and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {
				// //System.out.println("Company Registration Path\t"+rs.getString(1));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "";
				}

				result1 = rs.getString(1);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(2);
				} else {
					result1 = "";
				}
				out.print("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");
			}

			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Direct Expenses

	@RequestMapping(value = "fn_PL_DirectIncome.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void gettingProfitAndLossDirectIncome(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='DirectIncome' and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			String result = "0.0";

			while (rs.next()) {
				// //System.out.println("Company Registration Path\t"+rs.getString(1));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

			}

			out.print(result);
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Direct Expenses

	@RequestMapping(value = "fn_PL_SalesAccount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void gettingPLSalesAccount(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("select * from tl_fn_vochersales where login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			String result = "0.0";

			while (rs.next()) {
				// //System.out.println("Company Registration Path\t"+rs.getString(1));

				out.print("<tr><td>" + rs.getString("salesledger")
						+ "</td><td>" + rs.getString("nameofitem")
						+ "</td><td>" + rs.getString("quantity") + "</td><td>"
						+ rs.getString("units") + "</td><td>"
						+ rs.getString("rate") + "</td><td>"
						+ rs.getString("amount") + "</td></tr>");
			}

			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Closing Stock
	@RequestMapping(value = "fn_PL_ClosingStock.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void gettingProfitAndLossClosingStock(HttpServletRequest request,
			HttpServletResponse response) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='ClosingStock'");
			rs = pr.executeQuery();
			String result = "0.0";

			while (rs.next()) {
				// //System.out.println("Company Registration Path\t"+rs.getString(1));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

			}

			out.print(result);
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Closing Stock
	@RequestMapping(value = "fn_PL_IndirectIncome.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void gettingProfitAndLossIndirectIncome(HttpServletRequest request,
			HttpServletResponse response) {

		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='IndirectIncome'");
			rs = pr.executeQuery();
			String result = "0.0";

			while (rs.next()) {
				// //System.out.println("Company Registration Path\t"+rs.getString(1));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

			}

			out.print(result);
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Under List in Ledger Details.
	@RequestMapping(value = "fn_underListinLedger1.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void gettingUnderListinLedger(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String login_comp) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("select under from tl_fn_ledgerdetails where login_comp=?");
			pr.setString(1, login_comp);
			rs = pr.executeQuery();
			String result = "0.0";

			while (rs.next()) {
				// //System.out.println("Under List\t"+rs.getString(1));

				/*
				 * result=rs.getString(1); if(result!=null &&
				 * !result.isEmpty()){ result=rs.getString(1); }else{
				 * result="0.0"; }
				 */
				out.print("<option>" + rs.getString(1) + "</option>");
			}

			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Under List in Ledger Details.
	@RequestMapping(value = "fn_list_group.res", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void gettingListGroups(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String login_comp) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("select name from groupdetails where login_comp=?");
			pr.setString(1, login_comp);
			rs = pr.executeQuery();
			String result = "0.0";

			while (rs.next()) {
				// //System.out.println("Under List\t"+rs.getString(1));

				/*
				 * result=rs.getString(1); if(result!=null &&
				 * !result.isEmpty()){ result=rs.getString(1); }else{
				 * result="0.0"; }
				 */
				out.print("<option>" + rs.getString(1) + "</option>");
			}

			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Bank&Cash
	// Under List in Ledger Details.
	@RequestMapping(value = "hlp_bl_Bank&Cash.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getBankAndCash(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String login_comp) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Bank&Cash' and login_comp=?");
			pr.setString(1, login_comp);
			rs = pr.executeQuery();
			String result = "0.0";

			while (rs.next()) {
				// //System.out.println("Under List\t"+rs.getString(1));

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}
				out.print(result);
			}

			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	public boolean currentAssetsIsAvailable(String ledgername, String under) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String actual_file = null;
		boolean insertorupdate = false;
		// //System.out.println("*******************************Start*******************************");
		try {

			// con=dbconnection.getDBConnection();
			// System.out.println("Ledger Name \t" + ledgername);
			// System.out.println("Under \t" + under);
			con = ds.getConnection();
			pr = con.prepareStatement("select COUNT(*) from tl_fn_current_asserts where  ledgername=? and under=?");

			pr.setString(1, ledgername);
			pr.setString(2, under);
			rs = pr.executeQuery();
			int result = 0;

			while (rs.next()) {
				// //System.out.println("Under List\t"+rs.getString(1));

				result = Integer.parseInt(rs.getString(1));
				// System.out.println(rs.getString(1).length());
				if (result != 0) {
					// System.out.println("Available");
					insertorupdate = true;
				} else {
					// System.out.println("Not Available");
					insertorupdate = false;
				}

			}

			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		return insertorupdate;

	}

	// Under List in Ledger Details.
	@RequestMapping(value = "totalDRAmount.res", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void totalDRAmount(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String result = null;
		int finaltotal = 0;

		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			// System.out.println("DRAmount \t");

			Connection con1, con2, con3;

			PreparedStatement pr1, pr2, pr3;
			ResultSet rs1, rs2, rs3;

			int purchaseamount = 0;
			int wagesoutward = 0;
			int total = 0;
			int indirectexptotal = 0;
			int dutiesandtax = 0;
			int directexp = 0;

			indirectexptotal = util_sp
					.generateTotalIndirectExpensesAmount(companyname);

			// //System.out.println("*******************************Start*******************************");
			// con=dbconnection.getDBConnection();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT SUM(amount) FROM tl_fn_purchase where login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {
				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					purchaseamount = Integer.parseInt(rs1.getString(1));
				} else {
					purchaseamount = 0;
				}

			}

			con2 = ds.getConnection();
			pr2 = con1
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='CarrageOutWard' and login_comp=?");
			pr2.setString(1, companyname);
			rs2 = pr2.executeQuery();
			while (rs2.next()) {

				result = rs2.getString(1);
				if (result != null && !result.isEmpty()) {
					wagesoutward = Integer.parseInt(rs2.getString(1));
				} else {
					wagesoutward = 0;
				}
			}

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Duties&Taxes' and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();
			while (rs.next()) {

				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					dutiesandtax = Integer.parseInt(rs.getString(1));
				} else {
					dutiesandtax = 0;
				}
			}

			con3 = ds.getConnection();
			pr3 = con3
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='DirectExpenses' and login_comp=?");
			pr3.setString(1, companyname);
			rs3 = pr3.executeQuery();
			while (rs3.next()) {

				result = rs3.getString(1);
				if (result != null && !result.isEmpty()) {
					directexp = Integer.parseInt(rs3.getString(1));
				} else {
					directexp = 0;
				}
			}

			total = purchaseamount + wagesoutward;// Purchase Account,Carrage
			// Out Ward.

			finaltotal = total + indirectexptotal + dutiesandtax + directexp;// Dr
			// Total
			// Amount.

			out.println(indiaformat.format(finaltotal));

			// out.println(result);
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Profit&Loss Details List
	// Voucher
	@RequestMapping(value = "hlp_voucherPurchaseAccount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void voucherPurchase(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr;
		ResultSet rs;
		String result = null;
		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con = ds.getConnection();
			pr = con.prepareStatement("select * from tl_fn_purchase where login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();

			while (rs.next()) {

				out.println("<tr><td>"
						+ rs.getString("purchaseledger")
						+ "</td><td>"
						+ rs.getString("nameofitems")
						+ "</td><td>"
						+ rs.getString("quantity")
						+ "</td><td>"
						+ rs.getString("units")
						+ "</td><td>"
						+ indiaformat.format(Double.parseDouble(rs
								.getString("rate")))
						+ "</td><td>"
						+ indiaformat.format(Double.parseDouble(rs
								.getString("amount"))) + "</td></tr>");
			}

		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Profit&Loss Details List
	@RequestMapping(value = "hlp_totalOutWard.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void totalOutWord(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con1, con2, con3;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr1, pr2, pr3;
		ResultSet rs1, rs2, rs3;
		String result = null;
		int purchaseamount = 0;
		int wagesoutward = 0;
		int total = 0;

		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT SUM(amount) FROM tl_fn_purchase where login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {
				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					purchaseamount = Integer.parseInt(rs1.getString(1));
				} else {
					purchaseamount = 0;
				}

			}

			con2 = ds.getConnection();
			pr2 = con1
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='CarrageOutWard' and login_comp=?");
			pr2.setString(1, companyname);
			rs2 = pr2.executeQuery();
			while (rs2.next()) {

				result = rs2.getString(1);
				if (result != null && !result.isEmpty()) {
					wagesoutward = Integer.parseInt(rs2.getString(1));
				} else {
					wagesoutward = 0;
				}
			}

			total = purchaseamount + wagesoutward;
			DecimalFormat indiaformat = new DecimalFormat("#,##,###.00");

			out.println(indiaformat.format(total));

			con1.close();
			con2.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Profit&Loss Details List
	@RequestMapping(value = "hlp_totalCR.res", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void totalCR(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con1, con2, con3;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr1, pr2, pr3;
		ResultSet rs1, rs2, rs3;
		String result = null;
		int salesacount = 0;
		int directincome = 0;
		int indirectincome = 0;
		int total = 0;

		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT SUM(amount) FROM tl_fn_vochersales where login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {
				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					salesacount = Integer.parseInt(rs1.getString(1));
				} else {
					salesacount = 0;
				}

			}

			con2 = ds.getConnection();
			pr2 = con1
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='DirectIncome' and login_comp=?");
			pr2.setString(1, companyname);
			rs2 = pr2.executeQuery();
			while (rs2.next()) {

				result = rs2.getString(1);
				if (result != null && !result.isEmpty()) {
					directincome = Integer.parseInt(rs2.getString(1));
				} else {
					directincome = 0;
				}
			}

			con3 = ds.getConnection();
			pr3 = con3
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='IndirectIncome' and login_comp=?");
			pr3.setString(1, companyname);
			rs3 = pr3.executeQuery();
			while (rs3.next()) {

				result = rs3.getString(1);
				if (result != null && !result.isEmpty()) {
					indirectincome = Integer.parseInt(rs3.getString(1));
				} else {
					indirectincome = 0;
				}
			}

			total = salesacount + directincome + indirectincome;
			// System.out.println("CR Total is\t"+indiaformat.format(total));
			out.println(indiaformat.format(total));

			con1.close();
			con2.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Profit Or Loss
	@RequestMapping(value = "hlp_profitorloss.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void ProfitOrLoss(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con1, con2, con3, con4, con5, con6, con7, con8, con9;
		JSONObject profitorloss = new JSONObject();
		PreparedStatement pr1, pr2, pr3, pr4, pr5, pr6, pr7, pr8, pr9;
		ResultSet rs1, rs2, rs3, rs4, rs5, rs6, rs7, rs8, rs9;

		String result = null;
		int salesacount = 0;
		int directincome = 0;
		int indirectincome = 0;
		int total = 0;
		int purchaseamount = 0;
		int wagesoutward = 0;
		int indirectexptotal = 0;
		int dutiesandtax = 0;
		int directexp = 0;
		int finaltotal = 0;
		int total1 = 0;
		char profitorloss1;
		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT SUM(amount) FROM tl_fn_vochersales where login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {
				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					salesacount = Integer.parseInt(rs1.getString(1));
				} else {
					salesacount = 0;
				}

			}

			con2 = ds.getConnection();
			pr2 = con1
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='DirectIncome' and login_comp=?");
			pr2.setString(1, companyname);
			rs2 = pr2.executeQuery();
			while (rs2.next()) {

				result = rs2.getString(1);
				if (result != null && !result.isEmpty()) {
					directincome = Integer.parseInt(rs2.getString(1));
				} else {
					directincome = 0;
				}
			}

			con3 = ds.getConnection();
			pr3 = con3
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='IndirectIncome' and login_comp=?");
			pr3.setString(1, companyname);
			rs3 = pr3.executeQuery();
			while (rs3.next()) {

				result = rs3.getString(1);
				if (result != null && !result.isEmpty()) {
					indirectincome = Integer.parseInt(rs3.getString(1));
				} else {
					indirectincome = 0;
				}
			}

			indirectexptotal = util_sp
					.generateTotalIndirectExpensesAmount(companyname);

			// //System.out.println("*******************************Start*******************************");
			// con=dbconnection.getDBConnection();
			con4 = ds.getConnection();
			pr4 = con4
					.prepareStatement("SELECT SUM(amount) FROM tl_fn_purchase where login_comp=?");
			pr4.setString(1, companyname);
			rs4 = pr4.executeQuery();
			while (rs4.next()) {
				result = rs4.getString(1);
				if (result != null && !result.isEmpty()) {
					purchaseamount = Integer.parseInt(rs4.getString(1));
				} else {
					purchaseamount = 0;
				}

			}

			con5 = ds.getConnection();
			pr5 = con5
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='CarrageOutWard' and login_comp=?");
			pr5.setString(1, companyname);
			rs5 = pr5.executeQuery();
			while (rs5.next()) {

				result = rs5.getString(1);
				if (result != null && !result.isEmpty()) {
					wagesoutward = Integer.parseInt(rs5.getString(1));
				} else {
					wagesoutward = 0;
				}
			}

			con6 = ds.getConnection();
			pr6 = con6
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Duties&Taxes' and login_comp=?");
			pr6.setString(1, companyname);
			rs6 = pr6.executeQuery();
			while (rs6.next()) {

				result = rs6.getString(1);
				if (result != null && !result.isEmpty()) {
					dutiesandtax = Integer.parseInt(rs6.getString(1));
				} else {
					dutiesandtax = 0;
				}
			}

			con7 = ds.getConnection();
			pr7 = con7
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='DirectExpenses' and login_comp=?");
			pr7.setString(1, companyname);
			rs7 = pr7.executeQuery();
			while (rs7.next()) {

				result = rs7.getString(1);
				if (result != null && !result.isEmpty()) {
					directexp = Integer.parseInt(rs7.getString(1));
				} else {
					directexp = 0;
				}
			}

			total1 = purchaseamount + wagesoutward;// Purchase Account,Carrage
			// Out Ward.

			finaltotal = total1 + indirectexptotal + dutiesandtax + directexp;// Dr
			// Total
			// Amount.

			total = salesacount + directincome + indirectincome;// CrTotal

			int pl = 0;
			pl = total - finaltotal;
			if (pl > 0) {
				profitorloss1 = 'Y'; // Profit
			} else {
				pl = -pl;// Result of Profit or Loss
				profitorloss1 = 'N';// Loss
			}

			/*
			 * //System.out.println("Final Result is\t"+pl);
			 * //System.out.println("Is it Profit\t"+profitorloss1);
			 */
			// System.out.println("Format of the final Result\t"+indiaformat.format(pl));
			profitorloss.put("result", indiaformat.format(pl));

			profitorloss.put("profitorloss", profitorloss1);

			out.println(profitorloss);

			con1.close();
			con2.close();
			con3.close();
			con4.close();
			con5.close();
			con6.close();
			con7.close();

		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Balance Sheet Liabilites
	@RequestMapping(value = "hlp_bl_totallibilites.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void totalLiabilites(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con1, con2, con3, con4, con5, con6, con7, con8, con9, con10, con11;
		JSONObject profitorloss = new JSONObject();
		PreparedStatement pr1, pr2, pr3, pr4, pr5, pr6, pr7, pr8, pr9, pr10, pr11;
		ResultSet rs1, rs2, rs3, rs4, rs5, rs6, rs7, rs8, rs9, rs10, rs11;

		String result = null;
		int salesacount = 0;
		int directincome = 0;
		int indirectincome = 0;
		int total = 0;
		int purchaseamount = 0;
		int wagesoutward = 0;
		int indirectexptotal = 0;
		int dutiesandtax = 0;
		int directexp = 0;
		int finaltotal = 0;
		int paidupsharedcapital = 0;
		int retainedearning = 0;
		int securedloan = 0;
		int unsecuredloan = 0;
		int total1 = 0;
		char profitorloss1;
		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='CapitalAccount' and login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {
				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					salesacount = Integer.parseInt(rs1.getString(1));
				} else {
					salesacount = 0;
				}

			}

			con2 = ds.getConnection();
			pr2 = con1
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='ReverseSurplus' and login_comp=?");
			pr2.setString(1, companyname);
			rs2 = pr2.executeQuery();
			while (rs2.next()) {

				result = rs2.getString(1);
				if (result != null && !result.isEmpty()) {
					directincome = Integer.parseInt(rs2.getString(1));
				} else {
					directincome = 0;
				}
			}

			con3 = ds.getConnection();
			pr3 = con3
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Loans(Liability)' and login_comp=?");
			pr3.setString(1, companyname);
			rs3 = pr3.executeQuery();
			while (rs3.next()) {

				result = rs3.getString(1);
				if (result != null && !result.isEmpty()) {
					indirectincome = Integer.parseInt(rs3.getString(1));
				} else {
					indirectincome = 0;
				}
			}

			indirectexptotal = util_sp
					.generateTotalIndirectExpensesAmount(companyname);

			// //System.out.println("*******************************Start*******************************");
			// con=dbconnection.getDBConnection();
			con4 = ds.getConnection();
			pr4 = con4
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='SundaryCreditors' and login_comp=?");
			pr4.setString(1, companyname);
			rs4 = pr4.executeQuery();
			while (rs4.next()) {
				result = rs4.getString(1);
				if (result != null && !result.isEmpty()) {
					purchaseamount = Integer.parseInt(rs4.getString(1));
				} else {
					purchaseamount = 0;
				}

			}

			con5 = ds.getConnection();
			pr5 = con5
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Current Liabilities' and login_comp=?");
			pr5.setString(1, companyname);
			rs5 = pr5.executeQuery();
			while (rs5.next()) {

				result = rs5.getString(1);
				if (result != null && !result.isEmpty()) {
					wagesoutward = Integer.parseInt(rs5.getString(1));
				} else {
					wagesoutward = 0;
				}
			}

			con6 = ds.getConnection();
			pr6 = con6
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Other Current Liabilites' and login_comp=?");
			pr6.setString(1, companyname);
			rs6 = pr6.executeQuery();
			while (rs6.next()) {

				result = rs6.getString(1);
				if (result != null && !result.isEmpty()) {
					dutiesandtax = Integer.parseInt(rs6.getString(1));
				} else {
					dutiesandtax = 0;
				}
			}

			con7 = ds.getConnection();
			pr7 = con7
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Suspense-A/c' and login_comp=?");
			pr7.setString(1, companyname);
			rs7 = pr7.executeQuery();
			while (rs7.next()) {

				result = rs7.getString(1);
				if (result != null && !result.isEmpty()) {
					directexp = Integer.parseInt(rs7.getString(1));
				} else {
					directexp = 0;
				}
			}

			con8 = ds.getConnection();
			pr8 = con8
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='PaidUpCapitalAccount' and login_comp=?");
			pr8.setString(1, companyname);
			rs8 = pr8.executeQuery();
			while (rs8.next()) {

				result = rs8.getString(1);
				if (result != null && !result.isEmpty()) {
					paidupsharedcapital = Integer.parseInt(rs8.getString(1));
				} else {
					paidupsharedcapital = 0;
				}
			}

			con9 = ds.getConnection();
			pr9 = con9
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='RetainedEarnings' and login_comp=?");
			pr9.setString(1, companyname);
			rs9 = pr9.executeQuery();
			while (rs9.next()) {

				result = rs9.getString(1);
				if (result != null && !result.isEmpty()) {
					retainedearning = Integer.parseInt(rs9.getString(1));
				} else {
					retainedearning = 0;
				}
			}

			con10 = ds.getConnection();
			pr10 = con10
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='SecuredLoan' and login_comp=?");
			pr10.setString(1, companyname);
			rs10 = pr10.executeQuery();
			while (rs10.next()) {

				result = rs10.getString(1);
				if (result != null && !result.isEmpty()) {
					securedloan = Integer.parseInt(rs10.getString(1));
				} else {
					securedloan = 0;
				}
			}

			con11 = ds.getConnection();
			pr11 = con10
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='UnSecuredLoan' and login_comp=?");
			pr11.setString(1, companyname);
			rs11 = pr10.executeQuery();
			while (rs11.next()) {

				result = rs11.getString(1);
				if (result != null && !result.isEmpty()) {
					unsecuredloan = Integer.parseInt(rs11.getString(1));
				} else {
					unsecuredloan = 0;
				}
			}

			// Liabilites Total.
			total1 = salesacount + directincome + indirectincome + dutiesandtax
					+ directexp + purchaseamount + wagesoutward
					+ paidupsharedcapital + retainedearning + securedloan
					+ unsecuredloan;
			// Liabilites
			// Total Amount.

			out.println(indiaformat.format(total1));

			con1.close();
			con2.close();
			con3.close();
			con4.close();
			con5.close();
			con6.close();
			con7.close();
			con8.close();
			con9.close();
			con10.close();
			con11.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Balance Sheet Liabilites
	@RequestMapping(value = "hlp_bl_totalassets.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void totalAssets(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con1, con2, con3, con4, con5, con6, con7, con8, con9;
		JSONObject profitorloss = new JSONObject();
		PreparedStatement pr1, pr2, pr3, pr4, pr5, pr6, pr7, pr8, pr9;
		ResultSet rs1, rs2, rs3, rs4, rs5, rs6, rs7, rs8, rs9;

		String result = null;
		int fixedassets = 0;
		int bankandcash = 0;
		int currentasset = 0;
		int total = 0;
		int purchaseamount = 0;
		int wagesoutward = 0;
		int indirectexptotal = 0;
		int dutiesandtax = 0;
		int directexp = 0;
		int finaltotal = 0;
		int total1 = 0;
		int cashinhand = 0;
		char profitorloss1;
		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='FixedAssets' and login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {
				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					fixedassets = Integer.parseInt(rs1.getString(1));
				} else {
					fixedassets = 0;
				}

			}

			con2 = ds.getConnection();
			pr2 = con1
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Bank&Cash' and login_comp=?");
			pr2.setString(1, companyname);
			rs2 = pr2.executeQuery();
			while (rs2.next()) {

				result = rs2.getString(1);
				if (result != null && !result.isEmpty()) {
					bankandcash = Integer.parseInt(rs2.getString(1));
				} else {
					bankandcash = 0;
				}
			}

			con3 = ds.getConnection();
			pr3 = con3
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='CurrentAssets' and login_comp=?");
			pr3.setString(1, companyname);
			rs3 = pr3.executeQuery();
			while (rs3.next()) {

				result = rs3.getString(1);
				if (result != null && !result.isEmpty()) {
					currentasset = Integer.parseInt(rs3.getString(1));
				} else {
					currentasset = 0;
				}
			}

			// //System.out.println("*******************************Start*******************************");
			// con=dbconnection.getDBConnection();
			con4 = ds.getConnection();
			pr4 = con4
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Investments' and login_comp=?");
			pr4.setString(1, companyname);
			rs4 = pr4.executeQuery();
			while (rs4.next()) {
				result = rs4.getString(1);
				if (result != null && !result.isEmpty()) {
					purchaseamount = Integer.parseInt(rs4.getString(1));
				} else {
					purchaseamount = 0;
				}

			}

			con5 = ds.getConnection();
			pr5 = con5
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Loans&Advances(Asset)' and login_comp=?");
			pr5.setString(1, companyname);
			rs5 = pr5.executeQuery();
			while (rs5.next()) {

				result = rs5.getString(1);
				if (result != null && !result.isEmpty()) {
					wagesoutward = Integer.parseInt(rs5.getString(1));
				} else {
					wagesoutward = 0;
				}
			}

			con6 = ds.getConnection();
			pr6 = con6
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Inventory' and login_comp=?");
			pr6.setString(1, companyname);
			rs6 = pr6.executeQuery();
			while (rs6.next()) {

				result = rs6.getString(1);
				if (result != null && !result.isEmpty()) {
					dutiesandtax = Integer.parseInt(rs6.getString(1));
				} else {
					dutiesandtax = 0;
				}
			}

			con7 = ds.getConnection();
			pr7 = con7
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Provisions' and login_comp=?");
			pr7.setString(1, companyname);
			rs7 = pr7.executeQuery();
			while (rs7.next()) {

				result = rs7.getString(1);
				if (result != null && !result.isEmpty()) {
					directexp = Integer.parseInt(rs7.getString(1));
				} else {
					directexp = 0;
				}
			}

			con8 = ds.getConnection();
			pr8 = con8
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Cash-in-Hand' and login_comp=?");
			pr8.setString(1, companyname);
			rs8 = pr8.executeQuery();
			while (rs8.next()) {

				result = rs8.getString(1);
				if (result != null && !result.isEmpty()) {
					cashinhand = Integer.parseInt(rs8.getString(1));
				} else {
					cashinhand = 0;
				}
			}

			// Purchase Account,Carrage Out Ward.
			total1 = fixedassets + bankandcash + currentasset + dutiesandtax
					+ directexp + purchaseamount + wagesoutward + cashinhand;// Liabilites
			// Total Amount.
			out.println(indiaformat.format(total1));

			con1.close();
			con2.close();
			con3.close();
			con4.close();
			con5.close();
			con6.close();
			con7.close();
			con8.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Balance Sheet Details List
	@RequestMapping(value = "hlp_current_assets.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void totalCurrentAssets(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con1, con2, con3;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr1, pr2, pr3;
		ResultSet rs1, rs2, rs3;
		String result = null;
		int salesacount = 0;
		int directincome = 0;
		int indirectincome = 0;
		int total = 0;

		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='CurrentAssets' and login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {

				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs1.getString(1);
				} else {
					result = "0.0";
				}
			}

			out.println(result);

			// out.println(result);
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	@RequestMapping(value = "hlp_current_assets_total.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void CurrentAssetsTotal(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con1, con2, con3, con4;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr1, pr2, pr3, pr4;
		ResultSet rs1, rs2, rs3, rs4;
		String result = null;
		int currentassets = 0;
		int cashinhand = 0;
		int bankandcash = 0;
		int loanadv = 0;
		int total = 0;

		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='CurrentAssets' and login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {

				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					currentassets = Integer.parseInt(rs1.getString(1));
				} else {
					currentassets = 0;
				}
			}

			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Cash-in-Hand' and login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {

				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					cashinhand = Integer.parseInt(rs1.getString(1));
				} else {
					cashinhand = 0;
				}
			}

			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Bank&Cash' and login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {

				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					bankandcash = Integer.parseInt(rs1.getString(1));
				} else {
					bankandcash = 0;
				}
			}

			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT sum(balance) FROM tl_fn_current_asserts WHERE under='Loans&Advances(Asset)' and login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {

				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					loanadv = Integer.parseInt(rs1.getString(1));
				} else {
					loanadv = 0;
				}
			}
			out.println(indiaformat.format(currentassets + cashinhand
					+ bankandcash + loanadv));

			// out.println(result);
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Current Assets Ledger List.
	@RequestMapping(value = "hlp_current_assets_list.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void totalCurrentAssetsLedgerList(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con1, con2, con3;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr1, pr2, pr3;
		ResultSet rs1, rs2, rs3;
		String result = null;
		String result1 = null;
		int salesacount = 0;
		int directincome = 0;
		int indirectincome = 0;
		int total = 0;

		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT ledgername,sum(balance) FROM tl_fn_current_asserts WHERE under='CurrentAssets' and login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {

				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs1.getString(1);
				} else {
					result = " ";
				}

				result1 = rs1.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs1.getString(2);
				} else {
					result1 = " ";
				}

				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");
			}

			// out.println(result);
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Cash In Hand Ledger List.
	@RequestMapping(value = "hlp_cash_in_hand_list.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewCashInHandList(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con1, con2, con3;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr1, pr2, pr3;
		ResultSet rs1, rs2, rs3;
		String result = null;
		String result1 = null;
		int salesacount = 0;
		int directincome = 0;
		int indirectincome = 0;
		int total = 0;

		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT ledgername,sum(balance) FROM tl_fn_current_asserts WHERE under='Cash-in-Hand' and login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {

				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs1.getString(1);
				} else {
					result = " ";
				}

				result1 = rs1.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs1.getString(2);
				} else {
					result1 = " ";
				}

				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");
			}

			// out.println(result);
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// BankAccounts.
	@RequestMapping(value = "hlp_bank_and_cash_list.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewBankAndCash(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con1, con2, con3;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr1, pr2, pr3;
		ResultSet rs1, rs2, rs3;
		String result = null;
		String result1 = null;
		int salesacount = 0;
		int directincome = 0;
		int indirectincome = 0;
		int total = 0;

		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT ledgername,sum(balance) FROM tl_fn_current_asserts WHERE under='BankAccounts' and login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {

				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs1.getString(1);
				} else {
					result = " ";
				}

				result1 = rs1.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs1.getString(2);
				} else {
					result1 = " ";
				}

				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");
			}

			// out.println(result);
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// BankAccounts.
	@RequestMapping(value = "hlp_loans_and_adv_list.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewLoansAndAdv(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con1, con2, con3;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr1, pr2, pr3;
		ResultSet rs1, rs2, rs3;
		String result = null;
		String result1 = null;
		int salesacount = 0;
		int directincome = 0;
		int indirectincome = 0;
		int total = 0;

		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT ledgername,sum(balance) FROM tl_fn_current_asserts WHERE under='Loans&Advances(Asset)' and login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {

				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs1.getString(1);
				} else {
					result = " ";
				}

				result1 = rs1.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs1.getString(2);
				} else {
					result1 = " ";
				}

				out.println("<tr><td>" + result + "</td><td>"
						+ indiaformat.format(Double.parseDouble(result1))
						+ "</td></tr>");
			}

			// out.println(result);
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// BankAccounts.
	@RequestMapping(value = "hlp_investment_list.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewInvestmentList(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con1, con2, con3;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr1, pr2, pr3;
		ResultSet rs1, rs2, rs3;
		String result = null;
		String result1 = null;
		int salesacount = 0;
		int directincome = 0;
		int indirectincome = 0;
		int total = 0;

		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT ledgername,sum(balance) FROM tl_fn_current_asserts WHERE under='Investments' and login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {

				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs1.getString(1);
				} else {
					result = " ";
				}

				result1 = rs1.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs1.getString(2);
				} else {
					result1 = " ";
				}

				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");
			}

			// out.println(result);
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// BankAccounts.
	@RequestMapping(value = "hlp_capital_account_list.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewCapitalAccountList(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con1, con2, con3;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr1, pr2, pr3;
		ResultSet rs1, rs2, rs3;
		String result = null;
		String result1 = null;
		int salesacount = 0;
		int directincome = 0;
		int indirectincome = 0;
		int total = 0;

		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT ledgername,sum(balance) FROM tl_fn_current_asserts WHERE under='CapitalAccount' and login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {

				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs1.getString(1);
				} else {
					result = " ";
				}

				result1 = rs1.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs1.getString(2);
				} else {
					result1 = " ";
				}

				out.println("<tr><td>" + result + "</td><td>"
						+ indiaformat.format(Double.parseDouble(result1))
						+ "</td></tr>");
			}

			// out.println(result);
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Shared Capital Account List
	@RequestMapping(value = "hlp_shared_capital_account_list.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewPaidUpSharedCapitalList(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con1, con2, con3;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr1, pr2, pr3;
		ResultSet rs1, rs2, rs3;
		String result = null;
		String result1 = null;
		int salesacount = 0;
		int directincome = 0;
		int indirectincome = 0;
		int total = 0;

		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT ledgername,sum(balance) FROM tl_fn_current_asserts WHERE under='PaidUpSharedCapital' and login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {

				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs1.getString(1);
				} else {
					result = " ";
				}

				result1 = rs1.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs1.getString(2);
				} else {
					result1 = " ";
				}

				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");
			}

			// out.println(result);
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Shared Capital Account List
	@RequestMapping(value = "hlp_retain_earning_list.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewRetainEarningList(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con1, con2, con3;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr1, pr2, pr3;
		ResultSet rs1, rs2, rs3;
		String result = null;
		String result1 = null;
		int salesacount = 0;
		int directincome = 0;
		int indirectincome = 0;
		int total = 0;

		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT ledgername,sum(balance) FROM tl_fn_current_asserts WHERE under='RetainedEarnings' and login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {

				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs1.getString(1);
				} else {
					result = " ";
				}

				result1 = rs1.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs1.getString(2);
				} else {
					result1 = " ";
				}

				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");
			}

			// out.println(result);
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Shared Capital Account List
	@RequestMapping(value = "hlp_reserve_surplus_list.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewReveserveSurplusList(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con1, con2, con3;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr1, pr2, pr3;
		ResultSet rs1, rs2, rs3;
		String result = null;
		String result1 = null;
		int salesacount = 0;
		int directincome = 0;
		int indirectincome = 0;
		int total = 0;

		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT ledgername,sum(balance) FROM tl_fn_current_asserts WHERE under='Reverse&Surplus' and login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {

				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs1.getString(1);
				} else {
					result = " ";
				}

				result1 = rs1.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs1.getString(2);
				} else {
					result1 = " ";
				}

				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");
			}

			// out.println(result);
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Shared Capital Account List
	@RequestMapping(value = "hlp_secured_loan_list.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewSecuredLoanList(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con1, con2, con3;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr1, pr2, pr3;
		ResultSet rs1, rs2, rs3;
		String result = null;
		String result1 = null;
		int salesacount = 0;
		int directincome = 0;
		int indirectincome = 0;
		int total = 0;

		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT ledgername,sum(balance) FROM tl_fn_current_asserts WHERE under='CapitalAccount' and login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {

				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs1.getString(1);
				} else {
					result = " ";
				}

				result1 = rs1.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs1.getString(2);
				} else {
					result1 = " ";
				}

				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");
			}

			// out.println(result);
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Shared Capital Account List
	@RequestMapping(value = "hlp_un_secured_loan_list.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void viewUnSecuredLoanList(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("*******************************Start*******************************"+login_comp);
		Connection con1, con2, con3;
		JSONObject invoicetax = new JSONObject();
		PreparedStatement pr1, pr2, pr3;
		ResultSet rs1, rs2, rs3;
		String result = null;
		String result1 = null;
		int salesacount = 0;
		int directincome = 0;
		int indirectincome = 0;
		int total = 0;

		// //System.out.println("*******************************Start*******************************");
		try {

			PrintWriter out = response.getWriter();
			con1 = ds.getConnection();
			pr1 = con1
					.prepareStatement("SELECT ledgername,sum(balance) FROM tl_fn_current_asserts WHERE under='UnsecuredLoans' and login_comp=?");
			pr1.setString(1, companyname);
			rs1 = pr1.executeQuery();
			while (rs1.next()) {

				result = rs1.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs1.getString(1);
				} else {
					result = " ";
				}

				result1 = rs1.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs1.getString(2);
				} else {
					result1 = " ";
				}

				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");
			}

			// out.println(result);
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Other Current Liabilites Amount
	@RequestMapping(value = "hlp_OtherCurrentLiabilitesAmount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getOtherCurrentLiabilitesAmount(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		String result1 = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT ledgername,SUM(balance) FROM tl_fn_current_asserts WHERE under='Other CurrentLiabilites' and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();

			while (rs.next()) {
				// System.out.println("Party Account\t" + rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = " ";
				}
				result1 = rs.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(2);
				} else {
					result1 = "";
				}
				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Other Current Liabilites
	@RequestMapping(value = "hlp_OtherCurrentLiabilitesdetails.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getOtherCurrentLiabilitesDetails(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		String result1 = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT ledgername,SUM(balance) FROM tl_fn_current_asserts WHERE under='Other CurrentLiabilites' and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();

			while (rs.next()) {
				// System.out.println("Party Account\t" + rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = " ";
				}
				result1 = rs.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(2);
				} else {
					result1 = "";
				}
				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Other Current Liabilites
	@RequestMapping(value = "hlp_OtherCurrentLiabilitesamount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getOtherCurrentLiabilitesAmout(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		String result1 = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT SUM(balance) FROM tl_fn_current_asserts WHERE under='Other CurrentLiabilites' and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();

			while (rs.next()) {
				// System.out.println("Party Account\t" + rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Suspense A/c
	@RequestMapping(value = "hlp_SuspenseAccountDetails.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getSuspenseAccoutDetails(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		String result1 = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT ledgername,SUM(balance) FROM tl_fn_current_asserts WHERE under='Suspense-A/c' and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();

			while (rs.next()) {
				// System.out.println("Party Account\t" + rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = " ";
				}
				result1 = rs.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(2);
				} else {
					result1 = "";
				}
				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Suspense A/c Amount
	@RequestMapping(value = "hlp_SuspenseAccountAmount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getSuspenseAccoutAmount(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		String result1 = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT SUM(balance) FROM tl_fn_current_asserts WHERE under='Suspense-A/c' and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();

			while (rs.next()) {
				// System.out.println("Party Account\t" + rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Inventory
	@RequestMapping(value = "hlp_InventoryDetails.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getInventoryDetails(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		String result1 = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT ledgername,SUM(balance) FROM tl_fn_current_asserts WHERE under='Inventory' and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();

			while (rs.next()) {
				// System.out.println("Party Account\t" + rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = " ";
				}
				result1 = rs.getString(2);
				if (result1 != null && !result1.isEmpty()) {
					result1 = rs.getString(2);
				} else {
					result1 = "";
				}
				out.println("<tr><td>" + result + "</td><td>" + result1
						+ "</td></tr>");
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Inventory
	@RequestMapping(value = "hlp_InventoryAmount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getInventoryAmount(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		String result1 = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT SUM(balance) FROM tl_fn_current_asserts WHERE under='Inventory' and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();

			while (rs.next()) {
				// System.out.println("Party Account\t" + rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	// Inventory
	@RequestMapping(value = "hlp_ProvisionAmount.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getProvisionAmount(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("companyname") String companyname) {
		// //System.out.println("Payment Mode");
		Connection con;
		PreparedStatement pr;
		ResultSet rs;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		String result1 = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("SELECT SUM(balance) FROM tl_fn_current_asserts WHERE under='Inventory' and login_comp=?");
			pr.setString(1, companyname);
			rs = pr.executeQuery();

			while (rs.next()) {
				// System.out.println("Party Account\t" + rs.getString(1));
				result = rs.getString(1);
				if (result != null && !result.isEmpty()) {
					result = rs.getString(1);
				} else {
					result = "0.0";
				}

				out.println(result);
			}
			rs.close();
			pr.close();
			con.close();
		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		}

		response.setContentType("plain/text");

	}

	/**
	 * Manager Helping Methods
	 */
	// Inventory
	@RequestMapping(value = "hlp_ListOfLedgers.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getListOfLedgerByExecutive(HttpServletRequest request,
			HttpServletResponse response, @RequestParam("deltby") String manager) {
		// //System.out.println("Payment Mode");
		Connection con = null;
		PreparedStatement pr = null;
		ResultSet rs = null;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		String result1 = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("select ledgername from tl_fn_ledgerdetails where manager=?");
			pr.setString(1, manager);
			rs = pr.executeQuery();

			while (rs.next()) {
				System.out.println("Party Account\t" + rs.getString(1));
				/*
				 * result = rs.getString(1); if (result != null &&
				 * !result.isEmpty()) { result = rs.getString(1); } else {
				 * result = "0.0"; }
				 */

				out.println("<option>" + rs.getString(1) + "</option>");
			}

		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		} finally {
			try {
				rs.close();
				pr.close();
				con.close();
			} catch (Exception e) {
				logger.error(util_stos.sendingErrorAsString(e));
			}
		}

		response.setContentType("plain/html");

	}

	// Inventory
	@RequestMapping(value = "hlp_ListOfExecutivesByManager.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getListOfExecutivesByManager(HttpServletRequest request,
			HttpServletResponse response, @RequestParam("deltby") String manager) {
		// //System.out.println("Payment Mode");
		Connection con = null;
		PreparedStatement pr = null;
		ResultSet rs = null;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		String result1 = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("select username from tl_employee where manager=?");
			pr.setString(1, manager);
			rs = pr.executeQuery();

			while (rs.next()) {
				// System.out.println("Party Account\t" + rs.getString(1));
				/*
				 * result = rs.getString(1); if (result != null &&
				 * !result.isEmpty()) { result = rs.getString(1); } else {
				 * result = "0.0"; }
				 */

				out.println("<option>" + rs.getString(1) + "</option>");
			}

		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		} finally {
			try {
				rs.close();
				pr.close();
				con.close();
			} catch (Exception e) {
				logger.error(util_stos.sendingErrorAsString(e));
			}
		}

		response.setContentType("plain/text");

	}

	@RequestMapping(value = "hlp_ListOfGroups.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getListOfGroupByManager(HttpServletRequest request,
			HttpServletResponse response, @RequestParam("userid") String manager) {
		// //System.out.println("Payment Mode");
		Connection con = null;
		PreparedStatement pr = null;
		ResultSet rs = null;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		String result1 = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("select name from groupdetails where manager=?");
			pr.setString(1, manager);
			rs = pr.executeQuery();

			while (rs.next()) {
				System.out.println("Group Details\t" + rs.getString(1));
				/*
				 * result = rs.getString(1); if (result != null &&
				 * !result.isEmpty()) { result = rs.getString(1); } else {
				 * result = "0.0"; }
				 */

				out.println("<option>" + rs.getString(1) + "</option>");
			}

		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		} finally {
			try {
				rs.close();
				pr.close();
				con.close();
			} catch (Exception e) {
				logger.error(util_stos.sendingErrorAsString(e));
			}
		}

		response.setContentType("plain/html");

	}

	@RequestMapping(value = "hlp_ListOfStockGroups.res", method = {
			RequestMethod.GET, RequestMethod.POST })
	public void getListOfStockGroupByManager(HttpServletRequest request,
			HttpServletResponse response, @RequestParam("userid") String manager) {
		// //System.out.println("Payment Mode");
		Connection con = null;
		PreparedStatement pr = null;
		ResultSet rs = null;
		JSONObject indirectexplist = new JSONObject();
		int i = 0;

		String result = null;
		String result1 = null;
		// //System.out.println("####################Second#####################################");
		try {
			PrintWriter out = response.getWriter();
			// con=dbconnection.getDBConnection();

			con = ds.getConnection();
			pr = con.prepareStatement("select name from tl_fn_stockgroup where manager=?");
			pr.setString(1, manager);
			rs = pr.executeQuery();

			while (rs.next()) {
				System.out.println("Stock Group Details\t" + rs.getString(1));
				/*
				 * result = rs.getString(1); if (result != null &&
				 * !result.isEmpty()) { result = rs.getString(1); } else {
				 * result = "0.0"; }
				 */

				out.println("<option>" + rs.getString(1) + "</option>");
			}

		} catch (Exception e) {
			logger.error(util_stos.sendingErrorAsString(e));
		} finally {
			try {
				rs.close();
				pr.close();
				con.close();
			} catch (Exception e) {
				logger.error(util_stos.sendingErrorAsString(e));
			}
		}

		response.setContentType("plain/html");

	}

	/**
	 * Manager Helping Methods End
	 */
}
