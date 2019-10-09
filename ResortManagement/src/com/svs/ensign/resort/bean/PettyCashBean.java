package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_sl_pettycash")
public class PettyCashBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="department")
	private String department;
	@Column(name="date")
	private String date;
	@Column(name="vocher")
	private String vocher;
	@Column(name="payee")
	private String payee;
	@Column(name="approvedby")
	private String approvedby;
	@Column(name="total")
	private String total;
	@Column(name="balane")
	private String balance;
	@Column(name="auditedby")
	private String auditedby;
	@Column(name="approvedby1")
	private String approvedby1;
	@Column(name="depart1")
	private String depart1;
	@Column(name="manager")
	private String manager;
	@Column(name="deltby")
	private String deltby;
	@Column(name="gendate")
	private String gendate;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getVocher() {
		return vocher;
	}
	public void setVocher(String vocher) {
		this.vocher = vocher;
	}
	public String getPayee() {
		return payee;
	}
	public void setPayee(String payee) {
		this.payee = payee;
	}
	public String getApprovedby() {
		return approvedby;
	}
	public void setApprovedby(String approvedby) {
		this.approvedby = approvedby;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	public String getAuditedby() {
		return auditedby;
	}
	public void setAuditedby(String auditedby) {
		this.auditedby = auditedby;
	}
	public String getApprovedby1() {
		return approvedby1;
	}
	public void setApprovedby1(String approvedby1) {
		this.approvedby1 = approvedby1;
	}
	public String getDepart1() {
		return depart1;
	}
	public void setDepart1(String depart1) {
		this.depart1 = depart1;
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
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	
	

}
