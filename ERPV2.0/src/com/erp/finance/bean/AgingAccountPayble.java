package com.erp.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="agingaccountpayable")
public class AgingAccountPayble {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="fromdate")
	private String fromdate;
	@Column(name="todate")
	private String todate;
	@Column(name="today")
	private String today;
	@Column(name="invoice")
	private String invoice;
	@Column(name="amount")
	private String amount;
	@Column(name="account")
	private String account;
	@Column(name="deescription")
	private String description;
	@Column(name="monthly")
	private String monthly;
	@Column(name="monthly2")
	private String monthly2;
	@Column(name="monthly3")
	private String monthly3;
	@Column(name="total")
	private String total;
	@Column(name="gendate")
	private String gendate;
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
	public String getToday() {
		return today;
	}
	public void setToday(String today) {
		this.today = today;
	}
	public String getInvoice() {
		return invoice;
	}
	public void setInvoice(String invoice) {
		this.invoice = invoice;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getMonthly() {
		return monthly;
	}
	public void setMonthly(String monthly) {
		this.monthly = monthly;
	}
	public String getMonthly2() {
		return monthly2;
	}
	public void setMonthly2(String monthly2) {
		this.monthly2 = monthly2;
	}
	public String getMonthly3() {
		return monthly3;
	}
	public void setMonthly3(String monthly3) {
		this.monthly3 = monthly3;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}


}
