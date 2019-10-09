package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tl_fn_customer")
public class FinanceCustomerBean {

	@Id
	@GeneratedValue
	@Column(name="id")
	private long id;
	@Column(name="custid")
	private String custid;
	@Column(name="totalamount")
	private String totalamount;
	@Column(name="amountpaid")
	private String amountpaid;
	@Column(name="remainingamount")
	private String remainingamount;
	@Column(name="totalinstallments")
	private String totalinstallments;
	@Column(name="installmentspaid")
	private String installmentspaid;
	@Column(name="installment_date")
	private String installment_date;
	@Column(name="gendate")
	private String gendate;
	@Column(name="department")
	private String department;
	@Column(name="manager")
	private String manager;
	@Column(name="deltby")
	private String deltby;
	@Column(name="payingtype")
	private String payingtype;
	@Column(name="status")
	private String status;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getCustid() {
		return custid;
	}
	public void setCustid(String custid) {
		this.custid = custid;
	}
	public String getTotalamount() {
		return totalamount;
	}
	public void setTotalamount(String totalamount) {
		this.totalamount = totalamount;
	}
	public String getAmountpaid() {
		return amountpaid;
	}
	public void setAmountpaid(String amountpaid) {
		this.amountpaid = amountpaid;
	}
	public String getRemainingamount() {
		return remainingamount;
	}
	public void setRemainingamount(String remainingamount) {
		this.remainingamount = remainingamount;
	}
	public String getTotalinstallments() {
		return totalinstallments;
	}
	public void setTotalinstallments(String totalinstallments) {
		this.totalinstallments = totalinstallments;
	}
	public String getInstallmentspaid() {
		return installmentspaid;
	}
	public void setInstallmentspaid(String installmentspaid) {
		this.installmentspaid = installmentspaid;
	}
	public String getInstallment_date() {
		return installment_date;
	}
	public void setInstallment_date(String installment_date) {
		this.installment_date = installment_date;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPayingtype() {
		return payingtype;
	}
	public void setPayingtype(String payingtype) {
		this.payingtype = payingtype;
	}
	
}
