package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_salaryexp")
public class SalaryExpBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="month")
	private String month;
	@Column(name="noofemployee")
	private String noofemployee;
	@Column(name="totalamount")
	private String totalamount;
	@Column(name="department")
	private String department;
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
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getNoofemployee() {
		return noofemployee;
	}
	public void setNoofemployee(String noofemployee) {
		this.noofemployee = noofemployee;
	}
	public String getTotalamount() {
		return totalamount;
	}
	public void setTotalamount(String totalamount) {
		this.totalamount = totalamount;
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
	public String getLogin_comp() {
		return login_comp;
	}
	public void setLogin_comp(String login_comp) {
		this.login_comp = login_comp;
	}
	
	
}
