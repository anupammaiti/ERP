package com.svs.ensign.resort.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * ReportingToBean.java
 * @author Ravikiran
 * Operations on tl_reportingto Table.
 *
 */
@Entity
@Table(name="tl_reportingto")//Database Table Name.
public class ReportingToBean {

	@Id
	@GeneratedValue
	@Column(name="sno")
	private long sno;
	@Column(name="designation")//Designation of the Company
	private String designation;//Designation of the Company
	@Column(name="reportingto")//Reporting to Which Designation is Reporting to Whom.
	private String reportingto;//Reporting to Which Designation is Reporting to Whom.
	@Column(name="department")//Name of the Department.
	private String department;//Department Name.
	@Column(name="gendate")//Record Generated Date.
	private String gendate;//Record Generated Date.
	
	public long getSno() {
		return sno;
	}
	public void setSno(long sno) {
		this.sno = sno;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getReportingto() {
		return reportingto;
	}
	public void setReportingto(String reportingto) {
		this.reportingto = reportingto;
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
	
}
