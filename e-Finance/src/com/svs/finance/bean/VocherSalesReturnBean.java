package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_salesreturn")
public class VocherSalesReturnBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="reciptno")
	private String reciptno;
	@Column(name="refno")
	private String refno;
	@Column(name="date")
	private String date;
	@Column(name="paryaccount")
	private String partyaccount;
	@Column(name="currentbalance")
	private String currentbalance;
	@Column(name="salesledger")
	private String salesledger;
	@Column(name="nameofitem")
	private String nameofitem;
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
	@Column(name="gendate")
	private String gendate;
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
	public String getRefno() {
		return refno;
	}
	public void setRefno(String refno) {
		this.refno = refno;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPartyaccount() {
		return partyaccount;
	}
	public void setPartyaccount(String partyaccount) {
		this.partyaccount = partyaccount;
	}
	public String getCurrentbalance() {
		return currentbalance;
	}
	public void setCurrentbalance(String currentbalance) {
		this.currentbalance = currentbalance;
	}
	public String getSalesledger() {
		return salesledger;
	}
	public void setSalesledger(String salesledger) {
		this.salesledger = salesledger;
	}
	public String getNameofitem() {
		return nameofitem;
	}
	public void setNameofitem(String nameofitem) {
		this.nameofitem = nameofitem;
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
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
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
