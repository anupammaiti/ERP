package com.erp.inventory.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Purchase_Entry")
public class PurchaseEntryFormBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="today")
	private String today;
	@Column(name="partname")
	private String partname;
	@Column(name="qutationno")
	private String qutationno;
	@Column(name="itemcode")
	private String itemcode;
	@Column(name="nameofitem")
	private String nameofitem;
	@Column(name="qnty")
	private String qnty;
	@Column(name="units")
	private String units;
	@Column(name="rate")
	private String rate;
	@Column(name="amount")
	private String amount;
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
	public String getPartname() {
		return partname;
	}
	public void setPartname(String partname) {
		this.partname = partname;
	}
	public String getQutationno() {
		return qutationno;
	}
	public void setQutationno(String qutationno) {
		this.qutationno = qutationno;
	}
	public String getItemcode() {
		return itemcode;
	}
	public void setItemcode(String itemcode) {
		this.itemcode = itemcode;
	}
	public String getNameofitem() {
		return nameofitem;
	}
	public void setNameofitem(String nameofitem) {
		this.nameofitem = nameofitem;
	}
	public String getQnty() {
		return qnty;
	}
	public void setQnty(String qnty) {
		this.qnty = qnty;
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
	
	
	
}
