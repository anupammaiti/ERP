package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_purchase")
public class VocherPurchaseBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="reciptno")
	private String reciptno;
	@Column(name="refenceno")
	private String refenceno;
	@Column(name="date")
	private String date;
	@Column(name="paymentmode")
	private String paymentmode;
	@Column(name="partyaccountname")
	private String partyaccountname;
	@Column(name="currentbalance")
	private String currentbalance;
	@Column(name="purchaseledger")
	private String purchaseledger;
	@Column(name="nameofitems")
	private String nameofitems;
	@Column(name="quantity")
	private String quantity;
	@Column(name="units")
	private String units;
	@Column(name="rate")
	private String rate;
	@Column(name="amount")
	private String amount;
	@Column(name="narration")
	private String narration;
	@Column(name="getdate")
	private String getdate;
	@Column(name="department")
	private String department;
	@Column(name="manager")
	private String manager;
	@Column(name="deltby")
	private String deltby;
	@Column(name="login_comp")
	private String login_comp;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getReciptno() {
		return reciptno;
	}
	public void setReciptno(String reciptno) {
		this.reciptno = reciptno;
	}
	public String getRefenceno() {
		return refenceno;
	}
	public void setRefenceno(String refenceno) {
		this.refenceno = refenceno;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPaymentmode() {
		return paymentmode;
	}
	public void setPaymentmode(String paymentmode) {
		this.paymentmode = paymentmode;
	}
	public String getCurrentbalance() {
		return currentbalance;
	}
	public void setCurrentbalance(String currentbalance) {
		this.currentbalance = currentbalance;
	}
	public String getPurchaseledger() {
		return purchaseledger;
	}
	public void setPurchaseledger(String purchaseledger) {
		this.purchaseledger = purchaseledger;
	}
	public String getNameofitems() {
		return nameofitems;
	}
	public void setNameofitems(String nameofitems) {
		this.nameofitems = nameofitems;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getUnits() {
		return units;
	}
	public void setUnits(String units) {
		this.units = units;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getNarration() {
		return narration;
	}
	public void setNarration(String narration) {
		this.narration = narration;
	}
	public String getGetdate() {
		return getdate;
	}
	public void setGetdate(String getdate) {
		this.getdate = getdate;
	}
	public String getPartyaccountname() {
		return partyaccountname;
	}
	public void setPartyaccountname(String partyaccountname) {
		this.partyaccountname = partyaccountname;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getDeltby() {
		return deltby;
	}
	public void setDeltby(String deltby) {
		this.deltby = deltby;
	}
	public String getLogin_comp() {
		return login_comp;
	}
	public void setLogin_comp(String login_comp) {
		this.login_comp = login_comp;
	}
	
	
}
