package com.erp.sales.sl.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="salescalllog")
public class SalesCallLog {
	
	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="number")
	private String number;
	@Column(name="today")
	private String today;
	@Column(name="companyname")
	private String companyname;
	@Column(name="contactno")
	private String contactno;
	@Column(name="phone")
	private String phone;
	@Column(name="calltype")
	private String calltype;
	@Column(name="comments")
	private String comments;
	@Column(name="purposeofcall")
	private String purposeofcall;
	@Column(name="opencovesation")
	private String openconvesation;
	@Column(name="salesstory")
	private String salesstory;
	@Column(name="benfitsofcustomer")
	private String benfitsofcustomer;
	@Column(name="objection")
	private String objection;
	@Column(name="closingconversation")
	private String closingconversation;
	@Column(name="whentoflow")
	private String whentoflow;
	@Column(name="gendate")
	private String gendate;

	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getToday() {
		return today;
	}
	public void setToday(String today) {
		this.today = today;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCalltype() {
		return calltype;
	}
	public void setCalltype(String calltype) {
		this.calltype = calltype;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getPurposeofcall() {
		return purposeofcall;
	}
	public void setPurposeofcall(String purposeofcall) {
		this.purposeofcall = purposeofcall;
	}
	public String getOpenconvesation() {
		return openconvesation;
	}
	public void setOpenconvesation(String openconvesation) {
		this.openconvesation = openconvesation;
	}
	public String getSalesstory() {
		return salesstory;
	}
	public void setSalesstory(String salesstory) {
		this.salesstory = salesstory;
	}
	public String getBenfitsofcustomer() {
		return benfitsofcustomer;
	}
	public void setBenfitsofcustomer(String benfitsofcustomer) {
		this.benfitsofcustomer = benfitsofcustomer;
	}
	public String getObjection() {
		return objection;
	}
	public void setObjection(String objection) {
		this.objection = objection;
	}
	public String getClosingconversation() {
		return closingconversation;
	}
	public void setClosingconversation(String closingconversation) {
		this.closingconversation = closingconversation;
	}
	public String getWhentoflow() {
		return whentoflow;
	}
	public void setWhentoflow(String whentoflow) {
		this.whentoflow = whentoflow;
	}
	public String getGendate() {
		return gendate;
	}
	public void setGendate(String gendate) {
		this.gendate = gendate;
	}
	

}
