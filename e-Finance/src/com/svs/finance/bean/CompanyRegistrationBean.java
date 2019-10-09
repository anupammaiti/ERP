package com.svs.finance.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tl_fn_companyregistration")
public class CompanyRegistrationBean {
	
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="companyname")
	private String companyname;
	@Column(name="username")
	private String username;
	@Column(name="password")
	private String password;
	private String reenterpassword;
	@Column(name="mobileno")
	private String mobileno;
	@Column(name="landline")
	private String landline;
	@Column(name="email")
	private String email;
	@Column(name="address")
	private String address;
	@Column(name="app_status",columnDefinition="Admin")
	private String app_status;
	@Column(name="gendate")
	private String gendate;
	@Column(name="firstname")
	private String firstname;
	@Column(name="lastname")
	private String lastname;
	@Column(name="logopath")
	private String logopath;
	private Serializable  logo;
	@Column(name="companyid")
	private String companyid;
	@Column(name="logoname")
	private String logoname;
	
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getApp_status() {
		return app_status;
	}
	public void setApp_status(String app_status) {
		this.app_status = app_status;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	
	public String getReenterpassword() {
		return reenterpassword;
	}
	public void setReenterpassword(String reenterpassword) {
		this.reenterpassword = reenterpassword;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	public String getLandline() {
		return landline;
	}
	public void setLandline(String landline) {
		this.landline = landline;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCompanyid() {
		return companyid;
	}
	public void setCompanyid(String companyid) {
		this.companyid = companyid;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Serializable getLogo() {
		return logo;
	}
	public void setLogo(Serializable logo) {
		this.logo = logo;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getLogopath() {
		return logopath;
	}
	public void setLogopath(String logopath) {
		this.logopath = logopath;
	}
	public String getLogoname() {
		return logoname;
	}
	public void setLogoname(String logoname) {
		this.logoname = logoname;
	}
	
	

}
