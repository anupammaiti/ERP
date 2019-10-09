package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_advertisementexp")
public class AdvertisementExpenses {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="ledgername")
	private String ledgername;
	@Column(name="companyname")
	private String companyname;
	@Column(name="onissues")
	private String onissues;
	@Column(name="typeofaddess")
	private String typeofaddress;
	@Column(name="noofseconds")
	private String noofseconds;
	@Column(name="mobileno")
	private String mobileno;
	@Column(name="landno")
	private String landno;
	@Column(name="amount")
	private String amount;
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
	@Column(name="approvedby")
	private String approvedby;
	
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
	public String getOnissues() {
		return onissues;
	}
	public void setOnissues(String onissues) {
		this.onissues = onissues;
	}
	public String getTypeofaddress() {
		return typeofaddress;
	}
	public void setTypeofaddress(String typeofaddress) {
		this.typeofaddress = typeofaddress;
	}
	public String getNoofseconds() {
		return noofseconds;
	}
	public void setNoofseconds(String noofseconds) {
		this.noofseconds = noofseconds;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	public String getLandno() {
		return landno;
	}
	public void setLandno(String landno) {
		this.landno = landno;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
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
	public String getLogin_comp() {
		return login_comp;
	}
	public void setLogin_comp(String login_comp) {
		this.login_comp = login_comp;
	}
	public String getApprovedby() {
		return approvedby;
	}
	public void setApprovedby(String approvedby) {
		this.approvedby = approvedby;
	}
	
	
	
}
