package com.svs.ensign.resort.cms.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_customer")
public class CustomerBean {
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="customer_first_name")
	private String customer_first_name;
	@Column(name="customer_last_name")
	private String customer_last_name;
	@Column(name="gender")
	private String gender;
	@Column(name="mobileno")
	private String mobileno;
	@Column(name="email")
	private String email;
	@Column(name="address")
	private String address;
	@Column(name="typeofvilla")
	private String typeofvilla;
	@Column(name="pricelimit")
	private String pricelimit;
	@Column(name="paymenttype")
	private String paymenttype;
	@Column(name="facingofvilla")
	private String facingofvilla;
	@Column(name="block")
	private String block;
	@Column(name="flatno")
	private String flatno;
	@Column(name="flatinfeet")
	private String flatinfeet;
	@Column(name="location")
	private String location;
	@Column(name="gendate")
	private String gendate;
	@Column(name="deltby")
	private String deltby;
	@Column(name="status")
	private String status;
	@Column(name="bankname")
	private String bankname;
	@Column(name="bankaccount")
	private String bankaccount;
	@Column(name="workingtype")
	private String workingtype;
	@Column(name="workingcompanyname")
	private String workingcompanyname;
	@Column(name="salary")
	private String salary;
	@Column(name="username")
	private String username;
	@Column(name="password")
	private String password;
	@Column(name="department")
	private String department;
	@Column(name="manager")
	private String manager;
	@Column(name="dept")
	private String dept;
	@Column(name="sld_id")
	private String sld_id;
	@Column(name="slm_id")
	private String slm_id;
	@Column(name="sle_id")
	private String sle_id;
	@Column(name="sldept")
	private String sldept;
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getCustomer_first_name() {
		return customer_first_name;
	}
	public void setCustomer_first_name(String customer_first_name) {
		this.customer_first_name = customer_first_name;
	}
	public String getCustomer_last_name() {
		return customer_last_name;
	}
	public void setCustomer_last_name(String customer_last_name) {
		this.customer_last_name = customer_last_name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTypeofvilla() {
		return typeofvilla;
	}
	public void setTypeofvilla(String typeofvilla) {
		this.typeofvilla = typeofvilla;
	}
	public String getPricelimit() {
		return pricelimit;
	}
	public void setPricelimit(String pricelimit) {
		this.pricelimit = pricelimit;
	}
	public String getFacingofvilla() {
		return facingofvilla;
	}
	public void setFacingofvilla(String facingofvilla) {
		this.facingofvilla = facingofvilla;
	}
	public String getFlatinfeet() {
		return flatinfeet;
	}
	public void setFlatinfeet(String flatinfeet) {
		this.flatinfeet = flatinfeet;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
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
	public String getBankname() {
		return bankname;
	}
	public void setBankname(String bankname) {
		this.bankname = bankname;
	}
	public String getBankaccount() {
		return bankaccount;
	}
	public void setBankaccount(String bankaccount) {
		this.bankaccount = bankaccount;
	}
	public String getWorkingtype() {
		return workingtype;
	}
	public void setWorkingtype(String workingtype) {
		this.workingtype = workingtype;
	}
	public String getWorkingcompanyname() {
		return workingcompanyname;
	}
	public void setWorkingcompanyname(String workingcompanyname) {
		this.workingcompanyname = workingcompanyname;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
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
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getSld_id() {
		return sld_id;
	}
	public void setSld_id(String sld_id) {
		this.sld_id = sld_id;
	}
	public String getSlm_id() {
		return slm_id;
	}
	public void setSlm_id(String slm_id) {
		this.slm_id = slm_id;
	}
	public String getSle_id() {
		return sle_id;
	}
	public void setSle_id(String sle_id) {
		this.sle_id = sle_id;
	}
	public String getSldept() {
		return sldept;
	}
	public void setSldept(String sldept) {
		this.sldept = sldept;
	}
	public String getPaymenttype() {
		return paymenttype;
	}
	public void setPaymenttype(String paymenttype) {
		this.paymenttype = paymenttype;
	}
	public String getBlock() {
		return block;
	}
	public void setBlock(String block) {
		this.block = block;
	}
	public String getFlatno() {
		return flatno;
	}
	public void setFlatno(String flatno) {
		this.flatno = flatno;
	}
	
}
