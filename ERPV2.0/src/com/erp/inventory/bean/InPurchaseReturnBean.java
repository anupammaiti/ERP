package com.erp.inventory.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PurchaseReturns")
public class InPurchaseReturnBean {
	
@Id
@GeneratedValue
@Column(name="sno")
private long sno;
@Column(name="today")
private String today;
@Column(name="partyname")
private String partyname;
@Column(name="quantityrequired")
private String quantityrequired;
@Column(name="itemcode")
private String itemcode;
@Column(name="nameofitem")
private String nameofitem;
@Column(name="qty")
private String qty;
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



public String getQuantityrequired() {
	return quantityrequired;
}
public void setQuantityrequired(String quantityrequired) {
	this.quantityrequired = quantityrequired;
}
public String getGendate() {
	return gendate;
}
public void setGendate(String gendate) {
	this.gendate = gendate;
}
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
public String getQty() {
	return qty;
}
public void setQty(String qty) {
	this.qty = qty;
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
