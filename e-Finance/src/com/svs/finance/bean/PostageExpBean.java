package com.svs.finance.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tl_fn_postageexp")
public class PostageExpBean {
	
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="ledgername")
	private String ledgername;
	@Column(name="to_name")
	private String to_name;
	@Column(name="address")
	private String address;
	@Column(name="typeofpost")
	private String typeofpost;
	@Column(name="rate")
	private String rate;
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
	public String getTo_name() {
		return to_name;
	}
	public void setTo_name(String to_name) {
		this.to_name = to_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTypeofpost() {
		return typeofpost;
	}
	public void setTypeofpost(String typeofpost) {
		this.typeofpost = typeofpost;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
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
