package com.erp.hr.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "leaveapplications")
public class LeaveApplicationBean {

	@Id
	@GeneratedValue
	@Column(name = "srno")
	private long srno;
	@Column(name = "name")
	private String name;
	@Column(name = "company")
	private String company;
	@Column(name = "employeecode")
	private String employeecode;
	@Column(name = "designation")
	private String designation;
	@Column(name = "purposeofleave")
	private String purposeofleave;
	@Column(name = "addressonleave")
	private String addressonleave;
	@Column(name = "fromdate")
	private String fromdate;
	@Column(name = "todate")
	private String todate;
	@Column(name = "cl")
	private String cl;
	@Column(name = "nocl")
	private String nocl;
	@Column(name = "sl")
	private String sl;
	@Column(name = "nosl")
	private String nosl;
	@Column(name = "el")
	private String el;
	@Column(name = "noel")
	private String noel;
	@Column(name = "lop")
	private String lop;
	@Column(name = "status")
	private String status;
	@Column(name = "authenticationcode")
	private String authenticationcode;
	@Column(name = "noofleaves")
	private String noofleaves;
	@Column(name="totalleaves")
	private String totalleaves;
	@Column(name="gendate")
	private String gendate;
	public long getSrno() {
		return srno;
	}

	public void setSrno(long srno) {
		this.srno = srno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getEmployeecode() {
		return employeecode;
	}

	public void setEmployeecode(String employeecode) {
		this.employeecode = employeecode;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getPurposeofleave() {
		return purposeofleave;
	}

	public void setPurposeofleave(String purposeofleave) {
		this.purposeofleave = purposeofleave;
	}

	public String getAddressonleave() {
		return addressonleave;
	}

	public void setAddressonleave(String addressonleave) {
		this.addressonleave = addressonleave;
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

	public String getCl() {
		return cl;
	}

	public void setCl(String cl) {
		this.cl = cl;
	}


	public String getSl() {
		return sl;
	}

	public void setSl(String sl) {
		this.sl = sl;
	}

	public String getEl() {
		return el;
	}

	public void setEl(String el) {
		this.el = el;
	}

	public String getLop() {
		return lop;
	}

	public void setLop(String lop) {
		this.lop = lop;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAuthenticationcode() {
		return authenticationcode;
	}

	public void setAuthenticationcode(String authenticationcode) {
		this.authenticationcode = authenticationcode;
	}

	public String getNoofleaves() {
		return noofleaves;
	}

	public void setNoofleaves(String noofleaves) {
		this.noofleaves = noofleaves;
	}

	public String getTotalleaves() {
		return totalleaves;
	}

	public void setTotalleaves(String totalleaves) {
		this.totalleaves = totalleaves;
	}

	public String getGendate() {
		return gendate;
	}

	public void setGendate(String gendate) {
		this.gendate = gendate;
	}


	public String getNosl() {
		return nosl;
	}

	public String getNoel() {
		return noel;
	}


	public String getNocl() {
		return nocl;
	}

	public void setNocl(String nocl) {
		this.nocl = nocl;
	}

	public void setNosl(String nosl) {
		this.nosl = nosl;
	}

	public void setNoel(String noel) {
		this.noel = noel;
	}

	

	
}
