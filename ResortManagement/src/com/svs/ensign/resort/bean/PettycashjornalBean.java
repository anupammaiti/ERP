package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tl_fn_pettycashjournal")

public class PettycashjornalBean {
	
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="dept")
	private String dept;
	@Column(name="dates")
	private String dates;
	@Column(name="voucher")
	private String voucher;
	@Column(name="payee")
	private String payee;
	@Column(name="approvedby")
	private String approvedby;
	@Column(name="total")
	private String total;
	@Column(name="balance")
	private String balance;
	@Column(name="auditedby")
	private String auditedby;
	@Column(name="approvedbys")
	private String approvedbys;
	@Column(name="gendate")
	private String gendate;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getDates() {
		return dates;
	}
	public void setDates(String dates) {
		this.dates = dates;
	}
	public String getVoucher() {
		return voucher;
	}
	public void setVoucher(String voucher) {
		this.voucher = voucher;
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
	public String getApprovedbys() {
		return approvedbys;
	}
	public void setApprovedbys(String approvedbys) {
		this.approvedbys = approvedbys;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	
	
	
	
	
}
