package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_fn_autoexpencestravel")
public class AutoExpencesesTravelBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="date1")
	private String date1;
	@Column(name="day1")
	private String day1;
	@Column(name="empname")
	private String empname;
	@Column(name="completedby")
	private String completedby;
	@Column(name="location")
	private String location;
	@Column(name="auditedby")
	private String auditedby;
	@Column(name="address")
	private String address;
	@Column(name="purposeoftrip")
	private String purposeoftrip;
	@Column(name="city")
	private String city;
	@Column(name="approvedby")
	private String approvedby;
	@Column(name="state")
	private String state;
	@Column(name="zipno")
	private String zipno;
	@Column(name="phoneno")
	private String phoneno;
	@Column(name="department")
	private String department;
	@Column(name="date2")
	private String date2;
	@Column(name="travelfrom")
	private String travelfrom;
	@Column(name="odometerstart")
	private String odometerstart;
	@Column(name="odometerend")
	private String odometerend;
	@Column(name="totalmileage")
	private String totalmileage;
	@Column(name="rate")
	private String rate;
	@Column(name="amountdue")
	private String amountdue;
	@Column(name="gendate")
	private String gendate;
	@Column(name="department1")
	private String department1;
	@Column(name="manager")
	private String manager;
	@Column(name="deltby")
	private String deltby;
	@Column(name="ledgername")
	private String ledgername;
	@Column(name="empid")
	private String empid;
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
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
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public String getCompletedby() {
		return completedby;
	}
	public void setCompletedby(String completedby) {
		this.completedby = completedby;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getAuditedby() {
		return auditedby;
	}
	public void setAuditedby(String auditedby) {
		this.auditedby = auditedby;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPurposeoftrip() {
		return purposeoftrip;
	}
	public void setPurposeoftrip(String purposeoftrip) {
		this.purposeoftrip = purposeoftrip;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getApprovedby() {
		return approvedby;
	}
	public void setApprovedby(String approvedby) {
		this.approvedby = approvedby;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZipno() {
		return zipno;
	}
	public void setZipno(String zipno) {
		this.zipno = zipno;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getDate2() {
		return date2;
	}
	public void setDate2(String date2) {
		this.date2 = date2;
	}
	public String getTravelfrom() {
		return travelfrom;
	}
	public void setTravelfrom(String travelfrom) {
		this.travelfrom = travelfrom;
	}
	public String getOdometerstart() {
		return odometerstart;
	}
	public void setOdometerstart(String odometerstart) {
		this.odometerstart = odometerstart;
	}
	public String getOdometerend() {
		return odometerend;
	}
	public void setOdometerend(String odometerend) {
		this.odometerend = odometerend;
	}
	public String getTotalmileage() {
		return totalmileage;
	}
	public void setTotalmileage(String totalmileage) {
		this.totalmileage = totalmileage;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
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
	public String getLedgername() {
		return ledgername;
	}
	public void setLedgername(String ledgername) {
		this.ledgername = ledgername;
	}
	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	
	
	
}
