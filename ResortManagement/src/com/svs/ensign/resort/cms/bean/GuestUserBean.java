package com.svs.ensign.resort.cms.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tl_guest_user")
public class GuestUserBean {

	@Id
	@GeneratedValue
	@Column(name="guestid")
	private long guestid;
	@Column(name="guest_name")
	private String guest_name;
	@Column(name="guest_last_name")
	private String guest_last_name;
	@Column(name="mobileno")
	private String mobileno;
	@Column(name="email")
	private String email;
	@Column(name="status")
	private String status;
	@Column(name="telecallerid")
	private String telecallerid;
	@Column(name="reqforcall")
	private String reqforcall;
	@Column(name="reqforquote")
	private String reqforquote;
	@Column(name="reqforvisit")
	private String reqforvisit;
	@Column(name="guest_id")
	private String guest_id;
	@Column(name="villa_type")
	private String villa_type;
	@Column(name="facing_villa")
	private String facing_villa;
	@Column(name="gendate")
	private String gendate;
	@Column(name="department")
	private String department;
	@Column(name="designation")
	private String designation;
	@Column(name="refered1")
	private String refered1;
	@Column(name="refered2")
	private String refered2;
	@Column(name="requestforcall2")
	private String requestforcall2;
	@Column(name="requestforcall3")
	private String requestforcall3;
	@Column(name="agent_name")
	private String agent_name;
	@Column(name="driver_name")
	private String driver_name;
	
	public long getGuestid() {
		return guestid;
	}
	public void setGuestid(long guestid) {
		this.guestid = guestid;
	}
	public String getGuest_name() {
		return guest_name;
	}
	public void setGuest_name(String guest_name) {
		this.guest_name = guest_name;
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
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getGuest_last_name() {
		return guest_last_name;
	}
	public void setGuest_last_name(String guest_last_name) {
		this.guest_last_name = guest_last_name;
	}
	
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	public String getTelecallerid() {
		return telecallerid;
	}
	public void setTelecallerid(String telecallerid) {
		this.telecallerid = telecallerid;
	}
	public String getReqforcall() {
		return reqforcall;
	}
	public void setReqforcall(String reqforcall) {
		this.reqforcall = reqforcall;
	}
	public String getReqforquote() {
		return reqforquote;
	}
	public void setReqforquote(String reqforquote) {
		this.reqforquote = reqforquote;
	}
	public String getReqforvisit() {
		return reqforvisit;
	}
	public void setReqforvisit(String reqforvisit) {
		this.reqforvisit = reqforvisit;
	}
	public String getGuest_id() {
		return guest_id;
	}
	public void setGuest_id(String guest_id) {
		this.guest_id = guest_id;
	}
	public String getVilla_type() {
		return villa_type;
	}
	public void setVilla_type(String villa_type) {
		this.villa_type = villa_type;
	}
	public String getFacing_villa() {
		return facing_villa;
	}
	public void setFacing_villa(String facing_villa) {
		this.facing_villa = facing_villa;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getRefered1() {
		return refered1;
	}
	public void setRefered1(String refered1) {
		this.refered1 = refered1;
	}
	public String getRefered2() {
		return refered2;
	}
	public void setRefered2(String refered2) {
		this.refered2 = refered2;
	}
	public String getRequestforcall2() {
		return requestforcall2;
	}
	public void setRequestforcall2(String requestforcall2) {
		this.requestforcall2 = requestforcall2;
	}
	public String getRequestforcall3() {
		return requestforcall3;
	}
	public void setRequestforcall3(String requestforcall3) {
		this.requestforcall3 = requestforcall3;
	}
	public String getAgent_name() {
		return agent_name;
	}
	public void setAgent_name(String agent_name) {
		this.agent_name = agent_name;
	}
	public String getDriver_name() {
		return driver_name;
	}
	public void setDriver_name(String driver_name) {
		this.driver_name = driver_name;
	}
	
	
}
