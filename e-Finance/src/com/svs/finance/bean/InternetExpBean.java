package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_internetexp")
public class InternetExpBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="ledgername")
	private String ledgername;
	@Column(name="companyname")
	private String companyname;
	@Column(name="package1")
	private String package1;
	@Column(name="rate")
	private String rate;
	@Column(name="installments")
	private String installments;
	@Column(name="repairs")
	private String repairs;
	@Column(name="approvedby")
	private String apporvedby;
	@Column(name="amount")
	private String amount;
	@Column(name="phoneno")
	private String phoneno;
	@Column(name="complientno")
	private String complientno;
	@Column(name="paymentplan")
	private String paymentplan;
	@Column(name="mobileno")
	private String mobileno;
	@Column(name="totalamount")
	private String totalamount;
	@Column(name="gendate")
	private String gendate;
	@Column(name="department")
	private String department;
	@Column(name="manager")
	private String manager;
	@Column(name="deltby")
	private String deltby;
	@Column(name="paiddate")
	private String paiddate;
	@Column(name="login_comp")
	private String login_comp;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getPackage1() {
		return package1;
	}
	public void setPackage1(String package1) {
		this.package1 = package1;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	public String getInstallments() {
		return installments;
	}
	public void setInstallments(String installments) {
		this.installments = installments;
	}
	public String getRepairs() {
		return repairs;
	}
	public void setRepairs(String repairs) {
		this.repairs = repairs;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getComplientno() {
		return complientno;
	}
	public void setComplientno(String complientno) {
		this.complientno = complientno;
	}
	public String getPaymentplan() {
		return paymentplan;
	}
	public void setPaymentplan(String paymentplan) {
		this.paymentplan = paymentplan;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	
	public String getTotalamount() {
		return totalamount;
	}
	public void setTotalamount(String totalamount) {
		this.totalamount = totalamount;
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
	public String getLedgername() {
		return ledgername;
	}
	public void setLedgername(String ledgername) {
		this.ledgername = ledgername;
	}
	public String getPaiddate() {
		return paiddate;
	}
	public void setPaiddate(String paiddate) {
		this.paiddate = paiddate;
	}
	public String getLogin_comp() {
		return login_comp;
	}
	public void setLogin_comp(String login_comp) {
		this.login_comp = login_comp;
	}
	public String getApporvedby() {
		return apporvedby;
	}
	public void setApporvedby(String apporvedby) {
		this.apporvedby = apporvedby;
	}

	
}
