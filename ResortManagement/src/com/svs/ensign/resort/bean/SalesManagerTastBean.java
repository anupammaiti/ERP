package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tl_sl_manager_task")
public class SalesManagerTastBean {

	@Id	
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="clientname")
	private String clientname;
	@Column(name="mobileno")
	private String mobileno;
	@Column(name="dateofmeeting")
	private String dateofmeeting;
	@Column(name="meetingtopic")
	private String meetingtopic;
	@Column(name="issues")
	private String issues;
	@Column(name="remarks")
	private String remarks;
	@Column(name="date1")
	private String date1;
	@Column(name="time1")
	private String time1;
	@Column(name="deltby")
	private String deltby;
	@Column(name="companyname")
	private String companyname;
	@Column(name="position")
	private String position;
	@Column(name="status")
	private String status;
	@Column(name="accessto")
	private String accessto;
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getClientname() {
		return clientname;
	}
	public void setClientname(String clientname) {
		this.clientname = clientname;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	public String getDateofmeeting() {
		return dateofmeeting;
	}
	public void setDateofmeeting(String dateofmeeting) {
		this.dateofmeeting = dateofmeeting;
	}
	public String getMeetingtopic() {
		return meetingtopic;
	}
	public void setMeetingtopic(String meetingtopic) {
		this.meetingtopic = meetingtopic;
	}
	public String getIssues() {
		return issues;
	}
	public void setIssues(String issues) {
		this.issues = issues;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getDate1() {
		return date1;
	}
	public void setDate1(String date1) {
		this.date1 = date1;
	}
	public String getTime1() {
		return time1;
	}
	public void setTime1(String time1) {
		this.time1 = time1;
	}
	public String getDeltby() {
		return deltby;
	}
	public void setDeltby(String deltby) {
		this.deltby = deltby;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getAccessto() {
		return accessto;
	}
	public void setAccessto(String accessto) {
		this.accessto = accessto;
	}

}
