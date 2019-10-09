package com.erp.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cashdisbursmentjournal")
public class CashDisbursmentJournalBean {
	
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="fromdate")
	private String fromdate;
	@Column(name="todate")
	private String todate;
	@Column(name="date1")
	private String date1;
	@Column(name="check1")
	private String check1;
	@Column(name="payee1")
	private String payee1;
	@Column(name="accountc1")
	private String accountc1;
	@Column(name="account")
	private String account;
	@Column(name="cash1")
	private String cash1;
	@Column(name="discount1")
	private String discount1;
	@Column(name="other1")
	private String other1;
	@Column(name="accountd1")
	private String accountd1;
	@Column(name="amount1")
	private String amount1;
	@Column(name="amountp1")
	private String amountp1;
	@Column(name="othera1")
	private String othera1;
	@Column(name="date2")
	private String date2;
	@Column(name="check2")
	private String check2;
	@Column(name="payee2")
	private String payee2;
	@Column(name="accountc2")
	private String accountc2;
	@Column(name="account2")
	private String account2;
	@Column(name="cash2")
	private String cash2;
	@Column(name="discount2")
	private String discount2;
	@Column(name="other2")
	private String other2;
	@Column(name="accountd2")
	private String accountd2;
	@Column(name="amount2")
	private String amount2;
	@Column(name="amountp2")
	private String amountp2;
	@Column(name="othera2")
	private String othera2;

	@Column(name="date3")
	private String date3;
	@Column(name="check3")
	private String check3;
	@Column(name="payee3")
	private String payee3;
	@Column(name="accountc3")
	private String accountc3;
	@Column(name="account3")
	private String account3;
	@Column(name="cash3")
	private String cash3;
	@Column(name="discount3")
	private String discount3;
	@Column(name="other3")
	private String other3;
	@Column(name="accountd3")
	private String accountd3;
	@Column(name="amount3")
	private String amount3;
	@Column(name="amountp3")
	private String amountp3;
	@Column(name="othera3")
	private String othera3;
	
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getFromdate() {
		return fromdate;
	}
	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}
	public String getTodate() {
		return todate;
	}
	public void setTodate(String todate) {
		this.todate = todate;
	}
	public String getDate1() {
		return date1;
	}
	public void setDate1(String date1) {
		this.date1 = date1;
	}
	public String getCheck1() {
		return check1;
	}
	public void setCheck1(String check1) {
		this.check1 = check1;
	}
	public String getPayee1() {
		return payee1;
	}
	public void setPayee1(String payee1) {
		this.payee1 = payee1;
	}
	public String getAccountc1() {
		return accountc1;
	}
	public void setAccountc1(String accountc1) {
		this.accountc1 = accountc1;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getCash1() {
		return cash1;
	}
	public void setCash1(String cash1) {
		this.cash1 = cash1;
	}
	public String getDiscount1() {
		return discount1;
	}
	public void setDiscount1(String discount1) {
		this.discount1 = discount1;
	}
	public String getOther1() {
		return other1;
	}
	public void setOther1(String other1) {
		this.other1 = other1;
	}
	public String getAccountd1() {
		return accountd1;
	}
	public void setAccountd1(String accountd1) {
		this.accountd1 = accountd1;
	}
	public String getAmount1() {
		return amount1;
	}
	public void setAmount1(String amount1) {
		this.amount1 = amount1;
	}
	public String getAmountp1() {
		return amountp1;
	}
	public void setAmountp1(String amountp1) {
		this.amountp1 = amountp1;
	}
	public String getOthera1() {
		return othera1;
	}
	public void setOthera1(String othera1) {
		this.othera1 = othera1;
	}
	public String getDate2() {
		return date2;
	}
	public void setDate2(String date2) {
		this.date2 = date2;
	}
	public String getCheck2() {
		return check2;
	}
	public void setCheck2(String check2) {
		this.check2 = check2;
	}
	public String getPayee2() {
		return payee2;
	}
	public void setPayee2(String payee2) {
		this.payee2 = payee2;
	}
	public String getAccountc2() {
		return accountc2;
	}
	public void setAccountc2(String accountc2) {
		this.accountc2 = accountc2;
	}
	public String getAccount2() {
		return account2;
	}
	public void setAccount2(String account2) {
		this.account2 = account2;
	}
	public String getCash2() {
		return cash2;
	}
	public void setCash2(String cash2) {
		this.cash2 = cash2;
	}
	public String getDiscount2() {
		return discount2;
	}
	public void setDiscount2(String discount2) {
		this.discount2 = discount2;
	}
	public String getOther2() {
		return other2;
	}
	public void setOther2(String other2) {
		this.other2 = other2;
	}
	public String getAccountd2() {
		return accountd2;
	}
	public void setAccountd2(String accountd2) {
		this.accountd2 = accountd2;
	}
	public String getAmount2() {
		return amount2;
	}
	public void setAmount2(String amount2) {
		this.amount2 = amount2;
	}
	public String getAmountp2() {
		return amountp2;
	}
	public void setAmountp2(String amountp2) {
		this.amountp2 = amountp2;
	}
	public String getOthera2() {
		return othera2;
	}
	public void setOthera2(String othera2) {
		this.othera2 = othera2;
	}
	public String getDate3() {
		return date3;
	}
	public void setDate3(String date3) {
		this.date3 = date3;
	}
	public String getCheck3() {
		return check3;
	}
	public void setCheck3(String check3) {
		this.check3 = check3;
	}
	public String getPayee3() {
		return payee3;
	}
	public void setPayee3(String payee3) {
		this.payee3 = payee3;
	}
	public String getAccountc3() {
		return accountc3;
	}
	public void setAccountc3(String accountc3) {
		this.accountc3 = accountc3;
	}
	public String getAccount3() {
		return account3;
	}
	public void setAccount3(String account3) {
		this.account3 = account3;
	}
	public String getCash3() {
		return cash3;
	}
	public void setCash3(String cash3) {
		this.cash3 = cash3;
	}
	public String getDiscount3() {
		return discount3;
	}
	public void setDiscount3(String discount3) {
		this.discount3 = discount3;
	}
	public String getOther3() {
		return other3;
	}
	public void setOther3(String other3) {
		this.other3 = other3;
	}
	public String getAccountd3() {
		return accountd3;
	}
	public void setAccountd3(String accountd3) {
		this.accountd3 = accountd3;
	}
	public String getAmount3() {
		return amount3;
	}
	public void setAmount3(String amount3) {
		this.amount3 = amount3;
	}
	public String getAmountp3() {
		return amountp3;
	}
	public void setAmountp3(String amountp3) {
		this.amountp3 = amountp3;
	}
	public String getOthera3() {
		return othera3;
	}
	public void setOthera3(String othera3) {
		this.othera3 = othera3;
	}

	
}
