package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_foodexpenses")
public class FoodExcepensesBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="empname")
	private String empname;
	@Column(name="phoneno")
	private String phoneno;
	@Column(name="location")
	private String location;
	@Column(name="approvedby")
	private String approvedby;
	@Column(name="department")
	private String department;
	@Column(name="date1")
	private String date1;
	@Column(name="day1")
	private String day1;
	@Column(name="amountdue")
	private String amountdue;
	@Column(name="gendate")
	private String gendate;
	@Column(name="ledgername")
	private String ledgername;
	@Column(name="department1")
	private String department1;
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
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getApprovedby() {
		return approvedby;
	}
	public void setApprovedby(String approvedby) {
		this.approvedby = approvedby;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getDate1() {
		return date1;
	}
	public void setDate1(String date1) {
		this.date1 = date1;
	}
	public String getDay1() {
		return day1;
	}
	public void setDay1(String day1) {
		this.day1 = day1;
	}
	public String getAmountdue() {
		return amountdue;
	}
	public void setAmountdue(String amountdue) {
		this.amountdue = amountdue;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	public String getLedgername() {
		return ledgername;
	}
	public void setLedgername(String ledgername) {
		this.ledgername = ledgername;
	}
	public String getDepartment1() {
		return department1;
	}
	public void setDepartment1(String department1) {
		this.department1 = department1;
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
