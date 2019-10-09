package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tl_fn_vocherpurcahsereturn")
public class VocherPurchaseReturnBean {
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
	@Column(name="partyaccount")
	private String partyacoount;
	@Column(name="currentbalance")
	private String currnentbalance;
	@Column(name="purachaseledger")
	private String purchaseledger;
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
	public String getPartyacoount() {
		return partyacoount;
	}
	public void setPartyacoount(String partyacoount) {
		this.partyacoount = partyacoount;
	}
	public String getCurrnentbalance() {
		return currnentbalance;
	}
	public void setCurrnentbalance(String currnentbalance) {
		this.currnentbalance = currnentbalance;
	}
	public String getPurchaseledger() {
		return purchaseledger;
	}
	public void setPurchaseledger(String purchaseledger) {
		this.purchaseledger = purchaseledger;
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
	

}
