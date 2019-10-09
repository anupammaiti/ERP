package com.erp.sales.sl.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="salesreturnentry")
public class SalesReturnEntryForm {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="today")
	private String today;
	@Column(name="partyname")
	private String partyname;
	@Column(name="quatationno")
	private String quatationno;
	@Column(name="itemcode")
	private String itemcode;
	@Column(name="itemname")
	private String itemname;
	@Column(name="qantity")
	private String qantity;
	@Column(name="unnits")
	private String units;
	@Column(name="rate")
	private String rate;
	@Column(name="amount")
	private String amount;
	@Column(name="checkno")
	private String checkno;
	@Column(name="bankname")
	private String bankname;
	@Column(name="narration")
	private String narration;
	
	
	public long getSno() {
		return sno;
	}


	public void setSno(long sno) {
		this.sno = sno;
	}


	public String getToday() {
		return today;
	}


	public void setToday(String today) {
		this.today = today;
	}


	public String getPartyname() {
		return partyname;
	}


	public void setPartyname(String partyname) {
		this.partyname = partyname;
	}


	public String getQuatationno() {
		return quatationno;
	}


	public void setQuatationno(String quatationno) {
		this.quatationno = quatationno;
	}


	public String getItemcode() {
		return itemcode;
	}


	public void setItemcode(String itemcode) {
		this.itemcode = itemcode;
	}


	public String getItemname() {
		return itemname;
	}


	public void setItemname(String itemname) {
		this.itemname = itemname;
	}


	public String getQantity() {
		return qantity;
	}


	public void setQantity(String qantity) {
		this.qantity = qantity;
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


	public String getCheckno() {
		return checkno;
	}


	public void setCheckno(String checkno) {
		this.checkno = checkno;
	}


	public String getBankname() {
		return bankname;
	}


	public void setBankname(String bankname) {
		this.bankname = bankname;
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


	@Column(name="gendate")
	private String gendate;
	

}
